# author: Piero Carette
# theme : 

<warning> <a href="https:\/\/www.verywellhealth.com/type-1-diabetes-overview-3289655" target="_blank">Le diabète de type 1</a> est une maladie chronique auto-immune grave. Elle se produit chez des personnes dont les défenses immunitaires, pour des raisons inconnues, détruisent les cellules du pancréas qui produisent de l'insuline. L'insuline est essentielle pour les humains : elle permet au glucose dans notre sang d'entrer dans nos cellules et de nourrir notre corps. Par conséquent, le diabète peut provoquer l'hypoglycémie, lorsqu'il n'y a pas assez de glucose dans le sang, et l'hyperglycémie, lorsqu'il y en a trop. Ces deux phénomènes, poussés à des extrêmes en durée ou en intensité, peuvent entraîner des complications graves, allant jusqu'au décès. Ce danger constant pour le diabétique se traduit par un fardeau mental continu, qui pèse souvent sur la vie quotidienne. Cette fiction propose d'illustrer cela.</warning> 

<strong><i>Cette histoire vise à sensibiliser aux difficultés de la gestion du diabète de type 1, veuillez garder à l'esprit que l'expérience n'est pas la même pour tout le monde et que le diabète peut être géré.</i></strong>

/* **********************Sous-chapitre 1: Incipit************************* */

VAR time=0
VAR bloodsugar=0
VAR comfort=0
VAR anxiety=0
VAR happiness=0

VAR breakfastskip = false
VAR packrushed = false

