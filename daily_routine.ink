# author: Piero Carette
# theme : 

<warning> <a href="https:\/\/www.verywellhealth.com/type-1-diabetes-overview-3289655" target="_blank">Le diabète de type 1</a> est une maladie chronique auto-immune grave. Elle se produit chez des personnes dont les défenses immunitaires, pour des raisons inconnues, détruisent les cellules du pancréas qui produisent de l'insuline. L'insuline est essentielle pour les humains : elle permet au glucose dans notre sang d'entrer dans nos cellules et de nourrir notre corps. Par conséquent, le diabète peut provoquer l'hypoglycémie, lorsqu'il n'y a pas assez de glucose dans le sang, et l'hyperglycémie, lorsqu'il y en a trop. Ces deux phénomènes, poussés à des extrêmes en durée ou en intensité, peuvent entraîner des complications graves, allant jusqu'au décès. Ce danger constant pour le diabétique se traduit par un fardeau mental continu, qui pèse souvent sur la vie quotidienne. Cette fiction propose d'illustrer cela.</warning> 

<strong><i>Cette histoire vise à sensibiliser aux difficultés de la gestion du diabète de type 1, veuillez garder à l'esprit que l'expérience n'est pas la même pour tout le monde et que le diabète peut être géré.</i></strong>

/* **********************Sous-chapitre 1: Incipit************************* */

# variables
VAR temps=0
VAR glycemie=0

# vérificateurs
VAR petitdejsucre = false
VAR petitdejsans = false
VAR preprapide = false
VAR prepglucose = false
VAR velo = false
VAR capteur = true 


