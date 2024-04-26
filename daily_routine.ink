# author: Piero Carette
# theme : 

<warning> <a href="https:\/\/www.verywellhealth.com/type-1-diabetes-overview-3289655" target="_blank">Le diabète de type 1</a> est une maladie chronique auto-immune grave. Elle se produit chez des personnes dont les défenses immunitaires, pour des raisons inconnues, détruisent les cellules du pancréas qui produisent de l'insuline. L'insuline est essentielle pour les humains : elle permet au glucose dans notre sang d'entrer dans nos cellules et de nourrir notre corps. Par conséquent, le diabète peut provoquer l'hypoglycémie, lorsqu'il n'y a pas assez de glucose dans le sang, et l'hyperglycémie, lorsqu'il y en a trop. Ces deux phénomènes, poussés à des extrêmes en durée ou en intensité, peuvent entraîner des complications graves, allant jusqu'au décès. Ce danger constant pour le diabétique se traduit par un fardeau mental continu, qui pèse souvent sur la vie quotidienne. Cette fiction propose d'illustrer cela.</warning> 

<strong><i>Cette histoire vise à sensibiliser aux difficultés de la gestion du diabète de type 1, veuillez garder à l'esprit que l'expérience n'est pas la même pour tout le monde et que le diabète peut être géré.</i></strong>

/* **********************Sous-chapitre 1: Incipit************************* */

# variables
VAR temps=0
VAR glycemie=5

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

La glycémie est un peu basse, iel sait qu'iel a besoin de manger quelque chose, mais iel est en retard pour le travail et n'a pas beaucoup de temps. Iel se sent stressé·e et frustré·e.
    ***[Alors, que faire pour le petit-déjeuner ?] -> petitdej


/* **********************Sous-chapitre 2: Petit-déjeuner************************* */

===petitdej===

Zucchi envisage ses options pour le petit-déjeuner. Un bol de céréales semble tentant, mais iel sait que cela ferait augmenter sa glycémie. Préparer quelque chose de plus sain, comme des œufs brouillés et des épinards, prendrait trop de temps, et iel est déjà en retard pour le travail. Sauter le petit-déjeuner tout court ferait trop baisser sa glycémie plus tard dans la matinée.

<subchapter>Que va faire Zucchi pour le petit-déjeuner ?</subchapter>

* [Manger un petit-déjeuner pauvre en glucides] -> petitdej_sain
* [Attraper rapidement un bol de céréales] -> petitdej_sucre
* [Sauter le petit-déjeuner] -> petitdej_sans

=petitdej_sain
Zucchi prend le temps de préparer un petit-déjeuner sain, optant pour des œufs brouillés et des épinards. L'arôme savoureux des œufs flotte dans la cuisine, faisant gronder l'estomac de Zucchi. En mangeant, iel ressent un sentiment de satisfaction en sachant qu'iel fait un bon choix pour sa santé. Cependant, en regardant l'heure, iel réalise qu'iel est en retard pour le travail. Son cœur bat la chamade d'anxiété et de frustration, sachant qu'iel doit choisir entre sa santé et sa ponctualité. Iel ressent un sentiment de culpabilité en continuant à se préparer pour cette journée, déterminé à arriver au travail à l'heure.
~ temps += 3
~ glycemie += 2
    -> petitdej_fin

=petitdej_sucre
~ temps += 1
~ glycemie += 10
~ petitdejsucre = true
Zucchi se sert un bol de céréales, attiré par les morceaux colorés et croquants. Alors qu'iel verse le lait, l'arôme sucré des céréales embaume la pièce. À la première bouchée, la douceur et la texture croquante des céréales le satisfont pleinement. Cependant, en terminant son bol, iel commence à ressentir de la lourdeur. Iel vérifie sa glycémie, qui est élevée. Iel réalise que les céréales ont rapidement fait grimper sa glycémie. Iel doit prendre plus d'insuline que prévu et surveiller sa glycémie de près. Iel se sent coupable et frustré·e de ne pas avoir fait des choix plus sains. Maintenant en retard pour le travail, iel se sent stressé·e.