*[<b>Commencer l'histoire</b>]

<chapter>Chapitre 1: Un Début Difficile</chapter>

Le réveil sonne, tirant Zucchi de son sommeil. <a onclick="CreateDialogBox()">Iel</a> se réveille péniblement et tend la main pour l'éteindre, frottant le sommeil de ses yeux. En se redressant, iel remarque la sourde douleur de la fatigue dans ses os, une sensation bien trop familière. Iel vit avec un diabète de type 1, et iel sait que ce sera encore une journée de jonglage constant.
    **[Levez-vous !]

Zucchi attrape son téléphone sur la table de nuit et consulte ses niveaux de glycémie sur l'application CGM. 

<expl> Un <a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/managing-diabetes/continuous-glucose-monitoring" target="_blank">CGM</a> est un Moniteur de Glucose en Continu, un petit capteur inséré sous la peau qui émet toutes les quelques minutes les niveaux de glucose sanguin, également appelé glycémie, grâce à un transmetteur. Cette glycémie est ensuite affichée sur un moniteur qui est souvent le téléphone de l'utilisateur. Le coût d'un CGM est élevé et les compagnies d'assurance suisses ne remboursent les CGM que dans certaines conditions restrictives, pas pour tous les diabétiques. </expl> 

La glycémie est un peu basse, iel sait qu'iel a besoin de manger quelque chose, mais iel est trop en retard pour le travail et n'a pas beaucoup de temps. Iel se sent stressé et frustré.
    ***[Alors, que faire pour le petit-déjeuner ?] -> Breakfast


/* **********************Sous-chapitre 2: Petit-déjeuner************************* */

===Breakfast===

Zucchi envisage ses options pour le petit-déjeuner. Un bol de céréales semble tentant, mais iel sait que cela ferait augmenter sa glycémie. Préparer quelque chose de plus sain, comme des œufs brouillés et des épinards, prendrait trop de temps, et iel est déjà en retard pour le travail. Sauter le petit-déjeuner tout court ferait trop baisser sa glycémie plus tard dans la matinée.

<subchapter>Que va faire Zucchi pour le petit-déjeuner ?</subchapter>

* [Manger un petit-déjeuner pauvre en glucides, mais être en retard pour le travail] -> breakfast_low_carb
* [Attraper rapidement un bol de céréales] -> breakfast_cereal
* [Sauter le petit-déjeuner] -> breakfast_skip

=breakfast_low_carb
~ time += 3
Zucchi prend le temps de préparer un petit-déjeuner sain, optant pour des œufs brouillés et des épinards. L'arôme savoureux des œufs flotte dans la cuisine, faisant gronder l'estomac de Zucchi. En mangeant, iel ressent un sentiment de satisfaction en sachant qu'iel fait un bon choix pour sa santé. Cependant, en regardant l'heure, iel réalise qu'iel est en retard pour le travail. Son cœur bat la chamade d'anxiété et de frustration, sachant qu'iel doit choisir entre sa santé et sa ponctualité. Iel ressent un sentiment de culpabilité en continuant à se préparer pour cette journée, déterminé à arriver au travail à l'heure.

    -> Finalbreakfast

=breakfast_cereal
~ time += 1
Zucchi se prépare un bol de céréales, les morceaux de céréales colorés et croquants lui donne fort envie. Alors qu'iel verse le lait, l'arôme sucré des céréales emplit la pièce. En prenant la première bouchée, la douceur et la texture croquante des céréales sont satisfaisantes. Cependant, en finissant le bol, iel commence à se sentir léthargique et lourd. Iel vérifie sa glycémie, elle est élevé. Iel voit bien que les céréales ont fait rapidement monter la courbe de sa glycémie. Iel doit prendre plus d'insuline que prévu et devra surveiller constamment sa glycémie. Iel se sent coupable et frustré de ne pas avoir fait des choix plus sains. Iel est maintenant en retard pour le travail et se sent stressé.

<expl> Les diabétiques de type 1 doivent prendre de l'<a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/insulin-medicines-treatments" target="_blank">insuline</a> car leur pancréas ne le produit pas par lui-même. Iels doivent prendre de l'insuline plusieurs fois par jour, notamment lorsqu'iels mangent et boivent, pour contrôler leur taux de glucose sanguin. Il existe différentes façons de prendre de l'insuline. Iels peuvent utiliser une seringue et une aiguille, un stylo à insuline ou une pompe à insuline. Les pompes et les stylos sont plus pratiques mais plus chers, quoique remboursés par les compagnies d'assurance suisses.</expl>
    *[D'accord.] -> Finalbreakfast

=breakfast_skip
~ breakfastskip = true
Zucchi saute complètement le petit-déjeuner, ressentant la pression du temps et le stress d'être en retard pour le travail. Peu de temps après, iel vérifie rapidement sa glycémie et elle a continué à baisser dangereusement. Iel se sent étourdi, anxieux et incertain sur la marche à suivre. Son estomac gargouille de faim et iel se sent faible. La pensée de faire face à l'hypoglycémie pendant le travail le remplit de crainte et de culpabilité. Iel sait que sauter le petit-déjeuner a des conséquences sur son taux de sucre dans le sang et iel doit donc prendre une décision sur la façon de le gérer.

<subchapter>Comment Zucchi va-t-il gérer sa faible glycémie?</subchapter>
            ** [Prendre le temps de vérifier avec le glucomètre]-> check_glucometer
            ** [Prendre rapidement un peu de sucre]-> quick_sugar


            =check_glucometer
            ~ time += 2
        
            Zucchi prend le temps de vérifier sa glycémie avec le glucomètre et calcule soigneusement la bonne quantité de sucre dont iel a besoin. Iel ressent un soulagement en prenant le sucre, sachant qu'iel a traité son faible taux de sucre dans le sang. Cependant, en regardant l'heure, iel réalise que le temps a pas mal passé. En sentant toujours la faim dans son ventre, iel pense au stress et à la frustration d'avoir constamment à choisir entre sa santé et sa ponctualité.

            <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang. Par conséquent, lorsque les valeurs de glycémie semblent critiques, il est important d'utiliser un glucomètre pour vérifier ce que votre corps ressent et ce que le CGM, beaucoup moins fiable, nous dit.</expl>
        
                *[Ok.]->Finalbreakfast
    
            =quick_sugar
                    
            Zucchi prend rapidement un peu de sucre. Iel ressent un sentiment d'urgence mais est aussi inquiet de prendre trop ou trop peu de sucre. Iel se sent toujours étourdis et un peu incertain de son taux de sucre dans le sang, car iel ne l'a pas vérifié avec un glucomètre. Peut-être que le sucre pris suffira, mais peut-être aussi qu'il en a mis trop, ou pas assez. L'angoisse de comment il devra passer les prochaines heures s'installe en lui alors que son ventre continue de gargouiller.
        
            <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang. Par conséquent, lorsque les valeurs de glycémie semblent critiques, il est important d'utiliser un glucomètre pour vérifier ce que votre corps ressent et ce que le CGM, beaucoup moins fiable, vous dit.</expl>

                *[Ok.]->Finalbreakfast


===Finalbreakfast===
Le petit-déjeuner est une partie cruciale de la gestion du diabète, mais peut aussi être une source de stress et de frustration, surtout lorsque le temps est un facteur. Zucchi doit équilibrer le besoin de prendre un petit-déjeuner sain avec la réalité de son emploi du temps chargé, et cela peut être une tâche difficile, avec des conséquences. Dans sa routine quotidienne, Zucchi doit toujours faire des choix et subir les conséquences de ces choix, qui peuvent occuper plus ou moins d'espace mental.

*[Maintenant, il est temps de faire ses affaires]
-> Packing


/* **********************Sous-chapitre 3: Préparation ************************* */

===Packing===

Zucchi commence à se préparer pour la journée, mais avant de quitter la maison, iel doit vérifier ses équipements pour le diabète. Iel doit s'assurer d'avoir assez d'insuline pour la journée avec lui, en cas d'hyperglycémie ou s'il doit manger, mais aussi assez de glucose, en cas d'hypoglycémie, comme des sucres de raisin, du soda, ou tout ce qui a une grande concentration de glucose tout en étant facilement ingérable et transportable.
*[Oh]

Iel devrait vérifier son insuline dans le réfrigérateur et s'assurer d'en avoir également assez pour les prochains jours, car bientôt c'est le week-end, et la pharmacie sera fermée. Iel se sent anxieux et stressé à l'idée de manquer d'insuline ou de glucose pendant la journée ou les jours suivants. Iel est toujours inquiet d'oublier quelque chose d'important, donc iel vérifie tout deux fois.

<subchapter>Que va prendre Zucchi avec ellui? Que va faire Zucchi pour s'assurer de ne manquer de rien ?</subchapter>
-> what_to_pack

===what_to_pack===
{TURNS_SINCE(->what_to_pack) >= 1 : {TURNS_SINCE(->what_to_pack) >= 3 : <i>Zucchi réalise que toute cette préparation prend beaucoup de temps alors qu'iel est en retard.</i> }<i>Est-ce que Zucchi va prendre autre chose ?</i>}

*(glucose){not soda}[Prendre des sucres de raisin en plus] -> extra_glucose
*(soda)[Prendre du soda en plus] -> extra_soda
*(checkinsulin)[Vérifier son stylo à insuline] -> check_insulin
*(checkinsulinfridge){checkinsulin}[Vérifier l'insuline dans le réfrigérateur] -> check_insulin_fridge
*(extrainsulin)[Apporter un stylo à insuline supplémentaire] -> extra_insulin
*{TURNS_SINCE(->what_to_pack) == 0}[Préparer ses affaires rapidement] -> pack_rushed
*{TURNS_SINCE(->what_to_pack) >= 1}[Ne rien faire de plus] -> do_nothing_more

=extra_glucose
~ time += 1
Zucchi prends des sucres de raisin en plus, juste au cas où. Iel se sent soulagé mais aussi frustré de devoir penser à des choses comme ça juste pour sortir de la maison. Iel se sent déprimé à l'idée de devoir potentiellement manger à nouveau ces sucres en cas d'hypoglycémie. Avec le temps, c'est devenu vraiment dégoûtant.
->what_to_pack

=extra_soda
~ time += 1
Zucchi regarde dans le réfrigérateur pour du soda, mais n'en trouve pas. Iel doit bientôt aller faire des courses. {not glucose: -> extra_glucose| Iel est limité à l'utilisation des comprimés en cas d'hypoglycémie, ce qui ajoute une autre couche à leur désespoir.}
->what_to_pack

=check_insulin
~ time += 1
Zucchi vérifie son stylo à insuline avant de partir, en s'assurant qu'il n'est pas périmé et qu'il contient suffisamment d'insuline. {not extrainsulin: Iel se sent soulagé mais aussi un peu stressé à l'idée de manquer d'insuline.}
->what_to_pack

=check_insulin_fridge
~ time += 1
Zucchi se souvient de vérifier dans le réfrigérateur s'iel a assez d'insuline pour le week-end à venir. Iel semble en avoir assez, mais Zucchi est fatigué de devoir toujours penser à tant de choses en même temps.
->what_to_pack

=extra_insulin
~ time += 1
Zucchi prend un stylo à insuline supplémentaire, juste au cas où. {not checkinsulin: Iel se sent soulagé et aussi un peu agacé de devoir penser à des choses comme ça juste pour sortir de la maison.| Iel est un peu agacés de devoir penser à toutes ces choses juste pour sortir de la maison. }
TODO: ajouter du stress à propos de ne pas avoir vérifié ou emballé quelque chose (condition)
->what_to_pack

=pack_rushed
~ packrushed = true
Zucchi met rapidement quelques sucres de raisin dans son sac sans vérifier les stylos à insuline. Iel ne vérifie pas son CGM et ne réalise pas qu'il ne fonctionne pas correctement. Cela conduira sûrement à une journée stressante, où iel devra constamment vérifier sa glycémie avec un glucomètre et ne se sentira pas aussi libre.

{breakfastskip == false: <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang, mais il nécessite beaucoup plus de soins et de temps pour l'utiliser.</expl>|}

    *[Le temps passe. Il est temps d'y aller.]
    -> End_of_chapter_1

=do_nothing_more
Zucchi a l'impression que presque tout est vérifié. Iel doit encore vérifier que son CGM fonctionne, car il est essentiel pour sa journée.
    *[Vérifier le capteur de glycémie.]
    -> checking_cgm



/* **********************Sous-chapitre 4: vérification CGM ************************* */

===checking_cgm===
~ time += 1
Zucchi vérifie son capteur de glucose, s'assurant qu'il fonctionne correctement et que son téléphone a suffisamment de batterie. Iel sait que cet appareil est essentiel pour gérer son diabète, et quand il ne fonctionne pas correctement, cela peut être une expérience stressante et accablante. Iel se sent soulagé lorsque tout fonctionne bien, mais aussi un peu frustrés si ce n'est pas le cas, car cela signifie souvent qu'iel devra passer la journée a vérifier manuellement les niveaux de sucre dans son sang avec un glucomètre.

*[Vérifier]
{~->not_working|->not_working|->working}

==not_working==

Malheureusement, le capteur ne fonctionne pas. Le téléphone de Zucchi est chargé, mais les valeurs de glucose sont en attente et iel ne sait pas quand ni comment le CGM fonctionnera à nouveau.

<subchapter>Que fera Zucchi à ce sujet?</subchapter>

*[Contacter la hotline du fabricant du capteur] -> contact_hotline
*[Passer la journée sans le CGM] -> no_cgm
*[Vérifier le sucre avec un glucomètre] -> use_glucometer

    =contact_hotline
    ~ time += 2
    Zucchi contacte la hotline du fabricant du capteur. Après quelques longues minutes au téléphone, l'opérateur trouve la solution pour faire fonctionner à nouveau le capteur. Zucchi se sent soulagé d'avoir obtenu de l'aide, mais aussi frustré par le temps d'attente.
    *[Humph]
        -> final_packing
    
    =no_cgm
    Zucchi décide de passer la journée sans le CGM. Iel se sent moins libre, plus stressé et anxieux, devant vérifier le sucre manuellement avec un glucomètre.
    
    {breakfastskip == false: {packrushed == false:<expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang, mais il nécessite beaucoup plus de soins et de temps pour l'utiliser.</expl>|}|}
    *[Ok]
        ->final_packing
    
    =use_glucometer
    ~ time += 1
    Zucchi vérifie sa glycémie avec un glucomètre, ce n'est pas aussi pratique que le CGM mais cela  lui permet d'avoir toujours une idée de son taux de sucre dans le sang et de faire les ajustements nécessaires. Iel se sent soulagé mais aussi frustré par l'inconvénient d'avoir à utiliser une méthode manuelle qui est beaucoup plus chronophage.

    {breakfastskip == false: {packrushed == false:<expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang, mais il nécessite beaucoup plus de soins et de temps pour l'utiliser.</expl>|}|}
    *[Ok]
        ->final_packing

==working==
Heureusement, le capteur fonctionne. Zucchi se sent soulagé, mais iel sait que la situation inverse s'est tellement produite. Le poids de ces incertitudes et l'impact sur sa santé et son emploi du temps sont trop grands pour être oubliés.
*[Humph]
-> final_packing

==final_packing==
Toutes ces tâches et décisions, qui peuvent sembler petites, s'accumulent pour représenter un fardeau important et écrasant pour Zucchi. De l'emballage des accessoires pour le diabète, à la vérification des stylos à insuline, en passant par la gestion d'équipements défectueux, la gestion du diabète est un travail à plein temps qui ne s'arrête jamais. Zucchi se sent dépassé et stressé par le besoin constant de s'assurer qu'iel a suffisamment de matériel et la possibilité de devoir se passer d'un outil essentiel comme le CGM, mais iel est déterminé à continuer.

    *[Le temps passe. Il est temps de penser à la journée à venir.]
    -> End_of_chapter_1


==End_of_chapter_1

/* Sous-chapitre 6: fin du chapitre*** */

Zucchi est maintenant face à la décision de comment poursuivre sa journée. Même s'iel essaie d'oublier sa maladie, iel sait que ce n'est pas possible. Chaque jour est un nouveau voyage dans le monde du diabète, et parfois, iel ne peut pas toujours tenir ses promesses, que ce soit concernant a santé, ses objectifs professionnels ou ses relations. Mais le plus important est de s'écouter, de tolérer et d'être indulgent envers ce qu'iel pense être des échecs, des déviations. S'iel veut rester déterminés, c'est à cela qu'iel doit donner tout son cœur.

<subchapitre>Alors, que devrait faire Zucchi de sa journée?</subchapitre>
*[Rester à la maison et se reposer] -> rest_at_home
*{time >= 6 }[Aller au travail, mais arriver en retard] -> go_to_work_late
*{time < 6 }[Aller au travail en se pressant et presque pas en retard] -> go_to_work_rushed
*[Aller ailleurs] -> go_somewhere_else

=rest_at_home
Zucchi décide de rester à la maison et de se reposer. Iel se sent coupable de ne pas aller au travail, mais aussi soulagé d'avoir un peu de temps pour se remettre de ses difficultés matinales. Iel passe la journée à prendre soin de lui-même et de son diabète, essayant de retrouver son énergie et son équilibre.

*<strong>La fin.</strong>

<i>La décision de Zucchi de rester à la maison et de se reposer était le bon choix pour sa santé. Iel passe la journée à se concentrer sur son bien-être, à surveiller ses niveaux de sucre dans le sang et à prendre soin de lui-même. Iel se sent plus en contrôle de son diabète et est mieux préparé à affronter les défis du lendemain. En s'endormant, iel ressent un sentiment de paix et d'accomplissement pour avoir pris soin de soi-même.<warning> L'histoire se termine ici, mais le voyage qu'est la gestion du diabète continue.</warning></i>
    -> fin

=go_to_work_late
Zucchi se précipite pour se préparer pour le travail, mais finit par arriver en retard. Iel se sent coupable de ne pas être ponctuel, mais aussi soulagé d'avoir eu le temps de prendre soin de son diabète. Son patron n'est pas content, iel est en retard dans toutes ses tâches, ce qui le rend très anxieux. Mais le temps qu'iel a passé lui a au moins permis de se sentir aussi bien que possible par rapport à son diabète.

*<strong>La fin.</strong>

<i>La décision de Zucchi de prioriser son diabète plutôt que d'être ponctuel a eu des conséquences au travail, mais lui a également permis de prendre soin de sa santé. Iel se sent coupable d'être en retard, mais aussi soulagé d'avoir pu traiter son taux de glycémie bas. Malgré les défis rencontrés au travail, iel reste déterminé à trouver un équilibre entre sa vie professionnelle et personnelle.<warning> L'histoire se termine ici, mais le voyage qu'est la gestion du diabète continue.</warning></i>
    -> fin

=go_to_work_rushed
Zucchi se précipite pour se préparer pour le travail, mais arrive tout juste à l'heure. Iel se sent stressé et anxieux, car iel n'a pas pris le temps de prendre soin de son diabète. Iel passe la journée à essayer de rattraper son retard dans ses tâches et à surveiller constamment son taux de sucre dans le sang.

*<strong>La fin.</strong>

<i>La décision de Zucchi de prioriser le travail plutôt que son diabète a eu des conséquences sur leur santé. Malgré les défis rencontrés, iel apprend une leçon importante sur l'importance de prendre soin de soi. En s'endormant, iel se fait une note mentale pour prendre de meilleures décisions à l'avenir.<warning> L'histoire se termine ici, mais le voyage qu'est la gestion du diabète continue.</warning></i>
    -> fin

=go_somewhere_else
Zucchi décide d'aller ailleurs au lieu d'aller au travail. Iel se sent coupable de ne pas aller travailler, mais aussi soulagé d'avoir un peu de temps pour se remettre de ses difficultés matinales. Iel passe la journée à prendre soin de lui et de son diabète, essayant de retrouver l'énergie et l'équilibre.

*<strong>La fin.</strong>

<i>La décision de Zucchi de prioriser sa santé et de prendre une pause l'a aidé à reprendre le contrôle de son diabète. Iel passe la journée à profiter de moments simples et à s'amuser, tout en étant conscient de son diabète et en restant en bonne santé. Iel se sent plus motivé que jamais. En s'endormant, iel ressent un sentiment d'accomplissement pour avoir pris le contrôle de son diabète. <warning> L'histoire se termine ici, mais le voyage qu'est la gestion du diabète continue.</warning></i>
    -> fin

=== fin ===
TODO: ajouter un lien incorporé dans "continue" pour accéder à la fin
<strong><i>Merci d'avoir pris le temps de jouer à 'Un Début Difficile'. Vous avez maintenant une compréhension plus approfondie des luttes quotidiennes de la gestion du diabète de type 1, et que c'est un travail à plein temps. Nous espérons que cette histoire vous a montré l'importance de soutenir ceux qui vivent avec le diabète. Veuillez envisager de sensibiliser à la condition et d'éduquer les autres. C'est ainsi que nous pouvons tous faire la différence. Pour le diabète – mais évidemment pas seulement.</i></strong>

-> END




next chapter /le travail / la maison / ailleurs : défis, les deux côtés de la glycémie, la galère au travail, en prennant compte du fait d'avoir le CGM ou pas, d'avoir manger et quoi, d'avoir pack et quoi.





