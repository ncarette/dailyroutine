(function(storyContent) {

    // Create ink story from the content using inkjs
    var story = new inkjs.Story(storyContent);

    var savePoint = "";
    var unlockedSuccesses = {};
    var originalImageSources = {
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
    var unlockedImageSources = {
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

    
    // Toggle mobile success-box
    var arrow = document.querySelector('.arrow');
    var successBoxMobile = document.querySelector('.success-box-mobile');

    let savedTheme;
    let globalTagTheme;

    // Global tags - those at the top of the ink file
    // We support:
    //  # theme: dark
    //  # author: Your Name
    var globalTags = story.globalTags;
    if( globalTags ) {
        for(var i=0; i<story.globalTags.length; i++) {
            var globalTag = story.globalTags[i];
            var splitTag = splitPropertyTag(globalTag);

            // THEME: dark
            if( splitTag && splitTag.property == "theme" ) {
                globalTagTheme = splitTag.val;
            }

            // author: Your Name
            else if( splitTag && splitTag.property == "author" ) {
                var byline = document.querySelector('.byline');
                byline.innerHTML = "by "+splitTag.val;
            }
        }
    }

    var storyContainer = document.querySelector('#story');
    var outerScrollContainer = document.querySelector('.outerContainer');

    // page features setup
    setupTheme(globalTagTheme);
    var hasSave = loadSavePoint();
    setupButtons(hasSave);
    reloadUnlockedSuccesses();
    // Set initial save point
    savePoint = story.state.toJson();

    // Kick off the start of the story!
    continueStory(true);

    // Main story processing function. Each time this is called it generates
    // all the next content up as far as the next set of choices.
    function continueStory(firstTime) {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Don't over-scroll past new content
        var previousBottomEdge = firstTime ? 0 : contentBottomEdgeY();

        // Generate story text - loop through available content
        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();
            var tags = story.currentTags;

            // Any special tags included with this line
            var customClasses = [];
            for(var i=0; i<tags.length; i++) {
                var tag = tags[i];

                console.log("Received tag:", tag);
                // Detect tags of the form "X: Y". Currently used for IMAGE and CLASS but could be
                // customised to be used for other things too.
                var splitTag = splitPropertyTag(tag);
                var backgroundTag = splitBackgroundTag(tag);

                // AUDIO: src
                if( splitTag && splitTag.property == "AUDIO" ) {
                  if('audio' in this) {
                    this.audio.pause();
                    this.audio.removeAttribute('src');
                    this.audio.load();
                  }
                  this.audio = new Audio(splitTag.val);
                  fadeInAudio(this.audio, 5000); // Appel de la fonction fadeInAudio
                }

                // AUDIOLOOP: src
                else if( splitTag && splitTag.property == "AUDIOLOOP" ) {
                  if('audioLoop' in this) {
                    this.audioLoop.pause();
                    this.audioLoop.removeAttribute('src');
                    this.audioLoop.load();
                  }
                  this.audioLoop = new Audio(splitTag.val);
                  fadeInAudio(this.audioLoop, 10000); // Appel de la fonction fadeInAudio
                  this.audioLoop.loop = true;
                }

                // IMAGE: src
                if( splitTag && splitTag.property == "IMAGE" ) {
                    var imageElement = document.createElement('img');
                    imageElement.src = splitTag.val;
                    storyContainer.appendChild(imageElement);

                    showAfter(delay, imageElement);
                    delay += 200.0;
                }

                // LINK: url
                else if( splitTag && splitTag.property == "LINK" ) {
                    window.location.href = splitTag.val;
                }

                // LINKOPEN: url
                else if( splitTag && splitTag.property == "LINKOPEN" ) {
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
                else if( splitTag && splitTag.property == "CLASS" ) {
                    customClasses.push(splitTag.val);
                }

                // CLEAR - removes all existing content.
                // RESTART - clears everything and restarts the story from the beginning
                else if( tag == "CLEAR" || tag == "RESTART" ) {
                    removeAll("p");
                    removeAll("img");
                    // enlever le bouton charger puisqu'il n'y a rien a charger
                    let reloadEl = document.getElementById("reload");
                    reloadEl.setAttribute("disabled", "disabled");

                    localStorage.removeItem('save-state');
                    // enlever la notif flèche si elle est active
                    disableArrowAnimation();
                    // Comment out this line if you want to leave the header visible when clearing
                    setVisible(".header", false);

                    if( tag == "RESTART" ) {
                        restart();
                        return;
                    }
                }

                else if (splitTag && splitTag.property == "SUCCESS") {
                    var regex = /\/(\w+)_c\.png$/; // Expression régulière pour extraire le nom de l'ID
                    var match = splitTag.val.match(regex); // Trouver la correspondance dans l'URL
                    if (match) {
                        var id = match[1]; // Le premier groupe de capture contient le nom de l'ID
                        var img = document.getElementById(id); // Trouver l'élément avec l'ID correspondant
                        var arrow = document.getElementById("arrow");
                        if (img) {
                            if (!unlockedSuccesses[id]) {
                                // Débloquer le succès
                                unlockedSuccesses[id] = true;
                                // Edit
                                img.classList.add("flashlight");
                                arrow.classList.add('illuminate');
                                img.src = splitTag.val; // Changer la source de l'image
                                // gérer la boîte de succès mobile
                                var successBoxMobileImg = successBoxMobile.querySelector('#' + id);
                                if (successBoxMobileImg) {
                                    successBoxMobileImg.src = splitTag.val;
                                // Jouer la musique de succès
                                this.audio = new Audio("audio/win.wav");
                                this.audio.play();
                                // Afficher une boîte de dialogue d'alerte avec le titre de l'image
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
            for(var i=0; i<customClasses.length; i++)
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
                // Aaand loop
                continueStory();
            });
        });

        // Extend height to fit
        // We do this manually so that removing elements and creating new ones doesn't
        // cause the height (and therefore scroll) to jump backwards temporarily.
        storyContainer.style.height = contentBottomEdgeY()+"px";

        if( !firstTime )
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
        if( target > limit ) target = limit;

        var start = outerScrollContainer.scrollTop;

        var dist = target - start;
        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t; // ease in/out
            outerScrollContainer.scrollTo(0, (1.0-lerp)*start + lerp*target);
            if( t < 1 ) requestAnimationFrame(step);
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
    function removeAll(selector)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }

    // Used for hiding and showing the header when you CLEAR or RESTART the story respectively.
    function setVisible(selector, visible)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            if( !visible )
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
    // Pour le background color change
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
            // enlever le bouton charger puisqu'il n'y a rien a charger
            let reloadEl = document.getElementById("reload");
            reloadEl.setAttribute("disabled", "disabled");

            localStorage.removeItem('save-state');
            localStorage.removeItem('unlockedSuccesses');
            // enlever la notif flèche si elle est active
            disableArrowAnimation();
            // Restaurer les images des succès débloqués à leur source d'origine
            restoreSuccessImages();
            // Réinitialiser les succès lors du redémarrage de l'histoire
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
                    // Sauvegarder les succès débloqués dans le localStorage
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
            reloadUnlockedSuccesses(); // Recharger les succès débloqués
            continueStory(true);
        });

        let themeSwitchEl = document.getElementById("theme-switch");
        if (themeSwitchEl) themeSwitchEl.addEventListener("click", function(event) {
            document.body.classList.add("switched");
            document.body.classList.toggle("dark");
        });
    }

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

    // Fonction pour afficher le tooltip au toucher de l'image
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

                // Supprimer le tooltip après 2 secondes
                setTimeout(function() {
                    removeTooltip();
                }, 1400); // 2000 millisecondes = 2 secondes
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


    arrow.addEventListener('click', function() {
        this.classList.toggle('rotate');
        successBoxMobile.classList.toggle('show');
        disableArrowAnimation(); // Désactivez l'animation de la flèche
    });

    function disableArrowAnimation() {
        arrow.classList.remove('illuminate'); // Supprimez la classe pour désactiver l'animation
    }

    // Fonction pour vérifier si un succès est déjà débloqué
    function isSuccessUnlocked(id) {
        return unlockedSuccesses[id];
    }

    // Fonction pour réinitialiser les succès
    function resetSuccesses() {
        unlockedSuccesses = {}; // Réinitialiser les succès débloqués
    }

    // Fonction pour restaurer les images des succès débloqués à leur source d'origine
    function restoreSuccessImages() {
        var images = document.getElementsByClassName("success-image");
        for (var i = 0; i < images.length; i++) {
            var img = images[i];
            var id = img.id;
            if (img) {
                // Restaurer la source de l'image à sa valeur d'origine à partir de l'objet originalImageSources
                img.src = originalImageSources[id];
                img.classList.remove("flashlight");
            }
        }
    }

    // Fonction pour recharger l'état des succès débloqués depuis le localStorage
    function reloadUnlockedSuccesses() {
        try {
            // Charger les succès débloqués depuis le localStorage
            let retString = localStorage.getItem("unlockedSuccesses");
            if (retString) {
                let savedSuccess = JSON.parse(retString);
                // Mettre à jour les images des succès débloqués
                var images = document.getElementsByClassName("success-image");
                for (var i = 0; i < images.length; i++) {
                    var img = images[i];
                    var id = img.id;
                    if (savedSuccess[id]) {
                        img.src = unlockedImageSources[id]; // Utiliser la source de l'image mise à jour
                        img.classList.remove("flashlight");
                        unlockedSuccesses[id] = true; // Actualiser la liste des succès débloqués
                    }
                }
            }
        } catch (e) {
            console.debug("Couldn't load success state");
        }
    }

    function fadeInAudio(audioElement, duration) {
        if (!audioElement) {
            console.log("No audio element provided.");
            return;
        }
        
        audioElement.volume = 0;
        audioElement.play();
        console.log(`Starting fade-in for ${audioElement.src} with duration ${duration}ms.`);

        const fadeInInterval = 50; // Intervalle en millisecondes
        const step = 1 / (duration / fadeInInterval);

        function fade() {
            if (audioElement.volume < 1 - step) {
                audioElement.volume += step;
                console.log(`Audio volume: ${audioElement.volume}`);
                setTimeout(fade, fadeInInterval);
            } else {
                audioElement.volume = 1;
                console.log(`Fade-in complete for ${audioElement.src}.`);
            }
        }

        fade();
    }


})(storyContent);