*[<b>Commencer l'histoire</b>]

<chapter>Chapitre 1: Un Début Difficile</chapter>

Le réveil sonne, tirant Zucchi de son sommeil. <a onclick="CreateDialogBox()">Iel</a> se réveille péniblement et tend la main pour l'éteindre, frottant le sommeil de ses yeux. En se redressant, iel remarque la sourde douleur de la fatigue dans ses os, une sensation bien trop familière. Iel vit avec un diabète de type 1, et iel sait que ce sera encore une journée de jonglage constant.
    **[Levez-vous !]

Zucchi attrape son téléphone sur la table de nuit et consulte ses niveaux de glycémie sur l'application CGM. 

<expl> Un <a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/managing-diabetes/continuous-glucose-monitoring" target="_blank">CGM</a> est un Moniteur de Glucose en Continu, un petit capteur inséré sous la peau qui émet toutes les quelques minutes les niveaux de glucose sanguin, également appelé glycémie, grâce à un transmetteur. Cette glycémie est ensuite affichée sur un moniteur qui est souvent le téléphone de l'utilisateur. Le coût d'un CGM est élevé et les compagnies d'assurance suisses ne remboursent les CGM que dans certaines conditions restrictives, pas pour tous les diabétiques. </expl> 

~ glycemie = 5
La glycémie est un peu basse, iel sait qu'iel a besoin de manger quelque chose, mais iel est en retard pour le travail et n'a pas beaucoup de temps. Iel se sent stressé·e et frustré·e.
    ***[Alors, que faire pour le petit-déjeuner ?] -> petitdej


/* **********************Sous-chapitre 2: Petit-déjeuner************************* */

===petitdej===

Zucchi envisage ses options pour le petit-déjeuner. Un bol de céréales semble tentant, mais iel sait que cela ferait augmenter sa glycémie. Préparer quelque chose de plus sain, comme des œufs brouillés et des épinards, prendrait trop de temps, et iel est déjà en retard pour le travail. Sauter le petit-déjeuner tout court ferait trop baisser sa glycémie plus tard dans la matinée.

<subchapter>Que va faire Zucchi pour le petit-déjeuner ?</subchapter>

* [Manger un petit-déjeuner pauvre en glucides, mais être en retard pour le travail] -> petitdej_sain
* [Attraper rapidement un bol de céréales] -> petitdej_sucre
* [Sauter le petit-déjeuner] -> petitdej_sans

=petitdej_sain
Zucchi prend le temps de préparer un petit-déjeuner sain, optant pour des œufs brouillés et des épinards. L'arôme savoureux des œufs flotte dans la cuisine, faisant gronder l'estomac de Zucchi. En mangeant, iel ressent un sentiment de satisfaction en sachant qu'iel fait un bon choix pour sa santé. Cependant, en regardant l'heure, iel réalise qu'iel est en retard pour le travail. Son cœur bat la chamade d'anxiété et de frustration, sachant qu'iel doit choisir entre sa santé et sa ponctualité. Iel ressent un sentiment de culpabilité en continuant à se préparer pour cette journée, déterminé à arriver au travail à l'heure.
~ temps += 3
~ glycemie = 7
    -> petitdej_fin

=petitdej_sucre
~ temps += 1
~ glycemie = 15
~ petitdejsucre = true
Zucchi se sert un bol de céréales, attiré par les morceaux colorés et croquants. Alors qu'iel verse le lait, l'arôme sucré des céréales embaume la pièce. À la première bouchée, la douceur et la texture croquante des céréales le satisfont pleinement. Cependant, en terminant son bol, iel commence à ressentir de la lourdeur. Iel vérifie sa glycémie, qui est élevée. Iel réalise que les céréales ont rapidement fait grimper sa glycémie. Iel doit prendre plus d'insuline que prévu et surveiller sa glycémie de près. Iel se sent coupable et frustré·e de ne pas avoir fait des choix plus sains. Maintenant en retard pour le travail, iel se sent stressé·e.

<expl> Les diabétiques de type 1 doivent prendre de l'<a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/insulin-medicines-treatments" target="_blank">insuline</a> car leur pancréas ne le produit pas par lui-même. Iels doivent prendre de l'insuline plusieurs fois par jour, notamment lorsqu'iels mangent et boivent, pour contrôler leur taux de glucose sanguin. Il existe différentes façons de prendre de l'insuline. Iels peuvent utiliser une seringue et une aiguille, un stylo à insuline ou une pompe à insuline. Les pompes et les stylos sont plus pratiques mais plus chers, quoique remboursés par les compagnies d'assurance suisses.</expl>
    *[D'accord.] -> petitdej_fin

=petitdej_sans
~ petitdejsans = true
~ glycemie = 3
Zucchi saute complètement le petit-déjeuner, ressentant la pression du temps et le stress d'être en retard pour le travail. Peu de temps après, iel vérifie rapidement sa glycémie et elle a continué à baisser dangereusement. Iel se sent étourdi, anxieux et incertain sur la marche à suivre. Son estomac gargouille de faim et iel se sent faible. La pensée de faire face à l'hypoglycémie pendant le travail le remplit de crainte et de culpabilité. Iel sait que sauter le petit-déjeuner a des conséquences sur son taux de sucre dans le sang et iel doit donc prendre une décision sur la façon de le gérer.

<subchapter>Comment Zucchi va-t-il gérer sa faible glycémie?</subchapter>
            ** [Prendre le temps de vérifier avec le glucomètre]-> petitdej_hypo_glucometre
            ** [Prendre rapidement un peu de sucre]-> petitdej_hypo_sucre


            =petitdej_hypo_glucometre
            ~ temps += 2
            Zucchi prend le temps de vérifier sa glycémie avec le glucomètre et calcule soigneusement la bonne quantité de sucre dont iel a besoin. Iel ressent un soulagement en prenant le sucre, sachant qu'iel a traité son faible taux de sucre dans le sang. Cependant, en regardant l'heure, iel réalise que le temps a pas mal passé. En sentant toujours la faim dans son ventre, iel pense au stress et à la frustration d'avoir constamment à choisir entre sa santé et sa ponctualité.
            ~ glycemie = 6
            <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang. Par conséquent, lorsque les valeurs de glycémie semblent critiques, il est important d'utiliser un glucomètre pour vérifier ce que votre corps ressent et ce que le CGM, beaucoup moins fiable, nous dit.</expl>
        
                *[Ok.]->petitdej_fin
    
            =petitdej_hypo_sucre
            Zucchi prend rapidement un peu de sucre. Iel ressent un sentiment d'urgence mais est aussi inquiet de prendre trop ou trop peu de sucre. Iel se sent toujours étourdis et un peu incertain de son taux de sucre dans le sang, car iel ne l'a pas vérifié avec un glucomètre. Peut-être que le sucre pris suffira, mais peut-être aussi qu'il en a mis trop, ou pas assez. L'angoisse de comment il devra passer les prochaines heures s'installe en lui alors que son ventre continue de gargouiller.
            ~ glycemie = 5
            <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang. Par conséquent, lorsque les valeurs de glycémie semblent critiques, il est important d'utiliser un glucomètre pour vérifier ce que votre corps ressent et ce que le CGM, beaucoup moins fiable, vous dit.</expl>

                *[Ok.]->petitdej_fin


===petitdej_fin===
Le petit-déjeuner est une partie cruciale de la gestion du diabète, mais peut aussi être une source de stress et de frustration, surtout lorsque le temps est un facteur. Zucchi doit équilibrer le besoin de prendre un petit-déjeuner sain avec la réalité de son emploi du temps chargé, et cela peut être une tâche difficile, avec des conséquences. Dans sa routine quotidienne, Zucchi doit toujours faire des choix et subir les conséquences de ces choix, qui peuvent occuper plus ou moins d'espace mental.

*[Maintenant, il est temps de faire ses affaires]
-> prep


/* **********************Sous-chapitre 3: Préparation ************************* */

===prep===

Zucchi commence à se préparer pour la journée, mais avant de quitter la maison, iel doit vérifier ses équipements pour le diabète. Iel doit s'assurer d'avoir assez d'insuline pour la journée avec lui, en cas d'hyperglycémie ou s'il doit manger, mais aussi assez de glucose, en cas d'hypoglycémie, comme des sucres de raisin, du soda, ou tout ce qui a une grande concentration de glucose tout en étant facilement ingérable et transportable.
*[Oh]

Iel devrait vérifier son insuline dans le réfrigérateur et s'assurer d'en avoir également assez pour les prochains jours, car bientôt c'est le week-end, et la pharmacie sera fermée. Iel se sent anxieux et stressé à l'idée de manquer d'insuline ou de glucose pendant la journée ou les jours suivants. Iel est toujours inquiet d'oublier quelque chose d'important, donc iel vérifie tout deux fois.

<subchapter>Que va prendre Zucchi avec ellui? Que va faire Zucchi pour s'assurer de ne manquer de rien ?</subchapter>
-> prep_quoi

===prep_quoi===
{TURNS_SINCE(->prep_quoi) >= 1 : {TURNS_SINCE(->prep_quoi) >= 3 : <i>Zucchi réalise que toute cette préparation prend beaucoup de temps alors qu'iel est en retard.</i> }<i>Est-ce que Zucchi va prendre autre chose ?</i>}

*(glucose){not soda}[Prendre des sucres de raisin en plus] -> prep_glucose
*(soda)[Prendre du soda en plus] -> prep_soda
*(checkinsulin)[Vérifier son stylo à insuline] -> prep_insuline
*(checkinsulinfridge){checkinsulin}[Vérifier l'insuline dans le réfrigérateur] -> prep_insuline_frigo
*(extrainsulin)[Apporter un stylo à insuline supplémentaire] -> prep_insuline_extra
*{TURNS_SINCE(->prep_quoi) == 0}[Préparer ses affaires rapidement] -> prep_rapide
*{TURNS_SINCE(->prep_quoi) >= 1}[Ne rien faire de plus] -> prep_fin

=prep_glucose
~ temps += 1
~ prepglucose = true
Zucchi prends des sucres de raisin en plus, juste au cas où. Iel se sent soulagé mais aussi frustré de devoir penser à des choses comme ça juste pour sortir de la maison. Iel se sent déprimé à l'idée de devoir potentiellement manger à nouveau ces sucres en cas d'hypoglycémie. Avec le temps, c'est devenu vraiment dégoûtant.
->prep_quoi

=prep_soda
~ temps += 1
Zucchi regarde dans le réfrigérateur pour du soda, mais n'en trouve pas. Iel doit bientôt aller faire des courses. {not glucose: -> prep_glucose| Iel est limité à l'utilisation des comprimés en cas d'hypoglycémie, ce qui ajoute une autre couche à leur désespoir.}
->prep_quoi

=prep_insuline
~ temps += 1
Zucchi vérifie son stylo à insuline avant de partir, en s'assurant qu'il n'est pas périmé et qu'il contient suffisamment d'insuline. {not extrainsulin: Iel se sent soulagé mais aussi un peu stressé à l'idée de manquer d'insuline.}
->prep_quoi

=prep_insuline_frigo
~ temps += 1
Zucchi se souvient de vérifier dans le réfrigérateur s'iel a assez d'insuline pour le week-end à venir. Iel semble en avoir assez, mais Zucchi est fatigué de devoir toujours penser à tant de choses en même temps.
->prep_quoi

=prep_insuline_extra
~ temps += 1
Zucchi prend un stylo à insuline supplémentaire, juste au cas où. {not checkinsulin: Iel se sent soulagé et aussi un peu agacé de devoir penser à des choses comme ça juste pour sortir de la maison.| Iel est un peu agacés de devoir penser à toutes ces choses juste pour sortir de la maison. }
->prep_quoi

=prep_rapide
~ preprapide = true
Zucchi met rapidement quelques sucres de raisin dans son sac sans vérifier les stylos à insuline. Iel ne vérifie pas son CGM et ne réalise pas qu'il ne fonctionne pas correctement. Cela conduira sûrement à une journée stressante, où iel devra constamment vérifier sa glycémie avec un glucomètre et ne se sentira pas aussi libre.

~ capteur = false
~ prepglucose = true

{petitdejsans == false: <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang, mais il nécessite beaucoup plus de soins et de temps pour l'utiliser.</expl>|}

    *[Le temps passe. Il est temps d'y aller.]
    -> fin_chapitre_1

=prep_fin
Zucchi a l'impression que presque tout est vérifié. Iel doit encore vérifier que son capteur de fonctionne, car il est essentiel pour sa journée.
    *[Vérifier le capteur de glycémie.]
    -> cgm

/* **********************Sous-chapitre 4: vérification CGM ************************* */

===cgm===
~ temps += 1
Zucchi vérifie son capteur de glucose, s'assurant qu'il fonctionne correctement et que son téléphone a suffisamment de batterie. Iel sait que cet appareil est essentiel pour gérer son diabète, et quand il ne fonctionne pas correctement, cela peut être une expérience stressante et accablante. Iel se sent soulagé lorsque tout fonctionne bien, mais aussi un peu frustrés si ce n'est pas le cas, car cela signifie souvent qu'iel devra passer la journée a vérifier manuellement les niveaux de sucre dans son sang avec un glucomètre.

*[Vérifier]
{~->cgm_marche|->cgm_marche_pas|->cgm_marche_pas}

==cgm_marche_pas==
Malheureusement, le capteur ne fonctionne pas. Le téléphone de Zucchi est chargé, mais les valeurs de glucose sont en attente et iel ne sait pas quand ni comment le CGM fonctionnera à nouveau.

<subchapter>Que fera Zucchi à ce sujet?</subchapter>

*[Contacter la hotline du fabricant du capteur] -> cgm_hotline
*[Passer la journée sans le CGM] -> cgm_sans
*[Vérifier le sucre avec un glucomètre] -> cgm_use_glucometre

    =cgm_hotline
    ~ temps += 2
    Zucchi contacte la hotline du fabricant du capteur. Après quelques longues minutes au téléphone, l'opérateur trouve la solution pour faire fonctionner à nouveau le capteur. Zucchi se sent soulagé d'avoir obtenu de l'aide, mais aussi frustré par le temps d'attente.
    *[Humph]
        -> cgm_fin
    
    =cgm_sans
    
    ~capteur = false
    
    Zucchi décide de passer la journée sans le CGM. Iel se sent moins libre, plus stressé et anxieux, devant vérifier le sucre manuellement avec un glucomètre.
    
    {petitdejsans == false: {preprapide == false:<expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang, mais il nécessite beaucoup plus de soins et de temps pour l'utiliser.</expl>|}|}
    *[Ok]
        ->fin_chapitre_1
    
    =cgm_use_glucometre
    ~temps += 1
    ~capteur = false
    Zucchi vérifie sa glycémie avec un glucomètre, ce n'est pas aussi pratique que le CGM mais cela  lui permet d'avoir toujours une idée de son taux de sucre dans le sang et de faire les ajustements nécessaires. Iel se sent soulagé·e mais aussi frustré·e par l'inconvénient d'avoir à utiliser une méthode manuelle qui est beaucoup plus chronophage.

    {petitdejsans == false: {preprapide == false:<expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang, mais il nécessite beaucoup plus de soins et de temps pour l'utiliser.</expl>|}|}
    *[Ok]
        ->cgm_fin

==cgm_marche==
Heureusement, le capteur fonctionne. Zucchi se sent soulagé·e, mais iel sait que la situation inverse s'est tellement produite. Le poids de ces incertitudes et l'impact sur sa santé et son emploi du temps sont trop grands pour être oubliés.
*[Humph]
-> cgm_fin

==cgm_fin==
Toutes ces tâches et décisions, qui peuvent sembler petites, s'accumulent pour représenter un fardeau important et écrasant pour Zucchi. De l'emballage des accessoires pour le diabète, à la vérification des stylos à insuline, en passant par la gestion d'équipements défectueux, la gestion du diabète est un travail à plein temps qui ne s'arrête jamais. Zucchi se sent dépassé·e et stressé·e par le besoin constant de s'assurer qu'iel a suffisamment de matériel et la possibilité de devoir se passer d'un outil essentiel comme le CGM, mais iel est déterminé à continuer.

    *[Le temps passe. Il est temps de penser à la journée à venir.]
    -> fin_chapitre_1


==fin_chapitre_1

/* Sous-chapitre 6: fin du chapitre*** */

Zucchi est maintenant face à la décision de comment poursuivre sa journée. Même s'iel essaie d'oublier sa maladie, iel sait que ce n'est pas possible. Chaque jour est un nouveau voyage dans le monde du diabète, et parfois, iel ne peut pas toujours tenir ses promesses, que ce soit concernant a santé, ses objectifs professionnels ou ses relations. Mais le plus important est de s'écouter, de tolérer et d'être indulgent envers ce qu'iel pense être des échecs, des déviations. S'iel veut rester déterminé·e, c'est à cela qu'iel doit donner tout son cœur.

<subchapitre>Alors, que devrait faire Zucchi de sa journée?</subchapitre>
*[Rester à la maison et se reposer] -> maison
*{temps >= 6 }[Aller au travail, mais arriver en retard] -> trajet
*{temps < 6 }[Aller au travail en se pressant et peut-être pas en retard] -> trajet
*[Aller ailleurs] -> dehors


<chapter>Chapitre 2: Une journée comme les autres</chapter>

/* Partie A : Une journée au travail */
/* **********************Sous-chapitre 1: Le trajet ************************* */
 
 ===trajet===

Zucchi se prépare à partir pour le travail, conscient·e que le choix entre le vélo et le bus dépendra de sa glycémie. Le vélo le·a fera arriver le plus rapidement au travail, mais chacune de ces options présente ses propres défis et conséquences :

* [Prendre le bus] -> trajet_bus
* [Prendre le vélo] -> trajet_velo

===trajet_velo===

{glycemie <= 5} Zucchi s'élance sur son vélo, mais rapidement, iel réalise que ses jambes sont lourdes et faibles. Une hypoglycémie le·a ralentit, l'obligeant à faire demi-tour. Déçu·e et frustré·e, Zucchi abandonne l'idée du vélo et se dirige vers l'arrêt de bus le plus proche.
    -> trajet_bus
{glycemie > 5} Zucchi opte pour le vélo, espérant arriver au travail rapidement et sans encombre. La brise matinale caresse son visage alors qu'iel pédale avec détermination, savourant chaque instant de liberté sur deux roues. 
    ~ velo = true
    ~ glycemie -= 3
{temps > 8:Zucchi se tient devant les portes de son lieu de travail, le souffle court et le cœur battant. Malgré le fait d'avoir pédalé avec ardeur pour se rendre au travail, iel arrive en retard, sa respiration encore haletante, ses muscles fatigués. Un sentiment d'inquiétude monte en ellui alors qu'iel réalise les possibles conséquences de son retard. Iel prend une profonde inspiration, se préparant mentalement à faire face à ce qui l'attend à l'intérieur. ->retard_gros |{temps<5: Zucchi parvient à arriver au travail dans les temps. Iel se gare devant le bâtiment, reconnaissant·e d'avoir évité le retard, mais fatigué de cette course infernale. Un léger sentiment d'accomplissement l'envahit même si iel redoute la journée qui se profile. Le ventre vide et le souffle coupé, iel reste confiant·e quant à sa capacité à relever les défis qui pourraient se présenter. ->retard_sans | Zucchi arrive après son trajet en vélo devant les portes de son lieu de travail. Iel se dépèche de garer son vélo en sentant qu'iel est en retard. Un coup d'oeil sur son téléphone le rassure un peu. Iel sent une pointe d'apaisement en réalisant qu'il est arrivé peu en retard. Bien que la fatigue commence à se faire sentir dans ses muscles, un sourire léger se dessine sur son visage, mêlé à un soupir de soulagement. Iel se réconforte en se disant que ce léger retard ne devrait pas causer trop de soucis au travail. Se prenant mentalement en main, iel se prépare à affronter les défis de la journée, déterminé à donner le meilleur de ellui-même. ->->retard_moyen}}
    

===trajet_bus===
~ temps += 2
{not trajet_velo:Zucchi décide de prendre le bus pour se rendre au travail.|} A l'arrêt de bus, iel attend de longues minutes que le bus arrive. Il finit par arriver avec assez de retard pour augmenter son stress d'être à l'heure au travail. Acceptant qu'iel sera en retard, iel monte dans le bus tout en se rappelant de regarder où en est sa glycémie.
    * [Regarder sa glycémie]
    {glycemie >= 5: {glycemie >= 15: -> situ_hyper_trajet| ->situ_normale_trajet}| -> situ_hypo_trajet}

    ===situ_hypo_trajet===
    
    Alors que Zucchi monte dans le bus, une sensation de faiblesse l'envahit subitement, signe que sa glycémie est en baisse. Cette sensation le·a contraint à chercher un siège, incapable de rester debout en raison de l'hypoglycémie qui le prend au dépourvu. Iel check son téléphone afin de vérifier son capteur, qui affiche effectivement une glycémie basse.
    
    <expl> L'hypoglycémie survient lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement bas. Cela peut se produire si trop d'insuline est injectée par rapport à la quantité de glucose consommée ou si le repas est retardé ou manqué. Les symptômes de l'hypoglycémie peuvent inclure la faim, la transpiration, les tremblements, les étourdissements et la confusion. Pour traiter l'hypoglycémie, il est recommandé de consommer rapidement des aliments ou des boissons contenant du sucre, comme du soda, des comprimés de glucose ou des bonbons. Il est également important de surveiller de près son taux de glucose sanguin pour éviter que l'hypoglycémie ne devienne grave, ainsi que d'éviter toute activité physique. En cas d'hypoglycémie sévère, les conséquences peuvent être graves, avec un risque de dés