<expl> Les diabétiques de type 1 doivent prendre de l'<a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/insulin-medicines-treatments" target="_blank">insuline</a> car leur pancréas ne le produit pas par lui-même. Iels doivent prendre de l'insuline plusieurs fois par jour, notamment lorsqu'iels mangent et boivent, pour contrôler leur taux de glucose sanguin. Il existe différentes façons de prendre de l'insuline. Iels peuvent utiliser une seringue et une aiguille, un stylo à insuline ou une pompe à insuline. Les pompes et les stylos sont plus pratiques mais plus chers, quoique remboursés par les compagnies d'assurance suisses.</expl>
    *[D'accord.] -> petitdej_fin

=petitdej_sans
~ petitdejsans = true
~ glycemie -= 2
Zucchi saute complètement le petit-déjeuner, ressentant la pression du temps et le stress d'être en retard pour le travail. Peu de temps après, iel vérifie rapidement sa glycémie et elle a continué à baisser dangereusement. Iel se sent étourdi, anxieux et incertain sur la marche à suivre. Son estomac gargouille de faim et iel se sent faible. La pensée de faire face à l'hypoglycémie pendant le travail le remplit de crainte et de culpabilité. Iel sait que sauter le petit-déjeuner a des conséquences sur son taux de sucre dans le sang et iel doit donc prendre une décision sur la façon de le gérer.

<subchapter>Comment Zucchi va-t-il gérer sa faible glycémie?</subchapter>
            ** [Prendre le temps de vérifier avec le glucomètre]-> petitdej_hypo_glucometre
            ** [Prendre rapidement un peu de sucre]-> petitdej_hypo_sucre


            =petitdej_hypo_glucometre
            ~ temps += 2
            Zucchi prend le temps de vérifier sa glycémie avec le glucomètre et calcule soigneusement la bonne quantité de sucre dont iel a besoin. Iel ressent un soulagement en prenant le sucre, sachant qu'iel a traité son faible taux de sucre dans le sang. Cependant, en regardant l'heure, iel réalise que le temps a pas mal passé. En sentant toujours la faim dans son ventre, iel pense au stress et à la frustration d'avoir constamment à choisir entre sa santé et sa ponctualité.
            ~ glycemie += 3
            <expl> Un <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucomètre</a> est un petit appareil médical utilisé pour déterminer la concentration de glucose dans le sang. Le diabétique doit se piquer le doigt pour extraire une goutte de sang, qui sera ensuite analysée par l'appareil. Le glucomètre est l'appareil le plus fiable pour mesurer la concentration de glucose dans le sang. Par conséquent, lorsque les valeurs de glycémie semblent critiques, il est important d'utiliser un glucomètre pour vérifier ce que votre corps ressent et ce que le CGM, beaucoup moins fiable, nous dit.</expl>
        
                *[Ok.]->petitdej_fin
    
            =petitdej_hypo_sucre
            Zucchi prend rapidement un peu de sucre. Iel ressent un sentiment d'urgence mais est aussi inquiet de prendre trop ou trop peu de sucre. Iel se sent toujours étourdis et un peu incertain de son taux de sucre dans le sang, car iel ne l'a pas vérifié avec un glucomètre. Peut-être que le sucre pris suffira, mais peut-être aussi qu'il en a mis trop, ou pas assez. L'angoisse de comment il devra passer les prochaines heures s'installe en lui alors que son ventre continue de gargouiller.
            ~ glycemie += 2
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


/* Partie A : Une journée au travail */
/* **********************Sous-chapitre 1: Le trajet ************************* */
 
 ===trajet===

<chapter>Chapitre 2: Une journée comme les autres</chapter>

Zucchi décide d'aller tout de même au travail et se prépare à partir, conscient·e que le choix entre le vélo et le bus dépendra de sa glycémie. Le vélo le·a fera arriver le plus rapidement au travail, mais chacune de ces options présente ses propres défis et conséquences :

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
    
    <expl> L'hypoglycémie survient lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement bas. Cela peut se produire si trop d'insuline est injectée par rapport à la quantité de glucose consommée ou si le repas est retardé ou manqué. Les symptômes de l'hypoglycémie peuvent inclure la faim, la transpiration, les tremblements, les étourdissements et la confusion. Pour traiter l'hypoglycémie, il est recommandé de consommer rapidement des aliments ou des boissons contenant du sucre, comme du soda, des comprimés de glucose ou des bonbons. Il est également important de surveiller de près son taux de glucose sanguin pour éviter que l'hypoglycémie ne devienne grave, ainsi que d'éviter toute activité physique. En cas d'hypoglycémie sévère, les conséquences peuvent être graves, avec un risque de déséquilibre important du taux de sucre dans le cerveau, pouvant conduire à des dissociations, une perte de conscience, voire, dans les cas extrêmes, au décès. </expl>
    
    Malheureusement, le bus est bondé et Zucchi hésite à demander une place assise, se sentant gêné·e par son apparence en bonne santé. Cependant, rester debout ne semble pas une option viable dans son état actuel. Iel doit alors prendre une décision :
    
    * [Demander une place assise] -> hypo_assis
    * [Ne pas demander et supporter debout] -> hypo_debout

        =hypo_assis
        
        Zucchi rassemble son courage et demande poliment une place assise à quelqu'un dans le bus. Heureusement, une personne compatissante lui cède sa place, soulageant ainsi son inconfort et lui permettant de se concentrer sur sa santé.
        
        -> hypo_sucre

        =hypo_debout
        
        Zucchi décide de ne pas déranger les autres passagers et supporte de rester debout dans le bus malgré son hypoglycémie. Bien que ce soit inconfortable, iel préfère ne pas attirer l'attention sur ellui-même. Iel se sent mal à l'aise et fragile, subissant chacune des secousses du trajet avec grande difficulté.
        
        -> hypo_sucre

        =hypo_sucre
        
        Maintenant dans le bus, Zucchi doit prendre du sucre pour stabiliser sa glycémie et éviter une baisse dangereuse. Zucchi fouille dans son sac, {not prepglucose:  réalisant qu'iel n'a pas pris de sucre supplémentaire. La nécessité d'acheter quelque chose de sucré s'impose, retardant encore plus son arrivée au travail. Il lui faudra sortir au prochain arrêt. -> hypo_acheter | trouvant le sucre qu'iel a heureusement mis plus tôt dedans. Iel prend quelques pastilles et attend que sa glycémie se stabilise. Le bus arrive à l'arrêt de bus proche de son travail et Zucchi descend, quelque peu rétabli·e et soulagé·e d'avoir géré son hypoglycémie.}
        
            {temps > 12: Zucchi sort du bus précipitamment, se sentant déjà coupable de son retard flagrant. Avec appréhension, iel consulte son téléphone et réalise avec consternation que le retard est bien plus important que prévu. Une boule d'angoisse se forme dans son estomac alors qu'iel prend conscience des répercussions de cet écart de temps. Toujours fragile de son hypogycémie, iel se hâte à travers la foule, tentant de dissimuler son malaise derrière une expression neutre. La tension monte alors qu'iel se rapproche du bâtiment, anticipant avec anxiété les réactions de ses collègues et de son patron. ->retard_gros |{temps<6: Zucchi descend précipitamment du bus. Un sourire léger se dessine sur son visage en consultant son téléphone et en constatant qu'iel ne devrait pas avoir de retard. Cependant, une pointe de nervosité persiste alors qu'iel se prépare à affronter une nouvelle journée de travail. Fatigué de cette course infernale et toujours fragile de son hypoglycémie, les pensées tourbillonnent dans l'esprit de Zucchi alors qu'iel se fraye un chemin à travers la foule, se concentrant sur les tâches qui l'attendent. ->retard_sans | Iel sort du bus en hâte, espérant que son retard ne soit pas trop remarqué. Jetant un coup d'œil rapide à son téléphone, iel réalise avec soulagement que le retard est minime, mais cela ne suffit pas à apaiser complètement son inquiétude. Toujours un peu fragile de son hypoglycémie, les pensées se bousculent dans son esprit alors qu'iel se fraye un chemin à travers la foule vers son lieu de travail. Un mélange d'embarras et de frustration l'envahit, sachant qu'iel devra justifier son retard à son patron et à ses collègues. Cette sensation de malaise grandit alors qu'iel se rapproche de l'entrée du bâtiment, se préparant mentalement à affronter les conséquences de son retard. ->retard_moyen}}

        =hypo_acheter
        
        Zucchi descend du bus à l'arrêt suivant et se rend au magasin pour acheter une boisson sucrée. Cela lui fait perdre encore plus de temps, mais c'est nécessaire pour traiter son hypoglycémie. Iel doit maintenant patienter que son taux de sucre dans le sang remonte. Zucchi continue son trajet vers le travail après avoir repris un peu de force. 
         
        {temps > 12: Après avoir récupéré, Zucchi reprend son chemin vers le travail, mais réalise avec consternation qu'iel est bien plus en retard que prévu. Iel se dépêche autant que possible, mais le temps perdu et la faiblesse persistante commencent à peser lourdement sur son esprit. Les pensées de justifications et d'excuses se bousculent alors qu'iel se rapproche du bâtiment, agacé·e d'avoir dû sortir du bus plus tôt et redoutant les réactions de ses collègues et de son patron. ->retard_gros |{temps<6: Après avoir récupéré, Zucchi poursuit son trajet vers le travail, se sentant soulagé·e en voyant qu'iel devrait arriver à l'heure. Cependant, iel ne peut s'empêcher de ressentir une pointe d'agacement d'avoir dû se dépêcher autant avant de partir, sacrifiant ainsi une préparation adéquate pour la journée. Malgré cela, iel aborde la journée avec une attitude positive, même si iel reste un peu faible et irrité·e par cette situation. ->retard_sans | Après avoir récupéré, Zucchi poursuit son trajet vers le travail, réalisant avec soulagement qu'iel est seulement un peu en retard. Iel accélère le pas, agacé·e d'avoir dû sortir du bus plus tôt et de s'être pressé·e pour arriver à l'heure. Malgré cette frustration, iel se sent mieux après avoir pris soin de sa santé et aborde la journée avec optimisme, bien que la faiblesse persistante soit encore présente. ->retard_moyen}}

    ===situ_hyper_trajet===
    La glycémie de Zucchi est élevée, ce qui indique une concentration importante de sucre dans son sang. Une sensation de soif et de fatigue l'accable, lui rappelant la nécessité pressante de s'administrer de l'insuline dès que possible.
    
    <expl> L'hyperglycémie se produit lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement élevé. Cela peut se produire si l'insuline n'est pas administrée en quantité suffisante par rapport à la quantité de glucose consommée, si les injections sont manquées ou si les réserves d'insuline deviennent inefficaces. Les symptômes de l'hyperglycémie comprennent la soif excessive, l'envie fréquente d'uriner, la fatigue, la vision floue et une sensation générale de malaise. Pour traiter l'hyperglycémie, il est recommandé de boire beaucoup d'eau pour aider à éliminer le glucose en excès dans le sang. En outre, l'administration d'insuline supplémentaire peut être nécessaire pour ramener le taux de glucose sanguin à des niveaux normaux. Il est important de surveiller de près son taux de glucose sanguin et de consulter un professionnel de la santé si les symptômes persistent ou s'aggravent. Une hyperglycémie non traitée peut entraîner des complications à long terme telles que des dommages aux vaisseaux sanguins, aux nerfs et aux organes, et nécessite une attention médicale immédiate pour éviter toute complication grave.</expl>
    
    Cependant, l'idée de le faire en public, alors que le bus est bondé et en mouvement, le·a met mal à l'aise. Zucchi doit alors prendre une décision :
    
    * [Trouver une place assise afin de prendre son insuline] -> hyper_assis
    * [Attendre l'arrivée] -> hyper_attendre

        =hyper_attendre
        Zucchi décide de ne pas s'injecter d'insuline dans le bus et préfère attendre d'être descendu pour le faire. Cela prolonge sa période d'hyperglycémie et aggrave son mal-être, mais iel préfère cette option pour des raisons de confort et de discrétion.
        
        Le trajet continue et iel arrive enfin à son arrêt. À la sortie, iel se dépèche de trouver un endroit approprié afin de prendre de l'insuline. Cette piqûre tardive le·a fatigue considérablement, alors qu'iel n'est même pas encore arrivé au travail, mais Zucchi se sent soulagé·e de pouvoir enfin traiter son hyperglycémie.
        
        {temps > 12: Alors que Zucchi se dépêche vers son lieu de travail, un frisson d'inquiétude traverse son corps en constatant l'étendue de son retard. Chaque pas est une course contre le temps, chaque souffle est un rappel de sa lutte contre l'hyperglycémie. Le poids du temps perdu et de l'incertitude s'ajoute à sa charge déjà lourde. À mesure qu'il se rapproche du bâtiment, la tension monte, mêlée d'une pointe d'espoir que son retard ne sera pas trop sévèrement jugé. ->retard_gros |{temps<6: Zucchi constate qu'iel ne devrait pas être en retard. Malgré le soulagement d'arriver à temps, Zucchi ressent encore les effets de l'hyperglycémie et de l'injection d'insuline tardive. Chaque pas vers le travail est une victoire, mais chaque instant est également teinté d'une inquiétude persistante. Les murmures de la fatigue et de l'appréhension s'entremêlent alors qu'il se prépare à affronter la journée, déterminé à faire de son mieux malgré les obstacles. ->retard_sans | Cette attente pour s'injecter de l'insuline devient encore plus pesante lorsqu'iel réalise d'être un peu en retard. Chaque minute semble une éternité alors que Zucchi se hâte vers le travail, le malaise de l'hyperglycémie l'accompagnant à chaque pas. Une tension palpable envahit l'air alors qu'il se rapproche du bâtiment, partagé entre le soulagement d'être arrivé et l'inquiétude face aux défis à venir. ->retard_moyen}}

        =hyper_assis
        Zucchi trouve une place en se faufilant dans le bus, ce qui lui permet de sortir son stylo à insuline afin de se piquer pour traiter son hyperglycémie. Bien que cela le·a mette mal à l'aise de le faire en public, iel sait que c'est nécessaire pour stabiliser sa glycémie.
        
        {temps > 12: Après s'être piqué dans le bus pour traiter son hyperglycémie, Zucchi se sent un peu plus soulagé·e, mais reste préoccupé·e par l'ampleur de son retard. Les minutes semblent s'étirer comme des heures alors qu'il·elle attend anxieusement son arrêt. Lorsqu'il·elle finit par descendre, une bouffée d'air frais le·la revigore, mais le poids de son retard persiste, exacerbé par le sentiment d'inconfort d'avoir dû gérer sa condition dans un environnement public. ->retard_gros |{temps<6: Même si Zucchi parvient à traiter son hyperglycémie dans le bus, l'inconfort persiste alors qu'iel se fraye un chemin pour descendre du bus, arrivé à son arrêt. Le soulagement d'avoir géré sa santé s'entremêle avec l'inquiétude face à la journée de travail à venir. Malgré sa ponctualité, iel ressent toujours le poids de son état de santé fragile, un rappel constant de la complexité de sa condition.->retard_sans | Après s'être piqué pour traiter son hyperglycémie dans le bus, Zucchi ressent un mélange de soulagement et d'appréhension alors qu'iel attend son arrêt. Lorsqu'il·elle descend enfin, un sentiment de soulagement l'envahit, mais iel sait qu'iel est un peu en retard. ->retard_moyen}}

    ===situ_normale_trajet===
    
    Zucchi se sent à l'aise dans le bus, sa glycémie étant dans la normale. Iel se détend un peu malgré le retard du bus, ne sachant pas si iel arrivera à l'heure au travail. La douce oscillation du véhicule et le brouhaha apaisant des passagers endormis l'entourent, créant un cocon de tranquillité dans lequel iel se laisse volontiers envelopper.

    {temps > 12: Malgré sa glycémie stable, Zucchi ressent une pointe d'impatience alors que le bus avance lentement vers son arrêt. Le confort du véhicule est tempéré par l'urgence de la situation, iel se rongeant les ongles en regardant le trafic congestionné. Même si son état de santé est stable, l'incertitude de son retard persiste, un rappel constant de la réalité mouvante de sa condition. Iel finit par arriver au travail. ->retard_gros |{temps<6: Dans le bus, Zucchi savoure chaque instant de calme alors que le véhicule avance en douceur vers son arrêt. Sa glycémie normale lui procure un sentiment de soulagement, et iel se laisse bercer par le mouvement régulier du bus. Les pensées qui tourbillonnaient autrefois dans son esprit semblent s'être apaisées, laissant place à un sentiment de détente et de tranquillité. Malgré le retard potentiel du bus, iel apprécie ce moment de répit avant de plonger dans les tumultes de la journée de travail. En sortant du bus, après une petite marche, iel arrive devant son bureau.  ->retard_sans | Bien que sa glycémie soit stable, Zucchi ressent une légère tension alors que le bus avance à un rythme régulier vers son arrêt. Iel regarde anxieusement par la fenêtre, calculant mentalement le temps qu'il lui reste pour arriver à l'heure. Malgré le confort relatif du bus, l'ombre du retard plane toujours, une source constante de préoccupation dans l'esprit de Zucchi. Sorti·e du bus, iel se dépèche jusqu'à son bureau, et arrive enfin devant. ->retard_moyen}}

 
/* **********************Sous-chapitre 2: Début de la journée ************************* */


===retard_gros===
*[Entrer]
Iel se faufile dans le bâtiment, les yeux baissés, conscient de l'heure tardive affichée sur son téléphone. Les regards curieux et accusateurs de ses collègues le·a mettent encore plus mal à l'aise alors qu'iel essaie de se frayer un chemin jusqu'à son bureau. L'air lourd de l'incertitude pèse sur ses épaules, son esprit tourmenté par les réprimandes potentielles du patron. Arrivé·e à son poste, iel tente de se faire le plus discret possible en sortant ses dossiers et en allumant sa machine de travail. Iel s'assied et respire un grand coup : malgré toutes les difficultés du matin, le·a voici au travail !
**[Ouf]
Cependant, son soulagement est de courte durée lorsque son regard croise celui de son patron, dont le visage exprime une colère contenue. Les mots sévères du supérieur s'abattent sur ellui comme un coup de fouet, le stress montant en flèche alors qu'iel envisage les conséquences potentielles de cet énième retard. Iel tente de sortir les meilleures excuses, trop gené·e de parler de son diabète, trop fatigué·e, aussi, des potentielles explications approfondies qu'iel devra donner sur celui-ci si iel s'aventure à le mentionner.

    <subchapter> Comment Zucchi devrait-iel se justifier à son patron ? </subchapter>
    *** {velo == false}[Dire que le bus était en retard] -> exc_bus
    *** [Parler de son diabète] -> exc_diabete
    *** [Dire qu'iel ne se sentait pas bien, sans précision] -> exc_malade
    *** [Ne rien dire] -> exc_rien

        =exc_bus
            Zucchi tente de se justifier auprès de son patron en expliquant que le bus était en retard, une excuse classique mais qui semble peu convaincante dans ce contexte. Malgré ses efforts pour paraître crédible, iel sent le regard sceptique de son supérieur peser sur ellui, augmentant son malaise et sa nervosité. Iel se demande si cette explication sera suffisante pour éviter des réprimandes plus sévères. Le patron, bien qu'agacé par cette justification peu convaincante, décide finalement de ne pas approfondir la question pour cette fois-ci. Cependant, il met Zucchi en garde contre de futures excuses similaires et lui rappelle l'importance de la ponctualité et de la fiabilité au travail.
            ->retard_fin
    
        =exc_diabete
            Hésitant·e, Zucchi décide finalement de partager avec son patron la véritable raison de son retard : son diabète. Iel explique brièvement les complications de sa condition et les défis rencontrés ce matin, mais iel sent une certaine gêne à partager ces informations intimes avec son supérieur. Les mots sortent de sa bouche avec hésitation, espérant que cette révélation sera suffisante pour susciter la compréhension et l'empathie de son supérieur. Cependant, le patron semble sceptique quant à cette excuse, exprimant son agacement face à ce qu'il considère comme une justification peu convaincante. Malgré tout, il décide de laisser passer cette fois-ci, mais il prévient Zucchi que cela ne sera pas toléré à l'avenir.
            ->retard_fin
            
        =exc_malade
            Zucchi opte pour une explication vague, affirmant qu'iel ne se sentait pas bien ce matin. Iel craint d'être jugé·e ou incompris·e s'iel mentionne son diabète, préférant éviter une conversation délicate avec son patron. Malgré sa réticence, iel espère que cette explication suffira à apaiser les soupçons de son supérieur et à éviter des conséquences plus graves. Cependant, le patron semble méfiant face à cette excuse vague, exprimant son agacement devant ce qu'il perçoit comme un manque de transparence. Il laisse passer cette fois-ci, mais il met Zucchi en garde contre de futures justifications peu précises.
            ->retard_fin
            
        =exc_rien
            Zucchi décide de garder le silence sur la raison de son retard, redoutant les réactions de son patron s'iel évoque son diabète. Mais cette décision le·a laisse avec un sentiment de malaise et de frustration, sachant qu'iel n'a pas été honnête avec son supérieur et qu'iel pourrait être perçu·e comme négligent·e ou irresponsable. Le patron, bien qu'agacé par ce silence, décide de ne pas approfondir la question pour cette fois-ci. Cependant, il met Zucchi en garde contre de futures manquements à la communication et lui rappelle l'importance de la transparence et de la responsabilité dans le cadre professionnel.
            ->retard_fin
 
= retard_fin
*[Umpf]
Iel se sent déçu·e de ellui-même car la ponctualité ne semble pas être quelque chose de compliqué, du moins aux yeux des autres. Ces perceptions se rabatent sur ellui, et avec elles la culpabilité de ne pas en faire assez, de ne pas assez bien gérer sa vie, ses devoirs, sa santé. Pourtant, iel fait de son mieux, et cela constamment : le poids d'une maladie toujours présente est parfois trop difficile à gérer tout en gardant un rythme de vie aussi intense que les personnes qui n'ont pas cette charge mentale. 

**[continuer]-> midi

===retard_moyen===
*[Entrer]
Iel se faufile discrètement entre ses collègues, son cœur battant la chamade à l'idée de devoir affronter la réaction probable de son patron. Les regards désapprobateurs et les murmures étouffés de ses collègues le·a mettent encore plus mal à l'aise alors qu'iel essaie de dissimuler son retard. La tension monte en lui alors qu'iel se demande comment iel va se sortir de cette situation délicate. 

Une fois installé·e à son bureau, iel préfère rester discret·e en sortant ses dossiers et en démarrant son ordinateur. Après avoir pris place, iel inspire profondément : malgré les péripéties du matin, le·a voilà enfin prêt·e à travailler !

**[Se mettre au travail]
En commençant à lire ses mails, iel ressent sur lui le jugement de ses collègues. En vrai, iel peut les comprendre : ses difficultés quotidiennes sont principalement invisibles, et les autres doivent ressentir un sentiment d'injustice à le·a voir souvent arriver en retard. Pour les autres, être ponctuel·le semble être une évidence, mais pour ellui, c'est tout le contraire. Iel se sent accablé·e par le regard des autres et la culpabilité l'envahit, car iel se sent incapable de gérer correctement sa vie, ses responsabilités et sa santé. Malgré ses efforts constants, iel se heurte au poids persistant de sa maladie, qui rend parfois les choses insurmontables, surtout lorsqu'iel tente de suivre le rythme trépidant de celleux qui n'ont pas à porter ce fardeau mental.

***[Humpf]-> midi

===retard_sans===
*[Entrer]
Iel entre dans le bâtiment avec discrétion, espérant passer inaperçu·e pendant qu'iel se dirige vers son bureau. Le soulagement initial d'être arrivé·e à l'heure se mélange rapidement à une légère appréhension à l'idée d'expliquer à son patron sa distraction.

**[Se mettre au travail]
Installé·e à son bureau, Zucchi adresse un sourire tendu à ses collègues, tentant de dissimuler le stress persistant. Son esprit reste embrouillé par les événements du matin, tandis que les bruits du bureau semblent lointains alors qu'iel tente de reprendre ses esprits. Le regard scrutateur de son patron accroît la pression, poussant Zucchi à se concentrer davantage. Chaque geste, chaque mot est soigneusement pesé pour éviter de révéler le trouble intérieur. Les minutes s'étirent alors que l'ambiance se charge d'une légère tension.

Malgré tout, Zucchi se sent comme un funambule sur un fil, jonglant entre les exigences du travail et la gestion discrète du diabète. Chaque battement de cœur lui rappelle la nécessité de rester vigilant·e. La réalité d'une gestion souvent invisible ajoute une touche de complexité à la journée. Comment rendre visible sans en avoir honte le fait que d'arriver à l'heure constitue non seulement un exploit pour lui aujourd'hui, mais s'accompagne également de son lot de conséquences sur sa santé ?

***[Humpf]-> midi

/* **********************Sous-chapitre 3: Glycemie et midi ************************* */

===midi===

{capteur==false: ->midi_glucometre | ->midi_check_cgm}

=midi_check_cgm

Entre deux réponses de mail et quelques tâches, Zucchi consulte rapidement son téléphone pour vérifier les données de son capteur de glycémie en continu (CGM). L'écran s'illumine, révélant les chiffres qui reflètent son état intérieur. Si celui-ci fonctionne correctement, iel lui indiquera sa glycémie matinale.

* [Lire la glycémie sur le CGM] 
    {~->midi_cgm|->midi_glucometre}

=midi_cgm

Les chiffres s'affichent, dessinant un portrait de sa santé à ce moment précis. La glycémie de Zucchi est {glycemie<5:->situ_hypo_midi |{glycemie>13:->situ_hyper_midi|->situ_normale_midi}}

=midi_glucometre

{capteur==true:Zucchi constate que son CGM ne fonctionne pas correctement.| Entre deux réponses de mail et quelques tâches, Zucchi se rapelle qu'iel doit regarder sa glycemie sur son glucomètre, ayant fait le choix de partir de chez ellui sans capteur fonctionnel.} Son pouls s'accélère légèrement tandis qu'iel saisit son glucomètre dans sa poche. Iel doit donc recourir à cet outil plus traditionnel pour mesurer sa glycémie. 
~capteur=false

*[Utiliser le glucomètre] 

Zucchi ouvre la trousse de son glucomètre, installe les outils, et prends une profonde inspiration avant de piquer son doigt. Les secondes semblent s'étirer alors qu'iel attend le résultat. Les chiffres s'affichent enfin, lui révélant que sa glycémie est {glycemie<5:->situ_hypo_midi |{glycemie>13:->situ_hyper_midi|->situ_normale_midi}}

===situ_hypo_midi===

<>trop basse, plongeant son esprit dans une urgence silencieuse. Une vague de vertige menace de le·a submerger alors qu'iel prend conscience de la gravité de la situation. Les pensées se bousculent dans sa tête, cherchant frénétiquement la meilleure façon de rétablir son équilibre glycémique. Iel sait qu'iel doit agir rapidement pour éviter les complications de l'hypoglycémie, son pouls s'accélérant à mesure que l'urgence de la situation se fait sentir.

{not situ_hypo_trajet:<expl> L'hypoglycémie survient lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement bas. Cela peut se produire si trop d'insuline est injectée par rapport à la quantité de glucose consommée ou si le repas est retardé ou manqué. Les symptômes de l'hypoglycémie peuvent inclure la faim, la transpiration, les tremblements, les étourdissements et la confusion. Pour traiter l'hypoglycémie, il est recommandé de consommer rapidement des aliments ou des boissons contenant du sucre, comme du soda, des comprimés de glucose ou des bonbons. Il est également important de surveiller de près son taux de glucose sanguin pour éviter que l'hypoglycémie ne devienne grave, ainsi que d'éviter toute activité physique. En cas d'hypoglycémie sévère, les conséquences peuvent être graves, avec un risque de déséquilibre important du taux de sucre dans le cerveau, pouvant conduire à des dissociations, une perte de conscience, voire, dans les cas extrêmes, au décès. </expl>|}
*[Ok]
{petitdejsans==true: Zucchi réalise que sa glycémie basse est probablement due au fait qu'iel n'a pas eu l'occasion de manger au matin, trop accaparé·e par les obstacles rencontrés dès le début de sa journée. Les souvenirs de l'agitation matinale refont surface alors qu'iel se rappelle avoir quitté précipitamment son domicile sans prendre le temps de prendre un petit-déjeuner nourrissant. La culpabilité s'ajoute à l'anxiété qui enveloppe Zucchi alors qu'iel prend conscience que son propre oubli a contribué à cette situation précaire. Pourtant, dans ce moment de vulnérabilité, iel trouve une détermination renouvelée à surmonter cet épisode d'hypoglycémie et à prendre soin de sa santé de manière plus proactive à l'avenir.|{velo==true: Zucchi réalise que sa glycémie basse est probablement due au fait qu'iel s'est précipité·e pour se rendre au travail à vélo ce matin. Les images de la course effrénée à travers la ville lui reviennent en mémoire, le vent fouettant son visage alors qu'iel tentait de rattraper le temps perdu. Dans son empressement, iel a négligé l'importance de prendre un peu de sucre pour maintenir son taux de glucose stable. Le regret mêlé à une pointe de frustration envahit Zucchi alors qu'iel réalise que cette hâte matinale a eu des répercussions sur sa santé. Cependant, cette prise de conscience est également une opportunité pour iel de planifier plus attentivement ses déplacements et de s'accorder le temps nécessaire pour prendre soin de sa santé, même dans les moments les plus pressés. |}}

**[Soigner l'hypoglycémie]
Midi arrive, et Zucchi comprend que la meilleure chose à faire est d'anticiper sa pause repas de quelques temps. Iel se lève de son poste de travail, conscient·e des coups d'oeils curieux de ses collègues. Certains lui lancent des regards interrogateurs, se demandant pourquoi iel part si tôt en pause. Zucchi se sent exposé·e, mais priorise sa santé et se dirige vers la salle de pause.

***[Manger]
Alors que Zucchi s'assoit seul·e au refectoire, iel ressent un pincement au cœur en voyant ses collègues vaquer à leurs occupations, loin de la salle de pause. L'absence de compagnie autour de la table accentue le sentiment de solitude, renforcé par le fait que les autres semblent occupés à leurs tâches. Les chaises vides autour d'ellui résonnent comme un écho de son isolement momentané. Pourtant, même si ses collègues ne partagent pas ce repas avec ellui, leur indifférence apparente ajoute une couche supplémentaire à son sentiment d'incompréhension. Cette solitude forcée, conséquence de sa pause anticipée pour gérer son hypoglycémie, laisse un goût amer dans sa bouche, symbolisant la distance qui persiste parfois entre sa réalité et celle des autres.

Peu après, ses collègues se retrouvent pour partager un repas ensemble, riant et échangeant des plaisanteries autour de la table. Le dessert qu'une des collègues a apporté est partagé avec enthousiasme, créant un sentiment de camaraderie qui semble exclure involontairement Zucchi. Cette scène, qui aurait pu être un moment de connexion et de détente, devient pour ellui un rappel douloureux de l'écart entre sa vie et celle de ses collègues. Le fossé se creuse davantage alors que les rires résonnent dans la salle, laissant Zucchi se sentir isolé·e et incompris·e.
****[Retourner à son poste de travail]-> aprem

===situ_hyper_midi===

<> trop élevée, laissant planer sur Zucchi une ombre d'inquiétude. Un poids invisible s'installe sur ses épaules alors qu'iel réalise les implications de cette lecture. Des souvenirs de journées passées à jongler avec les fluctuations de sa glycémie affluent dans son esprit, lui rappelant l'importance cruciale de maintenir un contrôle rigoureux sur son taux de sucre sanguin. Iel prend conscience que cette hyperglycémie est attribuable à son repas sucré du matin. Déterminé à ne pas laisser cette condition perturber davantage son travail et sa vie quotidienne, iel réalise qu'iel devra surveiller de près sa glycémie tout au long de la journée pour éviter les complications de l'hyperglycémie.

{not situ_hyper_trajet:<expl> L'hyperglycémie se produit lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement élevé. Cela peut se produire si l'insuline n'est pas administrée en quantité suffisante par rapport à la quantité de glucose consommée, si les injections sont manquées ou si les réserves d'insuline deviennent inefficaces. Les symptômes de l'hyperglycémie comprennent la soif excessive, l'envie fréquente d'uriner, la fatigue, la vision floue et une sensation générale de malaise. Pour traiter l'hyperglycémie, il est recommandé de boire beaucoup d'eau pour aider à éliminer le glucose en excès dans le sang. En outre, l'administration d'insuline supplémentaire peut être nécessaire pour ramener le taux de glucose sanguin à des niveaux normaux. Il est important de surveiller de près son taux de glucose sanguin et de consulter un professionnel de la santé si les symptômes persistent ou s'aggravent. Une hyperglycémie non traitée peut entraîner des complications à long terme telles que des dommages aux vaisseaux sanguins, aux nerfs et aux organes, et nécessite une attention médicale immédiate pour éviter toute complication grave.</expl>|}

<subchapter>Midi approche, que va faire Zucchi ?</subchapter>
*[Aller manger avec ses collègues]-> midi_manger
*[Attendre que sa glycémie baisse avant de manger]-> midi_plus_tard
*[Accompagner ses collègues à la pause, sans manger]-> midi_sans

    =midi_manger
    La glycémie de Zucchi est élevée, ce qui rend son choix de repas pour la pause déjeuner plus compliqué. Iel se sent fatigué·e et affamé·e, sachant qu'iel doit faire attention à ce qu'iel mange pour contenir l'hyperglycémie.
    
    *[Choisir un plat]    
    Zucchi opte finalement pour une salade garnie, choix pauvre en sucre, conscient·e qu'iel risque d'avoir faim rapidement cet après-midi. Cependant, cela apporte un peu de réconfort à Zucchi de savoir que sa glycémie pourrait se stabiliser.
    
    **[Manger]
    Pendant le repas, il est difficile pour Zucchi de ne pas envier ses collègues qui mangent des repas qu'iel aurait tant aimé déguster. La frustration s'installe davantage lorsque l'une de ses collègues apporte un gâteau qu'elle a préparé, et que tout le monde se réunit autour pour le déguster ensemble. Cette exclusion involontaire renforce le sentiment de solitude et d'incompréhension de Zucchi face à sa santé.
    
    ***[Retourner travailler]-> aprem
    
    =midi_plus_tard
    
    Zucchi sait qu'iel doit attendre un peu avant de manger pour laisser l'insuline agir et faire baisser sa glycémie. Cependant, voir ses collègues partir manger alors qu'iel a faim est difficile à supporter. Iel se sent isolé·e et impatient·e.
    
    *[Travailler]
    La sensation de faim persiste, faisant ressentir à Zucchi une frustration croissante. Alors que ses collègues se dirigent vers la salle de pause, une vague de solitude envahit Zucchi. Iel se retrouve seul·e à son poste de travail, observant les regards complices et les conversations animées qui s'éloignent au fur et à mesure que ses collègues s'éloignent. Le sentiment d'exclusion grandit alors qu'iel se rend compte que sa condition de santé le prive d'un moment de sociabilité banal pour les autres. Les minutes semblent s'étirer alors qu'iel attend que sa glycémie baisse suffisamment pour lui permettre de manger en toute sécurité.
    
    La solitude s'installe davantage lorsque l'une de ses collègues apporte un gâteau qu'elle a préparé, et tout le monde se réunit autour pour le déguster ensemble. Zucchi se sent exclu·e de ce moment de camaraderie, conscient·e que la consommation de gâteau n'est pas une option pour ellui dans cet état. Cette exclusion involontaire renforce le sentiment de solitude et d'incompréhension de Zucchi face à sa condition de santé.
    
    **[Aller manger] 
    Finalement, la glycémie de Zucchi finit par descendre, lui permettant d'enfin se rendre au réfectoire afin de manger. Iel regarde le buffet du déjeuner, essayant de trouver quelque chose qui lui conviendra sur le plan glycémique. Iel se rend compte que la plupart des options ne sont pas adaptées pour que sa glycémie soit parfaite. Il lui faudrait un bon équilibre entre féculents, légumes et protéines, avec le moins de sucres rapides possible, et de préférence pas trop gras, car le gras a pour effet de dérégler l'ingestion du sucre et de conduire à une glycémie instable pendant plusieurs heures. Ces difficultés s'ajoutent à celles déjà rencontrées pendant ce repas, augmentant davantage la solitude et le stress de Zucchi. Iel finit par choisir un repas qui n'est pas son préféré, mais qui lui permettra de stabiliser sa glycémie pour les prochaines heures.
        ***[Retourner travailler]-> aprem
        
    =midi_sans
    Zucchi décide d'accompagner ses collègues à la pause déjeuner, même si iel ne prévoit pas de manger. Iel veut garder un lien social avec ses collègues malgré sa situation, mais cette décision n'est pas sans conséquence sur son état émotionnel et physique, d'abord parce qu'effectuant sa pause sans manger, iel ne pourra a priori pas manger ensuite. En se rendant à la salle de pause, iel ressent une vague de faim qui s'intensifie à mesure que ses collègues dégustent leurs repas. Iel observe en silence, se sentant exclu·e de ce moment de partage, même si iel sait que c'est la meilleure décision pour sa santé.
    
    *[suite]
    La pause se poursuit et l'ambiance se détend alors qu'une collègue apporte un délicieux gâteau fait maison pour partager avec l'équipe. Zucchi sent son estomac se tordre de faim à la vue de cette tentation sucrée, mais iel sait qu'iel ne peut pas se permettre de céder à la gourmandise. Iel envie ses collègues alors que'iels se régalent du gâteau, conscient·e que sa condition de santé lea prive une fois de plus de participer à un moment de convivialité.
    
    Finalement, iel décide d'acheter un pauvre sandwich qu'iel mangera à son bureau une fois que sa glycémie sera redescendue, afin de ne pas trop subir la faim pendant l'après-midi.
        **[Retourner travailler]-> aprem

===situ_normale_midi===

<> est dans la normale. Un léger sourire se dessine sur son visage, dissipant les nuages d'inquiétude qui planaient précédemment. Pour un moment, iel savoure le soulagement temporaire que lui procure cette lecture rassurante, lui permettant de commencer sa journée de travail avec un poids en moins sur les épaules. Cependant, même dans ce moment de répit, iel reste conscient des défis constants posés par sa condition et de la vigilance nécessaire pour maintenir cette stabilité glycémique.

*[Aller en pause]
Midi arrive, et Zucchi part en pause avec ses collègues afin de se restaurer. Iel regarde le buffet du déjeuner, essayant de trouver quelque chose qui lui conviendra sur le plan glycémique. Iel se rend compte que la plupart des options ne sont pas adaptées pour que sa glycémie soit parfaite. Il lui faudrait un bon équilibre entre féculents, légumes et protéines, avec le moins de sucres rapides possible, et de préférence pas trop gras, car le gras à pour effet de déregler l'ingestion du sucre et de conduire à une glycémie instable pendant plusieurs heures.

**[Choisir à manger]
Malgré la variété des plats proposés, Zucchi se trouve confronté·e à un dilemme délicat : choisir des aliments qui lui permettront de maintenir sa glycémie stable sans pour autant risquer l'hypoglycémie ou l'hyperglycémie. C'est un équilibre délicat à trouver, et Zucchi sait que le moindre écart peut avoir des conséquences importantes sur sa santé. Parfois, cette préoccupation constante le pousse à limiter sa consommation alimentaire, craignant de perturber son équilibre glycémique. Cette tendance à restreindre son alimentation, même dans des situations sociales comme celle-ci, reflète les défis particuliers auxquels les personnes atteintes de diabète de type 1 sont confrontées.

<expl>Le diabète de type 1 est souvent associé à des troubles du comportement alimentaire, tels que l'orthorexie et l'hypercontrôle alimentaire, où la personne surveille de manière excessive ce qu'elle mange pour maintenir une glycémie stable. Ces comportements peuvent parfois interférer avec une alimentation équilibrée et nuire à la qualité de vie de la personne. Pour Zucchi, cette conscience aiguë de chaque bouchée qu'iel prend et de son impact sur sa glycémie peut parfois créer un sentiment de stress et d'isolement lors des repas en groupe.</expl>

***[Ok]
Alors qu'iel s'apprête à s'injecter de l'insuline avant de commencer son repas, une collègue curieuse, l'ayant vu sortir ses aiguilles, arrive avec un flot de questions envahissantes sur le diabète. Zucchi répond poliment, mais intérieurement, iel se sent agacé·e par l'attention non sollicitée de son interlocutrice, qui pas une fois ne lui demande si iel est d'accord de répondre à toutes ces questions. Puis, un autre collègue se joint à la conversation, prétendant détenir une expertise sur la gestion du diabète en raison de l'expérience d'un membre de sa famille. Malgré ses bonnes intentions, ses explications simplistes et son ton condescendant agacent Zucchi, qui préfère éviter les conseils non sollicités sur sa condition médicale.

La pause se poursuit et l'ambiance se détend alors qu'une collègue apporte un délicieux gâteau fait maison pour partager avec l'équipe. Zucchi sent son estomac se tordre de faim à la vue de cette tentation sucrée et décide d'accepter une petite part, dans le but de ne pas trop se priver des plaisirs, d'autant plus lorsque sa glycémie est correcte. Ce gâteau le·a régale et contribue à lui redonner un peu d'énergie pour l'après-midi à venir, après toutes les complications matinales.
****[Retourner travailler]-> aprem


/* Partie B : Une journée à la maison */
/* **********************Sous-chapitre 1B: Repos mérité ************************* */

===maison===

<chapter>Chapitre 2: Une journée comme les autres</chapter>

Après un matin difficile marqué par des retards et des fluctuations de sa glycémie, Zucchi décide qu'il est préférable de ne pas se rendre au travail aujourd'hui. La fatigue accumulée et le stress persistant l'incitent à prendre soin de ellui-même avant de penser à affronter une journée complète au bureau. D'un geste décidé, iel envoie un message à son supérieur, expliquant qu'iel est malheureusement incapable de se présenter aujourd'hui en raison de problèmes de santé. Cette décision lui pèse, mais iel sait que c'est la meilleure option pour l'instant.

<subchapter>Une fois la décision prise, Zucchi se concentre sur les tâches à accomplir à la maison:</subchapter>
-> maison_quoi
===maison_quoi===
{TURNS_SINCE(->maison_quoi) >= 1 : {TURNS_SINCE(->maison_quoi) >= 2 : <i>Zucchi prend conscience de l'épuisement qui l'accable.</i> }<i>Est-ce que Zucchi va faire autre chose ?</i>}

*[Checker sa glycémie]-> maison_glycemie
*{not capteur}[Faire marcher son capteur de glycémie] -> maison_appel
*[S'occuper de son administratif médical]-> maison_admin
*[Cuisiner un bon repas de midi] -> maison_cuisiner
*{TURNS_SINCE(->maison_quoi) >= 2}[Faire une sieste réparatrice]-> maison_sieste
    =maison_appel
    Iel décide de régler le problème de son capteur de glycémie en continu (CGM) qui ne fonctionne pas correctement. Après quelques recherches en ligne, iel appelle la helpline du fabricant du CGM pour obtenir de l'aide. Après une discussion informative avec un représentant du service client, iel obtient des instructions pour réinitialiser et recalibrer son capteur. Avec un mélange de frustration et de détermination, iel entreprend les étapes nécessaires pour remettre son appareil en état de marche. {not maison_glycemie: Maintenant qu'il marche, iel peut checker sa glycémie facilement.|}
    ~capteur=true
    ->maison_quoi
    
    =maison_glycemie
    {capteur==true: Zucchi consulte son téléphone pour vérifier sa glycémie via son capteur en continu (CGM). Son pouls s'accélère alors qu'iel lit le résultat : {glycemie >= 5:->situ_hypo_maison |{glycemie >= 15:->situ_hyper_maison | ->situ_normale_maison}}| Après avoir prélevé une petite goutte de sang sur son doigt, Zucchi attend avec anxiété que son glucomètre affiche le résultat. Les secondes semblent s'étirer indéfiniment jusqu'à ce que les chiffres s'affichent enfin. Son pouls s'accélère alors qu'iel lit le résultat : {glycemie >= 5:->situ_hypo_maison |{glycemie >= 15:->situ_hyper_maison | ->situ_normale_maison}}}
    
    =situ_hypo_maison
    - Une vague de vertige submerge Zucchi alors qu'iel réalise que sa glycémie est trop basse. Les pensées deviennent confuses alors qu'iel lutte pour rester lucide. Dans un état de panique maîtrisée, iel se hâte de se rendre dans sa cuisine afin de se faire un verre de jus d'orange pour élever ses niveaux de sucre dans le sang avant que la situation ne s'aggrave. 
    
    {not situ_hypo_trajet && not situ_hypo_midi:<expl> L'hypoglycémie survient lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement bas. Cela peut se produire si trop d'insuline est injectée par rapport à la quantité de glucose consommée ou si le repas est retardé ou manqué. Les symptômes de l'hypoglycémie peuvent inclure la faim, la transpiration, les tremblements, les étourdissements et la confusion. Pour traiter l'hypoglycémie, il est recommandé de consommer rapidement des aliments ou des boissons contenant du sucre, comme du soda, des comprimés de glucose ou des bonbons. Il est également important de surveiller de près son taux de glucose sanguin pour éviter que l'hypoglycémie ne devienne grave, ainsi que d'éviter toute activité physique. En cas d'hypoglycémie sévère, les conséquences peuvent être graves, avec un risque de déséquilibre important du taux de sucre dans le cerveau, pouvant conduire à des dissociations, une perte de conscience, voire, dans les cas extrêmes, au décès. </expl>|}
    
    *{not situ_hypo_trajet && not situ_hypo_midi}[Ok]
    
    La priorité absolue est de rétablir son équilibre glycémique pour éviter les complications d'une hypoglycémie sévère. Dans le confort de chez-soi, iel a néanmoins le temps de calculer exactement la quantité de sucre qu'iel a besoin afin de guérir cette hypoglycémie sans finir par la suite en hyperglycémie. Iel se sent rassuré, même si la fragilité liée à cette glycémie se fait sentir pendant quelques minutes{not maison_cuisiner:, accompagnée de la faim qui annonce bientôt l'heure de midi.|.}
    ->maison_quoi
    
    =situ_hyper_maison
    - La glycémie de Zucchi est trop élevée. Un sentiment d'angoisse monte en ellui alors qu'iel réalise les implications de cette lecture. Les souvenirs de journées passées à jongler avec les fluctuations de sa glycémie affluent dans son esprit, lui rappelant l'importance cruciale de maintenir un contrôle rigoureux sur son taux de sucre sanguin. Iel sait qu'iel devra prendre des mesures immédiates pour abaisser sa glycémie et éviter les complications à long terme associées à l'hyperglycémie. 
    
    {not situ_hyper_trajet && not situ_hyper_midi:<expl> L'hyperglycémie se produit lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement élevé. Cela peut se produire si l'insuline n'est pas administrée en quantité suffisante par rapport à la quantité de glucose consommée, si les injections sont manquées ou si les réserves d'insuline deviennent inefficaces. Les symptômes de l'hyperglycémie comprennent la soif excessive, l'envie fréquente d'uriner, la fatigue, la vision floue et une sensation générale de malaise. Pour traiter l'hyperglycémie, il est recommandé de boire beaucoup d'eau pour aider à éliminer le glucose en excès dans le sang. En outre, l'administration d'insuline supplémentaire peut être nécessaire pour ramener le taux de glucose sanguin à des niveaux normaux. Il est important de surveiller de près son taux de glucose sanguin et de consulter un professionnel de la santé si les symptômes persistent ou s'aggravent. Une hyperglycémie non traitée peut entraîner des complications à long terme telles que des dommages aux vaisseaux sanguins, aux nerfs et aux organes, et nécessite une attention médicale immédiate pour éviter toute complication grave.</expl>|}

    *{not situ_hyper_trajet && not situ_hyper_midi}[Ok]
    
    Zucchi sort son stylo à insuline et s'injecte l'insuline après avoir pris le temps de calculer la dose nécessaire pour ramener sa glycémie à la normale. Iel ressent ensuite un mélange de soulagement et de frustration, sachant que la soif et la fatigue provoquées par cette hyperglycémie ne disparaîtront pas immédiatement. Iel prend alors une grande inspiration, se rappelant qu'iel doit rester patient·e et persévérant·e dans sa gestion quotidienne du diabète.
    ->maison_quoi
    
    =situ_normale_maison
    - Un soupir de soulagement échappe à Zucchi alors qu'iel constate que sa glycémie est normale. Cette lecture rassurante lui redonne confiance en sa capacité à gérer son diabète efficacement. Iel prend note de cette lecture et continue ses activités avec un sentiment de satisfaction et de fierté. Cependant, iel sait aussi que la vigilance est de mise, car la gestion du diabète est un équilibre délicat qui nécessite une attention constante. Zucchi se sent reconnaissant pour ces moments de stabilité, mais iel reste conscient des défis à venir et déterminé à les affronter avec résilience et détermination.
    -> maison_quoi

    =maison_admin
    Zucchi se penche sur ses tâches administratives médicales. Assis à son bureau, iel consulte son agenda pour vérifier les rendez-vous médicaux à venir. Puis, iel se tourne vers le côté plus administratif de sa gestion du diabète. Iel prend le temps de payer les factures médicales en attente, conscient de l'importance de maintenir ses traitements réguliers malgré les tracas financiers parfois associés aux soins de santé. Iel s'assure également de vérifier ses ordonnances pour renouveler ses médicaments essentiels. Un sentiment de satisfaction l'envahit lorsqu'iel constate que tout est en ordre et que ses traitements seront bien pris en charge dans les jours à venir. 
    
    Zucchi ne néglige aucun détail, vérifiant méticuleusement qu'iel dispose de suffisamment d'aiguilles, de bandelettes de test et d'autres fournitures nécessaires pour gérer son diabète au quotidien. Iel prend même le temps de faire un inventaire de son stock, notant ce qui doit être acheté lors de sa prochaine visite à la pharmacie. Chaque petit geste contribue à maintenir une routine bien établie et à assurer une gestion efficace de son diabète. Bien que ces tâches puissent sembler fastidieuses, elles sont essentielles pour assurer une gestion efficace de son diabète et maintenir sa santé à long terme. Zucchi se sent reconnaissant d'avoir pris le temps de s'occuper de ces aspects administratifs, sachant qu'ils sont la clé d'une gestion proactive de sa santé et de son bien-être.
    ->maison_quoi
    
    =maison_cuisiner
    Zucchi décide de profiter de sa journée à la maison pour préparer un repas équilibré. Alors qu'iel se dirige vers la cuisine, une vague de motivation l'envahit, alimentée par le désir de créer quelque chose de délicieux et de nourrissant. Iel ouvre les placards et le réfrigérateur, examinant les ingrédients à sa disposition avec un œil critique. Son objectif est clair : préparer un plat qui non seulement sera délicieux, mais aussi adapté à ses besoins nutritionnels spécifiques en tant que personne diabétique.

    *[Cuisiner]
    
    En puisant dans sa créativité culinaire, Zucchi commence à assembler les ingrédients avec soin. Iel coupe les légumes avec précision, mélange les épices avec attention et surveille de près la cuisson pour s'assurer que chaque élément du plat est préparé à la perfection. La cuisine se remplit bientôt des arômes alléchants du plat en préparation, apportant une touche de réconfort à la journée de Zucchi. Alors que les saveurs se mélangent et que le plat prend forme, Zucchi ressent un sentiment de satisfaction profonde. Non seulement iel prend soin de sa santé en préparant un repas équilibré, mais iel trouve également du plaisir dans le processus de création culinaire. La cuisine devient un espace de méditation active, où Zucchi peut se perdre dans les gestes répétitifs et apaisants de la préparation des aliments.

    Finalement, le plat est prêt, présenté avec soin sur une assiette. Zucchi prend une bouchée avec anticipation, savourant chaque instant du repas qu'iel a préparé avec amour et attention. C'est bien plus qu'un simple repas ; c'est un acte d'autonomisation et de soin de soi, une démonstration de la capacité de Zucchi à prendre en main sa santé et son bien-être, même dans les moments les plus difficiles.
    ->maison_quoi
    
    =maison_sieste
    Zucchi prend conscience de l'épuisement qui l'accable après une matinée tumultueuse.{maison_glycemie: Après avoir pris soin de sa glycémie| {maison_admin: Après avoir accompli ses tâches administratives|}}{maison_cuisiner: et avoir avalé un en-cas réparateur|{maison_appel: et avoir réparé son capteur|}}, iel se décide finalement à s'accorder une pause bien méritée. Guidé par un besoin urgent de repos, iel se dirige vers le canapé, qui devient aussitôt son sanctuaire. La fatigue se fait sentir dans chaque fibre de son être, et iel se laisse aller à une sieste réparatrice, espérant que quelques instants de sommeil suffiront à recharger ses batteries épuisées.
    
    Cependant, le sommeil de Zucchi est interrompu par le son strident de son téléphone portable. Son patron a laissé un message vocal, exprimant sa préoccupation quant à son absence et insistant sur son importance pour une réunion importante cet après-midi. Le cœur battant la chamade, Zucchi écoute le message, sentant le poids des responsabilités professionnelles peser sur ses épaules. Les pensées s'entrechoquent dans son esprit alors qu'iel tente de peser le pour et le contre. 
    
    *[Se rendre au travail]
    
    Malgré le désir ardent de se reposer, iel sait qu'iel doit répondre à l'appel du devoir. Sous pression, iel prend une décision rapide : iel se rendra au travail pour l'après-midi, même si cela signifie sacrifier son repos bien mérité. Zucchi part assez vite et arrive au travail malgré sa volonté de se reposer. Iel s'installe à son bureau et tente tant bien que mal de se concentrer et d'avancer sur ses tâches.
    
    -> aprem


/* Partie C : Une journée dehors */
/* **********************Sous-chapitre 1C: Repos mérité ************************* */
===dehors===

<chapter>Chapitre 2: Une journée comme les autres</chapter>

Après une matinée chaotique, Zucchi décide qu'il est préférable de prendre une pause loin du stress du bureau. Au lieu de se rendre au travail, iel opte pour une journée à l'extérieur, en compagnie de ses amis, dans l'espoir de trouver un peu de réconfort et de détente. Zucchi retrouve ses amis dans un café pittoresque en ville, où les rires et les conversations animées remplacent temporairement les soucis du quotidien. Autour d'une tasse de café fumante, iel partage ses frustrations du matin tout en écoutant les récits des autres. L'atmosphère chaleureuse et le soutien des amis contribuent à apaiser les tensions accumulées.

*[Midi arrive]
Après un moment de détente au café, Zucchi et l'une de ses amies décident de poursuivre leur journée ensemble en allant déjeuner dans un restaurant voisin. Sur le chemin, ils traversent un parc animé où les enfants jouent et les chiens se promènent. Le soleil brille au-dessus d'eux, dissipant peu à peu les nuages de souci qui planaient sur Zucchi ce matin-là. Les rires et les sourires des passants ajoutent à l'atmosphère de légèreté et de joie qui règne autour d'eux.

Au restaurant, Zucchi et son amie sont accueillis par l'odeur alléchante des plats qui s'échappent de la cuisine. Iels s'installent à une table près de la fenêtre, d'où iels peuvent observer les passants et profiter de la lumière naturelle qui baigne la pièce. Ensemble, iels parcourent le menu varié, discutant des différentes options et partageant des souvenirs de leurs précédents déjeuners ensemble. Cependant, le menu varié présente un défi pour Zucchi, qui doit naviguer avec précaution pour choisir des plats adaptés à son régime alimentaire et à son diabète. La discussion avec son amie sur les choix alimentaires devient un exercice d'équilibre entre les envies et les besoins de santé de Zucchi.

**[Examiner encore le menu]
Alors que Zucchi examine le menu, l'ombre du diabète plane sur ses décisions. Iel doit non seulement choisir des plats savoureux mais aussi prendre en compte leur impact sur sa glycémie. Choisir la bonne dose d'insuline pour accompagner son repas devient un exercice délicat. Les glucides, les graisses et les protéines de chaque plat doivent être pris en compte, et Zucchi se retrouve à faire des calculs mentaux complexes pour ajuster sa dose d'insuline en conséquence.

Après de longues délibérations, Zucchi fait son choix et commande son repas, espérant avoir fait les bons calculs pour maintenir sa glycémie dans la plage cible. Iel sait que même avec ses meilleures estimations, il y a toujours une part d'incertitude. La gestion du diabète demande une attention constante et une adaptabilité face aux situations imprévues.

***[Vérifier sa glycémie]
{capteur==false:Une fois les plats choisis, Zucchi doit faire face à un autre défi : vérifier sa glycémie en l'absence de son capteur de glycémie en continu (CGM). Avec un sentiment d'appréhension, iel sort son glucomètre et effectue le test, espérant que ses choix alimentaires n'auront pas d'impact négatif sur sa glycémie. Le soulagement envahit Zucchi lorsqu'iel découvre que sa glycémie est dans la plage cible, malgré les incertitudes de la matinée.| Une fois les plats choisis, Zucchi regarde son téléphone afin de vérifier où en est sa glycémie. Le soulagement envahit Zucchi lorsqu'iel découvre que sa glycémie est dans la plage cible, malgré les incertitudes de la matinée.}

<> Iel peut alors savourer tranquilement son repas tout en continuant à parler de tout et de rien avec son amie. Cette journée renégociée ne pourrait être meilleure, et lui permet l'espace de quelque temps d'oublier toutes les charges qui lui pèsent dessus.

****[Aller se promener]
Après avoir passé du temps à savourer leur repas, Zucchi et son amie décident de se promener dans le quartier, explorant les rues et les boutiques locales. Iels s'arrêtent devant une librairie indépendante, où Zucchi prend le temps de feuilleter les derniers titres et de choisir un livre qui l'intéresse. Son amie l'encourage à prendre soin d'ellui et à profiter de ce moment de détente loin des soucis du quotidien.

Cependant, la tranquillité de l'après-midi est brusquement interrompue par un appel inattendu de son patron. L'urgence dans la voix de son supérieur et l'insistance pour qu'iel se présente au travail pour l'après-midi plongent Zucchi dans un dilemme. Sous la pression de ses responsabilités professionnelles, iel prend une décision rapide : iel se rendra au travail, mettant ainsi fin à cette journée d'évasion et de répit.
*****[Se rendre au travail]-> aprem

/* **********************Sous-chapitre 4: Fatigue de l'aprèm ************************* */

===aprem===
Alors que l'après-midi s'étire devant ellui, Zucchi s'enfonce confortablement dans son fauteuil, laissant ses muscles se détendre lentement. Le tic-tac régulier de l'horloge murale remplit l'air, tandis que les rayons du soleil jouent à travers les rideaux, créant des motifs dansants sur le sol. Une légère brise souffle à travers la fenêtre entrouverte, apportant avec elle le doux parfum des fleurs du jardin. Malgré le calme apparent, l'anticipation de ce que l'après-midi réserve pèse sur l'esprit de Zucchi, lui rappelant que chaque instant de répit est précieux dans sa lutte contre le diabète.
{capteur==false: Chaque pause est l'occasion de vérifier sa glycémie, même si cela signifie devoir recourir à des méthodes manuelles plus laborieuses. ->aprem_glucometre|{maison: ->aprem_capteur|->aprem_capteur_fail}}

=aprem_capteur_fail
Alors que Zucchi se plonge dans les tâches de l'après-midi, une alerte discrète sur son téléphone attire son attention. Le capteur de glycémie, un élément crucial de sa routine de gestion du diabète, semble rencontrer des problèmes. Une vague de préoccupation s'empare de Zucchi, qui réalise l'importance de cette technologie pour maintenir un contrôle efficace de sa glycémie. Les fluctuations imprévisibles rendent difficile l'interprétation des données, et Zucchi se retrouve à jongler avec l'anxiété croissante que cela génère. Sans ces informations précieuses, iel se sent vulnérable, comme privé·e d'un outil essentiel pour naviguer en toute sécurité dans sa journée. Une vérification avec son glucomètre est donc nécessaire pour s'assurer que tout est sous contrôle.

->aprem_glucometre

=aprem_capteur
Zucchi décide de vérifier son capteur de glycémie en continu (CGM) pour s'assurer que tout fonctionne correctement. 

*[regarder son téléphone]

Avec une pointe d'anxiété, iel consulte rapidement l'écran de son téléphone où s'affichent les données du capteur. À sa grande satisfaction, les chiffres reflètent un état de santé stable. La glycémie de Zucchi est dans la normale, ce qui lui apporte un soulagement bienvenu après une matinée compliquée.

Dans un monde où chaque décision peut avoir un impact sur sa santé, chaque instant de normalité est précieux pour Zucchi. Avec le capteur en bon état de marche, iel peut envisager l'après-midi avec un optimisme renouvelé.
->aprem_fin

=aprem_glucometre

*[Prendre sa glycémie au glucomètre]

Zucchi trouve un coin tranquille pour effectuer cette tâche, mais le stress persiste. Chaque chiffre affiché sur le glucomètre est scruté avec attention, chaque variation de quelques points est ressentie comme une montagne russe émotionnelle. Sa glycémie est normale, mais le non-fonctionnement de son CGM ne lea rassure pas, car il lui est impossible de suivre l'évolution de sa glycémie autrement qu'en prenant régulièrement le temps de faire des mesures. ->aprem_fin

=aprem_fin
*[se remettre à ses tâches]
Entre les moments de check-up glycémique, Zucchi se concentre sur ses tâches professionnelles, mais la présence constante du diabète dans son esprit ne s'estompe jamais vraiment. Les collègues vont et viennent, absorbés par leurs propres préoccupations, tandis que Zucchi jongle avec une réalité invisible pour la plupart.

Le stress monte en flèche lorsque les responsabilités professionnelles s'accumulent, accompagnées du poids constant de la gestion du diabète. Dans ce tourbillon d'obligations et d'émotions, Zucchi trouve néanmoins une force intérieure pour continuer à avancer. Chaque journée est une lutte, mais aussi une victoire. La persévérance et la détermination deviennent les alliées indispensables de Zucchi dans son combat quotidien pour une vie équilibrée malgré les défis du diabète.

-> soiree
/* **********************Sous-chapitre 4: Fin de la journée ************************* */
===soiree===

*[Finir la journée]

Après une journée mouvementée et parsemée de défis, Zucchi se retrouve enfin face à la fin de sa journée de travail. Les dernières heures se sont écoulées lentement, chaque minute marquée par une lutte constante contre la fatigue et les exigences professionnelles. Malgré les obstacles, Zucchi a persévéré, faisant preuve d'une résilience impressionnante face aux défis du diabète et du quotidien.

Alors que Zucchi éteint son ordinateur et rassemble ses affaires, un sentiment de soulagement l'envahit. La perspective de rentrer chez lui apporte un réconfort bienvenu après une journée éprouvante. Les lumières du bureau s'estompent lentement, et Zucchi prend une profonde inspiration, laissant échapper le poids du stress accumulé.

**[Quitter le bureau]

En quittant le bureau, Zucchi est accueilli par la douce lueur du crépuscule qui enveloppe la ville. Les rues animées semblent moins chaotiques maintenant, offrant un contraste apaisant avec l'agitation de la journée. Le trajet de retour à la maison est ponctué par le bourdonnement régulier des voitures et le brouhaha lointain des passants, créant une toile de fond familière pour la routine quotidienne.

Arrivé chez ellui, Zucchi laisse échapper un soupir de soulagement en franchissant le seuil de sa porte. Le foyer chaleureux offre un havre de paix après les turbulences de la journée. Dans la tranquillité de son sanctuaire personnel, Zucchi trouve enfin un moment de répit, loin du tumulte du monde extérieur. Très vite, après avoir reçu un message d'une amie, Zucchi se retrouve confronté à un choix délicat, une décision qui influencera le reste de sa soirée. 

***[Faire un choix]

D'un côté, ses amis l'attendent dans un café animé en ville, prêts à partager un verre et à décompresser après une longue journée. D'un autre côté, Zucchi ressent le besoin impérieux de se remettre de ses émotions, de prendre du temps pour lui-même et de se ressourcer. De plus, iel doit songer au diner, n'ayant probablement pas le temps de cuisiner un repas de qualité si iel va en ville.

<subchapitre>Alors, que devrait faire Zucchi de sa soirée?</subchapitre>
****[Aller vite rejoindre ses amis] -> soiree_vite
****[Avaler un truc rapide avant de rejoindre ses amis] -> soiree_manger
****[Rester à la maison et se reposer] -> soiree_repos

/* Partie A : Manger plus tard */
===soiree_vite===

<chapter>Chapitre 3: Quelle soirée !</chapter>

Pressé par l'excitation de retrouver ses amis après une journée mouvementée, Zucchi quitte précipitamment son domicile, laissant derrière ellui les tracas de la journée sans prendre le temps de s'occuper de sa santé. La promesse d'une soirée agréable en compagnie de ses proches l'emplit d'une énergie nouvelle alors qu'iel se dirige vers le bar où ses amis l'attendent déjà.

*[Se rendre au bar]

À son arrivée, Zucchi est accueilli par une cacophonie joyeuse de musique et de rires. Le bar est illuminé par une douce lumière tamisée et l'ambiance est électrique, chargée d'anticipation et de camaraderie. Un sourire se dessine sur le visage fatigué de Zucchi alors qu'iel s'approche du groupe, ressentant un profond soulagement d'être enfin parmi les siens.

Cependant, au moment de commander une boisson, la réalité lea rattrape. Zucchi réalise qu'iel n'a pas pris le temps de vérifier sa glycémie avant de quitter la maison. Un frisson d'anxiété parcourt son corps alors qu'iel {capteur==true:sort son téléphone, redoutant ce qui s'affichera et qui pourrait compromettre sa soirée tant attendue.|sort son glucomètre, redoutant le résultat qui pourrait compromettre sa soirée tant attendue.}

{glycemie < 7 : ->situ_hypo_bar| ->situ_hyper_bar} 
    
 ===situ_hypo_bar===
 
 *[Checker sa glycémie]
 
    Le visage de Zucchi se crispe alors qu'iel découvre avec inquiétude que sa glycémie est trop basse, une sensation de désarroi l'envahissant face à cette situation imprévue. Regrettant de ne pas avoir pris de sucre avec ellui dans sa hâte de rejoindre ses amis, Zucchi se tourne rapidement vers le barman pour demander un sirop sucré, espérant élever ses niveaux de glucose au plus vite. Un sentiment de maladresse l'envahit alors qu'iel réalise que son hypo est probablement due à l'heure du repas, regrettant de ne pas avoir anticipé cette situation. Commandant également quelque chose à manger au bar pour stabiliser sa glycémie, Zucchi sait que cette option sera coûteuse et peu nutritive.
    
    {not situ_hypo_trajet && not situ_hypo_midi:<expl> L'hypoglycémie survient lorsque le taux de glucose dans le sang d'une personne atteinte de diabète de type 1 devient anormalement bas. Cela peut se produire si trop d'insuline est injectée par rapport à la quantité de glucose consommée ou si le repas est retardé ou manqué. Les symptômes de l'hypoglycémie peuvent inclure la faim, la transpiration, les tremblements, les étourdissements et la confusion. Pour traiter l'hypoglycémie, il est recommandé de consommer rapidement des aliments ou des boissons contenant du sucre, comme du soda, des comprimés de glucose ou des bonbons. Il est également important de surveiller de près son taux de glucose sanguin pour éviter que l'hypoglycémie ne devienne grave, ainsi que d'éviter toute activité physique. En cas d'hypoglycémie sévère, les conséquences peuvent être graves, avec un risque de déséquilibre important du taux de sucre dans le cerveau, pouvant conduire à des dissociations, une perte de conscience, voire, dans les cas extrêmes, au décès. </expl>|}
    
        **{not situ_hypo_trajet && not situ_hypo_midi}[Manger]
     
    Après avoir avalé le petit encas et s'être rétabli de son hypoglycémie, la soirée du Zucchi peut enfin commencer. Ses amis sont déjà dans l'extase de la soirée, et bientôt, iel se retrouve entraîné dans une série de conversations animées, ponctuées par des éclats de rire et des gestes théâtraux. Les verres s'entrechoquent, la musique vibre dans l'air, et Zucchi se sent vivant, libéré des soucis de la journée.
 ->bar
 
 ===situ_hyper_bar===
 
  *[Checker sa glycémie]
  
    Un soupir de déception s'échappe des lèvres de Zucchi alors qu'iel prend conscience qu'iel ne peut pas se permettre de prendre une bière comme iel l'aurait souhaité. Une pointe de frustration s'installe alors qu'iel opte plutôt pour un cola zéro, la seule option non sucrée disponible au bar. Le choix est amer, mais Zucchi sait que c'est la décision la plus sage pour sa santé. Pourtant, l'idée de devoir s'injecter de l'insuline dans un environnement aussi festif lui semble inconfortable et inopportun.
    
    <expl>La consommation d'alcool présente des défis supplémentaires pour les personnes atteintes de diabète de type 1, nécessitant une vigilance accrue et une gestion rigoureuse de leur santé glycémique. En plus de son impact sur la glycémie, l'alcool peut altérer la capacité du corps à réguler le glucose dans le sang, ce qui nécessite une surveillance étroite de la glycémie. Les boissons alcoolisées, souvent riches en sucre, peuvent entraîner des fluctuations importantes de la glycémie, conduisant à des hyperglycémies mais aussi des hypoglycémies. De plus, l'effet de l'alcool sur le corps peut masquer les symptômes d'une glycémie basse, augmentant le risque d'hypoglycémie non détectée. En état d'ivresse, il est fréquent que les personnes oublient de surveiller leur taux de sucre sanguin, ce qui peut engendrer des complications graves liées au diabète. </expl>
        
        **[S'injecter de l'insuline]
        
    Iel s'isole pour s'injecter calmement l'insuline, et rejoint vite ses amis déjà pris dans l'extase de la soirée. Bientôt, iel se retrouve entraîné dans une série de conversations animées, ponctuées par des éclats de rire et des gestes théâtraux. Les verres s'entrechoquent, la musique vibre dans l'air, et Zucchi se sent vivant, libéré des soucis de la journée. Cependant, peu à peu, un mal de tête fait son apparition et vient bousculer ses plans d'amusement. L'hyperglycémie l'atteint et s'accumulant au poids de la journée déjà passée, Zucchi se sent exténué. Que devrait-il faire ? 
    ->bar_choix

/* Partie B : Manger vite */
===soiree_manger===

<chapter>Chapitre 3: Quelle soirée !</chapter>

Pressé par l'excitation de retrouver ses amis après une journée mouvementée, Zucchi décide d'avaler rapidement un repas avant de se diriger vers le bar en ville. Iel sait que ce n'est pas l'idéal pour son diabète, mais dans l'urgence, c'est mieux que rien. Alors, iel avale rapidement un repas peu appétissant mais nourrissant, s'assurant ainsi d'avoir mangé quelque chose pour stabiliser sa glycémie. Une fois son estomac sommairement rempli, iel se rue vers le bar, impatient de retrouver ses amis et de profiter de l'atmosphère festive qui l'attend.

*[Se rendre au bar]

À son arrivée, Zucchi est enveloppé par le tourbillon d'excitation et de rires qui règne dans le bar. Ses amis l'accueillent chaleureusement, et bientôt, iel se retrouve entraîné dans une série de conversations animées, ponctuées par des éclats de rire et des gestes théâtraux. Les verres s'entrechoquent, la musique vibre dans l'air, et Zucchi se sent vivant, libéré des soucis de la journée.
->bar

===bar===

*[Profiter de la soirée]

Cependant, au fil des heures et des verres, l'euphorie de la soirée commence à prendre le pas sur la prudence. Zucchi se laisse emporter par l'ambiance festive, oubliant momentanément les exigences de son diabète. Les bières coulent à flots, et dans l'ivresse de l'instant, il perd le compte de sa consommation. Mais alors que la nuit avance, une sensation de malaise sourd commence à émerger.

<expl>La consommation d'alcool présente des défis supplémentaires pour les personnes atteintes de diabète de type 1, nécessitant une vigilance accrue et une gestion rigoureuse de leur santé glycémique. En plus de son impact sur la glycémie, l'alcool peut altérer la capacité du corps à réguler le glucose dans le sang, ce qui nécessite une surveillance étroite de la glycémie. Les boissons alcoolisées, souvent riches en sucre, peuvent entraîner des fluctuations importantes de la glycémie, conduisant à des hyperglycémies mais aussi des hypoglycémies. De plus, l'effet de l'alcool sur le corps peut masquer les symptômes d'une glycémie basse, augmentant le risque d'hypoglycémie non détectée. En état d'ivresse, il est fréquent que les personnes oublient de surveiller leur taux de sucre sanguin, ce qui peut engendrer des complications graves liées au diabète. </expl>

<subchapter> Que devrait-faire Zucchi ? </subchapter>
  **[Vérifier sa glycémie rapidement] -> bar_glycemie
  **[Continuer à profiter de la soirée sans vérifier sa glycémie] -> bar_sans_glycemie

===bar_glycemie===
Zucchi vérifie sa glycémie et respire un soupir de soulagement en découvrant qu'elle est dans la plage cible. Iel continue alors à profiter de la soirée en toute tranquillité d'esprit, sachant qu'iel a pris soin de sa santé.
-> bar_choix
===bar_sans_glycemie===
Zucchi décide d'ignorer momentanément sa glycémie afin de continuer à profiter de la soirée. 
-> bar_choix

===bar_choix===
<subchapter>Où aller maintenant ?</subchapter>
  *[Rejoindre ses amis pour danser] -> bar_danser
  *(crush){bar_sans_glycemie}[Engager une conversation avec une personne inconnue] -> bar_rencontre
  *[Prendre un moment pour se reposer seul] -> bar_repos

=bar_danser
Zucchi se mêle à la foule et se lance sur la piste de danse avec ses amis. Iels rient, dansent et s'amusent ensemble, créant de jolis souvenirs. Les notes de musique les emportent dans un tourbillon de mouvements spontanés, alors qu'iels se laissent porter par l'atmosphère festive de la soirée. Les conversations joyeuses et les éclats de rire résonnent autour d'eux, ajoutant une touche de légèreté à leur soirée. Ensemble, iels profitent de l'instant présent, savourant chaque moment passé ensemble dans cette ambiance animée. {situ_hyper_bar: Zucchi se sent tout de même de plus en plus exténué, et iel se demande à quel point rester tard au bar est une bonne idée pour sa santé.|}
->bar_choix

=bar_rencontre
Alors qu'iel se fraye un chemin à travers la foule pour se procurer {situ_hyper_bar: un verre d'eau|une nouvelle boisson}, Zucchi remarque une silhouette intrigante au bar. Le regard captivé par cette personne mystérieuse, Zucchi se décide à entamer la conversation, dans l'attente de l'attention d'un serveur. Cette personne que Zucchi trouve très attirante se prénome Eros. Iels échangent des anecdotes, des rires et peut-être même des numéros de téléphone. Le charme de cette rencontre fortuite imprègne la soirée d'une ambiance particulière, faite de mystère et de curiosité. Une fois qu'Eros est retourné.e vers ses amis, Zucchi ressent une douce impatience à l'idée de retrouver cette personne captivante plus tard dans la soirée, laissant planer le parfum délicat de l'inconnu dans l'air. {situ_hyper_bar: Iel sait cependant qu'iel ne devrait pas tarder à rentrer.|}
->bar_choix

=bar_repos
Zucchi trouve un coin calme dans le bar où iel peut s'asseoir et se reposer un moment. Iel profite de ce moment de tranquillité pour réfléchir et se ressourcer, loin de l'agitation de la foule. 

{situ_hyper_bar: Cette brève pause lui fait réaliser à quel point il est temps de rentrer pour ellui. Cette soirée n'était peut-être pas aussi longue qu'iel l'aurait voulu, mais le volume de la musique et ces flashs lumineux ont eu raison d'ellui.|Un picotement familier le tire brutalement de son état d'ivresse. Zucchi réalise avec inquiétude qu'iel doit agir rapidement pour contrôler sa glycémie, qui monte en flèche. Malgré le brouhaha du bar bondé, iel ouvre son sac pour prendre son stylo à insuline et s'injecter. C'est un geste délicat, lui donnant un air presque clandestin dans cet environnement où iel attire de nombreux regards, mais Zucchi sait que c'est crucial pour sa santé à long terme.}

<subchapter> Que devrait-faire Zucchi ? </subchapter>
  *{not situ_hyper_bar}[Retourner auprès de ses amis] -> bar_amis
  *[Rentrer chez ellui pour se reposer] -> bar_rentrer_tot

=bar_rentrer_tot
Fatigué·e mais soulagé·e, Zucchi rentre chez lui après une soirée mouvementée, sachant qu'iel a pris des risques en gérant sa glycémie dans un environnement aussi chaotique.{situ_hyper_bar: S'endormant rapidement en sautant le repas, Zucchi se sent tout de même reconnaissant pour les moments précieux partagés avec ses proches, malgré les défis rencontrés en cours de route.|Pourtant, malgré les défis rencontrés, iel ne peut s'empêcher de sourire en repensant aux moments de complicité partagés avec ses amis.} Ces souvenirs resteront gravés dans sa mémoire, même lorsque la lumière du jour chassera les ombres de la nuit.
->fin

=bar_amis
Zucchi retourne auprès de ses amis, leur expliquant brièvement la situation. Iels comprennent et lui apportent leur soutien, promettant de passer le reste de la soirée ensemble dans une atmosphère de camaraderie et de solidarité. 

*[Continuer la soirée]

Au fil de la soirée, Zucchi s'amuse tout en tentant de dépasser le sentiment de fatigue et de soif causé par l'hyperglycémie, qui tarde à se dissiper. Sur la piste de danse, Zucchi se laisse emporter par la musique, retrouvant une énergie insoupçonnée. {crush:C'est alors qu'iel distingue Eros au loin, toujours aussi captivant·e. Zucchi décide de se rapprocher subtilement d'ellui, avec la complicité de ses amis. Eros l'aperçoit, et iels s'approchent lentement l'un·e de l'autre, au rythme envoûtant de la musique. Eros s'avance et glisse à l'oreille de Zucchi : "tu es très belleau". Alors qu'iel revient en face de Zucchi, leurs regards se croisent et sont si proches que Zucchi peut admirer la profondeur de ses magnifiques yeux bruns, mystérieux et enivrants. Leurs souffles qui se mêlent et le jeu de lumière crée une atmosphère envoutante, les secondes semblant s'étirer indéfiniment. Lorsque les basses de la musique ralentissent, la tension entre elleux se transforme en un aimant et leurs lèvres se rapprochent jusqu'à ne faire plus qu'une. |Au loin, une figure attire son attention, une présence qui semble rayonner d'une aura captivante. Intrigué·e, Zucchi décide de s'approcher avec discrétion, curieux·se de découvrir qui se cache derrière ce visage mystérieux. Lentement, iels se rapprochent l'un·e de l'autre, guidé·es par la complicité tacite de la piste de danse. Leurs regards se croisent brièvement, déclenchant une étincelle de curiosité dans les yeux de Zucchi. Dans cette atmosphère festive, le temps semble ralentir, offrant à Zucchi l'occasion de savourer chaque instant de cette rencontre inattendue. Au rythme entraînant de la musique, iels dansent ensemble, échangeant des gestes timides et des rires complices. Et tandis que la soirée avance, la tension entre elleux se transforme en une promesse silencieuse d'aventure et de nouvelles rencontres.} 
->bar_rentrer_tard

=bar_rentrer_tard

*[Rentrer à la maison]

Zucchi rentre tard chez ellui après une soirée bien remplie. Les émotions de la nuit tourbillonnent encore dans son esprit alors qu'iel s'endort, reconnaissant pour les moments précieux partagés avec ses amis et cette nouvelle rencontre.

-> fin


/* Partie C : se reposer */
===soiree_repos===

<chapter>Chapitre 3: Quelle soirée !</chapter>

Dans un moment de lucidité après une journée éreintante, Zucchi décide finalement de rester chez lui pour se reposer. Une soirée tranquille semble être exactement ce dont iel a besoin pour recharger ses batteries. Après tout, ses amis comprendront sûrement, même si une pointe de regret persiste dans un coin de son esprit. Zucchi se sent enveloppé par le calme réconfortant de son chez-soi. 

*[Cuisiner un bon repas]

Iel prend le temps de préparer un repas nourrissant, choisi avec soin pour répondre aux besoins de son corps et apaiser son esprit fatigué. Pendant que les saveurs se mélangent dans la cuisine, Zucchi se permet un moment de pause, écoutant le silence paisible qui règne autour de lui.

Avec un plat fumant devant lui, Zucchi se blottit dans son canapé, enveloppé dans une couverture douce. Iel choisit un film apaisant, laissant les images douces et les dialogues calmes l'emporter dans un monde de fiction momentané. Entre deux scènes, iel prend le temps de faire un peu d'administration pour son diabète, vérifiant sa glycémie et ajustant son traitement si nécessaire. C'est un rituel rassurant, un moment où iel peut prendre soin d'ellui-même en toute tranquillité.

La soirée s'étire lentement, et Zucchi se sent de plus en plus détendu à mesure que les heures passent. L'odeur réconfortante de la nourriture, le murmure apaisant du film, tout contribue à créer une atmosphère de sérénité. 

**[S'endormir paisiblement]

Bientôt, la fatigue se fait sentir, et Zucchi se glisse sous les draps, accueillant le sommeil qui l'attend avec impatience. Dans le silence paisible de sa chambre, Zucchi s'endort rapidement, son corps reposé et son esprit apaisé. 
-> fin

/* **********************FIN ************************* */

=== fin ===
*[<b>Fin</b>]
TODO: ajouter un lien incorporé dans "continue" pour accéder à la fin
TODO: formatter en boucle
<strong><i>Merci d'avoir consacré du temps à 'Équilibre au Quotidien'. Vous avez maintenant une compréhension approfondie des défis quotidiens auxquels sont confrontées les personnes atteintes de diabète de type 1, et de la nature continue de cette gestion. Nous espérons que cette histoire vous a démontré l'importance du soutien envers celleux qui vivent avec le diabète. Envisagez de sensibiliser et d'éduquer les autres sur cette condition. C'est ainsi que nous pouvons tous contribuer à faire la différence. Sur le diabète – mais pas seulement.</i></strong> -> END
