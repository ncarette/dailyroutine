(function(storyContent) {
    // Initialize the ink story
    var story = new inkjs.Story(storyContent);
    var savePoint = "";
    var unlockedSuccesses = {};

    const originalImageSources = {
        "cgm": "./icons/cgm.png",
        "hypo": "./icons/hypo.png",
        "meal": "./icons/meal.png",
        "selfcare": "./icons/selfcare.png",
        "friends": "./icons/friends.png",
        "glucometer": "./icons/glucometer.png",
        "insulin": "./icons/insulin.png",
        "time": "./icons/time.png",
        "work": "./icons/work.png",
        "love": "./icons/love.png"
    };
    const unlockedImageSources = {
        "cgm": "./icons/cgm_c.png",
        "hypo": "./icons/hypo_c.png",
        "meal": "./icons/meal_c.png",
        "selfcare": "./icons/selfcare_c.png",
        "friends": "./icons/friends_c.png",
        "glucometer": "./icons/glucometer_c.png",
        "insulin": "./icons/insulin_c.png",
        "time": "./icons/time_c.png",
        "work": "./icons/work_c.png",
        "love": "./icons/love_c.png"
    };

    // DOM Elements
    const arrow = document.querySelector('.arrow');
    const successBoxMobile = document.querySelector('.success-box-mobile');
    const storyContainer = document.querySelector('#story');
    const outerScrollContainer = document.querySelector('.outerContainer');
    let savedTheme, globalTagTheme;

    // Initialization
    setupGlobalTags();
    setupTheme(globalTagTheme);
    const hasSave = loadSavePoint();
    setupButtons(hasSave);
    reloadUnlockedSuccesses();
    savePoint = story.state.toJson();
    continueStory(true);

    // Main story processing function
    function continueStory(firstTime) {
        var paragraphIndex = 0;
        var delay = 0.0;

        // Don't over-scroll past new content
        var previousBottomEdge = firstTime ? 0 : contentBottomEdgeY();

        // Generate story text - loop through available content
        while (story.canContinue) {
            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();
            var tags = story.currentTags;

            // Any special tags included with this line
            var customClasses = [];
            for (var i = 0; i < tags.length; i++) {
                var tag = tags[i];

                console.log("Received tag:", tag);
                // Detect tags of the form "X: Y". Currently used for IMAGE and CLASS but could be
                // customised to be used for other things too.
                var splitTag = splitPropertyTag(tag);
                var backgroundTag = splitBackgroundTag(tag);

                // AUDIO: src
                if (splitTag && splitTag.property == "AUDIO") {
                    if ('audio' in this) {
                        this.audio.pause();
                        this.audio.removeAttribute('src');
                        this.audio.load();
                    }
                    this.audio = new Audio(splitTag.val);
                    fadeInAudio(this.audio, 5000); // Call the fadeInAudio function
                }

                // AUDIOLOOP: src
                else if (splitTag && splitTag.property == "AUDIOLOOP") {
                    if ('audioLoop' in this) {
                        this.audioLoop.pause();
                        this.audioLoop.removeAttribute('src');
                        this.audioLoop.load();
                    }
                    this.audioLoop = new Audio(splitTag.val);
                    fadeInAudio(this.audioLoop, 10000); // Call the fadeInAudio function
                    this.audioLoop.loop = true;
                }

                // IMAGE: src
                if (splitTag && splitTag.property == "IMAGE") {
                    var imageElement = document.createElement('img');
                    imageElement.src = splitTag.val;
                    storyContainer.appendChild(imageElement);

                    showAfter(delay, imageElement);
                    delay += 200.0;
                }

                // LINK: url
                else if (splitTag && splitTag.property == "LINK") {
                    window.location.href = splitTag.val;
                }

                // LINKOPEN: url
                else if (splitTag && splitTag.property == "LINKOPEN") {
                    window.open(splitTag.val);
                }

                // BACKGROUND: timeOfDay
                else if (backgroundTag && backgroundTag.property === "BACKGROUND") {
                    console.log("Changing background to:", backgroundTag.val);
                    var fond = document.getElementById("fonddecran");
                    if (fond) {
                        fond.className = 'background';
                        fond.classList.add(backgroundTag.val);
                    } else {
                        console.error("Element with ID 'fonddecran' not found.");
                    }
                }

                // CLASS: className
                else if (splitTag && splitTag.property == "CLASS") {
                    customClasses.push(splitTag.val);
                }

                // CLEAR - removes all existing content.
                // RESTART - clears everything and restarts the story from the beginning
                else if (tag == "CLEAR" || tag == "RESTART") {
                    removeAll("p");
                    removeAll("img");
                    // remove the load button since there is nothing to load
                    let reloadEl = document.getElementById("reload");
                    reloadEl.setAttribute("disabled", "disabled");

                    localStorage.removeItem('save-state');
                    // remove the arrow notification if it is active
                    disableArrowAnimation();
                    // Comment out this line if you want to leave the header visible when clearing
                    setVisible(".header", false);

                    if (tag == "RESTART") {
                        restart();
                        return;
                    }
                }

                // Success handler
                else if (splitTag && splitTag.property == "SUCCESS") {
                    var regex = /\/(\w+)_c\.png$/; // Regular expression to extract the ID name
                    var match = splitTag.val.match(regex); // Find the match in the URL
                    if (match) {
                        var id = match[1]; // The first capture group contains the ID name
                        var img = document.getElementById(id); // Find the element with the corresponding ID
                        if (img) {
                            if (!unlockedSuccesses[id]) {
                                // Unlock the success
                                unlockedSuccesses[id] = true;
                                // Edit
                                img.classList.add("flashlight");
                                arrow.classList.add('illuminate');
                                img.src = splitTag.val; // Change the image source
                                // handle the mobile success box
                                var successBoxMobileImg = successBoxMobile.querySelector('#' + id);
                                if (successBoxMobileImg) {
                                    successBoxMobileImg.src = splitTag.val;
                                    // Play the success music
                                    this.audio = new Audio("audio/win.wav");
                                    this.audio.play();
                                    // Display an alert dialog box with the image title
                                    showModal('Bravo ! Vous avez débloqué le succès "' + img.title + '"');
                                }
                            }
                        }
                    }
                }
            }

            // Create paragraph element (initially hidden)
            var paragraphElement = document.createElement('p');
            paragraphElement.innerHTML = paragraphText;
            storyContainer.appendChild(paragraphElement);

            // Add new class to the new paragraph
            paragraphElement.classList.add('new');

            // Add any custom classes derived from ink tags
            for (var i = 0; i < customClasses.length; i++)
                paragraphElement.classList.add(customClasses[i]);

            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);
            delay += 200.0;
        }

        // Create HTML choices from ink choices
        story.currentChoices.forEach(function(choice) {
            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');
            choiceParagraphElement.classList.add("choice");
            choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`;
            storyContainer.appendChild(choiceParagraphElement);

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += 200.0;

            // Click on choice
            var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
            choiceAnchorEl.addEventListener("click", function(event) {
                // Don't follow <a> link
                event.preventDefault();

                // Remove all existing choices
                removeAll(".choice");

                // Tell the story where to go next
                story.ChooseChoiceIndex(choice.index);

                // This is where the save button will save from
                savePoint = story.state.toJson();

                // Remove 'new' class and add 'old' class to previous paragraphs
                var allParagraphs = storyContainer.querySelectorAll('p');
                allParagraphs.forEach(function(paragraph) {
                    if (paragraph !== choiceParagraphElement) {
                        paragraph.classList.remove('new');
                        paragraph.classList.add('old');
                    }
                });

                //reset modal box (to avoid bug #26)
                var modal = document.getElementById("custom-modal");
                modal.style.display = "none";
                // Aaand loop
                continueStory();
            });
        });

        // Extend height to fit
        // We do this manually so that removing elements and creating new ones doesn't
        // cause the height (and therefore scroll) to jump backwards temporarily.
        storyContainer.style.height = contentBottomEdgeY() + "px";

        if (!firstTime)
            scrollDown(previousBottomEdge);
    }

    function restart() {
        story.ResetState();
        setVisible(".header", true);
        // set save point to here
        savePoint = story.state.toJson();
        continueStory(true);
        outerScrollContainer.scrollTo(0, 0);
    }

    // -----------------------------------
    // Various Helper functions
    // -----------------------------------

    // Fades in an element after a specified delay
    function showAfter(delay, el) {
        el.classList.add("hide");
        setTimeout(function() { el.classList.remove("hide"); }, delay);
    }

    // Scrolls the page down, but no further than the bottom edge of what you could
    // see previously, so it doesn't go too far.
    function scrollDown(previousBottomEdge) {
        // Line up top of screen with the bottom of where the previous content ended
        var target = previousBottomEdge;

        // Can't go further than the very bottom of the page
        var limit = outerScrollContainer.scrollHeight - outerScrollContainer.clientHeight;
        if (target > limit) target = limit;

        var start = outerScrollContainer.scrollTop;

        var dist = target - start;
        var duration = 300 + 300 * dist / 100;
        var startTime = null;
        function step(time) {
            if (startTime == null) startTime = time;
            var t = (time - startTime) / duration;
            var lerp = 3 * t * t - 2 * t * t * t; // ease in/out
            outerScrollContainer.scrollTo(0, (1.0 - lerp) * start + lerp * target);
            if (t < 1) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    // The Y coordinate of the bottom end of all the story content, used
    // for growing the container, and deciding how far to scroll.
    function contentBottomEdgeY() {
        var bottomElement = storyContainer.lastElementChild;
        return bottomElement ? bottomElement.offsetTop + bottomElement.offsetHeight : 0;
    }

    // Remove all elements that match the given selector. Used for removing choices after
    // you've picked one, as well as for the CLEAR and RESTART tags.
    function removeAll(selector) {
        var allElements = storyContainer.querySelectorAll(selector);
        for (var i = 0; i < allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }

    // Used for hiding and showing the header when you CLEAR or RESTART the story respectively.
    function setVisible(selector, visible) {
        var allElements = storyContainer.querySelectorAll(selector);
        for (var i = 0; i < allElements.length; i++) {
            var el = allElements[i];
            if (!visible)
                el.classList.add("invisible");
            else
                el.classList.remove("invisible");
        }
    }

    // Helper for parsing out tags of the form:
    //  # PROPERTY: value
    // e.g. IMAGE: source path
    function splitPropertyTag(tag) {
        var propertySplitIdx = tag.indexOf(":");
        if (propertySplitIdx !== -1) {
            var property = tag.substr(0, propertySplitIdx).trim();
            var val = tag.substr(propertySplitIdx + 1).trim();
            return {
                property: property,
                val: val
            };
        }

        return null;
    }

    // For the background color change
    function splitBackgroundTag(tag) {
        var regex = /^([^:]+):\s*(matin|midi|aprem|soir)$/;
        var match = tag.match(regex);
        if (match) {
            var property = match[1].trim();
            var timeOfDay = match[2].trim();
            var backgroundClass;
            switch (timeOfDay) {
                case 'matin':
                    backgroundClass = 'matin';
                    break;
                case 'midi':
                    backgroundClass = 'midi';
                    break;
                case 'aprem':
                    backgroundClass = 'aprem';
                    break;
                case 'soir':
                    backgroundClass = 'soir';
                    break;
            }

            return {
                property: property,
                val: backgroundClass
            };
        }
        return null;
    }

    // Loads save state if exists in the browser memory
    function loadSavePoint() {
        try {
            let savedState = window.localStorage.getItem('save-state');
            if (savedState) {
                story.state.LoadJson(savedState);
                return true;
            }
        } catch (e) {
            console.debug("Couldn't load save state");
        }
        return false;
    }

    // Detects which theme (light or dark) to use
    function setupTheme(globalTagTheme) {
        // load theme from browser memory
        var savedTheme;
        try {
            savedTheme = window.localStorage.getItem('theme');
        } catch (e) {
            console.debug("Couldn't load saved theme");
        }

        // Check whether the OS/browser is configured for dark mode
        var browserDark = window.matchMedia("(prefers-color-scheme: dark)").matches;

        if (savedTheme === "dark"
            || (savedTheme == undefined && globalTagTheme === "dark")
            || (savedTheme == undefined && globalTagTheme == undefined && browserDark))
            document.body.classList.add("dark");
    }

    // Used to hook up the functionality for global functionality buttons
    function setupButtons(hasSave) {
        let rewindEl = document.getElementById("rewind");
        if (rewindEl) rewindEl.addEventListener("click", function(event) {
            removeAll("p");
            removeAll("img");
            setVisible(".header", false);
            // remove the load button since there is nothing to load
            let reloadEl = document.getElementById("reload");
            reloadEl.setAttribute("disabled", "disabled");

            localStorage.removeItem('save-state');
            localStorage.removeItem('unlockedSuccesses');
            // remove the arrow notification if it is active
            disableArrowAnimation();
            // Restore the images of unlocked successes to their original source
            restoreSuccessImages();
            // Reset successes when restarting the story
            resetSuccesses();

            restart();
        });

        let saveEl = document.getElementById("save");
        if (saveEl) saveEl.addEventListener("click", function(event) {
            try {
                window.localStorage.setItem('save-state', savePoint);
                document.getElementById("reload").removeAttribute("disabled");
                window.localStorage.setItem('theme', document.body.classList.contains("dark") ? "dark" : "");
            } catch (e) {
                console.warn("Couldn't save state");
            }
            try {
                // Save the unlocked successes in the localStorage
                let savedSuccess = JSON.stringify(unlockedSuccesses);
                window.localStorage.setItem("unlockedSuccesses", savedSuccess);
            } catch (e) {
                console.warn("Couldn't save success");
            }
        });

        let reloadEl = document.getElementById("reload");
        if (!hasSave) {
            reloadEl.setAttribute("disabled", "disabled");
        }
        reloadEl.addEventListener("click", function(event) {
            if (reloadEl.getAttribute("disabled")) {
                return;
            }

            removeAll("p");
            removeAll("img");
            try {
                let savedState = window.localStorage.getItem('save-state');
                if (savedState) story.state.LoadJson(savedState);
            } catch (e) {
                console.debug("Couldn't load save state");
            }
            reloadUnlockedSuccesses(); // Reload unlocked successes
            continueStory(true);
        });

        let themeSwitchEl = document.getElementById("theme-switch");
        if (themeSwitchEl) themeSwitchEl.addEventListener("click", function(event) {
            document.body.classList.add("switched");
            document.body.classList.toggle("dark");
        });
    }

    // Function to display the modal box announcing the unlocked successes
    function showModal(message) {
        var modal = document.getElementById("custom-modal");
        var modalBox = document.getElementById("modal-content");
        var modalMessage = document.getElementById("modal-message");
        modalMessage.innerHTML = message;
        modal.style.display = "block";
        modalBox.onclick = function() {
            modal.style.display = "none";
        };
    }

    // Function to display the tooltip when touching the image
    function showMobileTooltip(event) {
        var title = event.target.getAttribute('title');
        var tooltip = null;

        function createTooltip() {
            if (title) {
                tooltip = document.createElement('div');
                tooltip.classList.add('custom-tooltip');
                tooltip.textContent = title;
                tooltip.style.left = (event.touches[0].pageX + 10) + 'px';
                tooltip.style.top = (event.touches[0].pageY - 40) + 'px';
                document.body.appendChild(tooltip);

                // Remove the tooltip after 2 seconds
                setTimeout(function() {
                    removeTooltip();
                }, 1400); // 2000 milliseconds = 2 seconds
            }
        }

        function removeTooltip() {
            if (tooltip) {
                tooltip.parentNode.removeChild(tooltip);
                tooltip = null;
            }
        }

        createTooltip();
    }

    // Add touch event listeners to images with the mobile-tooltip class
    var mobileImages = document.querySelectorAll('.mobile-tooltip');
    mobileImages.forEach(function(image) {
        image.addEventListener('touchstart', showMobileTooltip, { passive: true });
    });

    // Function to rotate the arrow when tapped on mobile or clicked on desktop
    arrow.addEventListener('click', function() {
        this.classList.toggle('rotate');
        successBoxMobile.classList.toggle('show');
        disableArrowAnimation(); // Disable arrow animation
    });

    function disableArrowAnimation() {
        arrow.classList.remove('illuminate'); // Remove the class to disable the animation
    }

    // Function to check if a success is already unlocked
    function isSuccessUnlocked(id) {
        return unlockedSuccesses[id];
    }

    // Function to reset successes
    function resetSuccesses() {
        unlockedSuccesses = {}; // Reset unlocked successes
    }

    // Function to restore the images of unlocked successes to their original source
    function restoreSuccessImages() {
        var images = document.getElementsByClassName("success-image");
        for (var i = 0; i < images.length; i++) {
            var img = images[i];
            var id = img.id;
            if (img) {
                // Restore the image source to its original value from the originalImageSources object
                img.src = originalImageSources[id];
                img.classList.remove("flashlight");
            }
        }
    }

    // Function to reload the state of unlocked successes from localStorage
    function reloadUnlockedSuccesses() {
        try {
            // Load unlocked successes from localStorage
            let retString = localStorage.getItem("unlockedSuccesses");
            if (retString) {
                let savedSuccess = JSON.parse(retString);
                // Update the images of unlocked successes
                var images = document.getElementsByClassName("success-image");
                for (var i = 0; i < images.length; i++) {
                    var img = images[i];
                    var id = img.id;
                    if (savedSuccess[id]) {
                        img.src = unlockedImageSources[id]; // Use the updated image source
                        img.classList.remove("flashlight");
                        unlockedSuccesses[id] = true; // Update the list of unlocked successes
                    }
                }
            }
        } catch (e) {
            console.debug("Couldn't load success state");
        }
    }

    // For the fade-in of audio and audioloop
    function fadeInAudio(audioElement, duration) {
        if (!audioElement) {
            console.log("No audio element provided.");
            return;
        }

        audioElement.volume = 0;
        audioElement.play();

        const fadeInInterval = 50; // Interval in milliseconds
        const step = 1 / (duration / fadeInInterval);

        function fade() {
            if (audioElement.volume < 1 - step) {
                audioElement.volume += step;
                setTimeout(fade, fadeInInterval);
            } else {
                audioElement.volume = 1;
            }
        }

        fade();
    }

    function setupGlobalTags() {
        var globalTags = story.globalTags;
        if (globalTags) {
            globalTags.forEach(tag => {
                var splitTag = splitPropertyTag(tag);

                if (splitTag) {
                    if (splitTag.property == "theme") {
                        globalTagTheme = splitTag.val;
                    } else if (splitTag.property == "author") {
                        var byline = document.querySelector('.byline');
                        byline.innerHTML = "by " + splitTag.val;
                    }
                }
            });
        }
    }

})(storyContent);
