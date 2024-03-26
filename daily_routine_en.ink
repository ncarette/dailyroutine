# author: Noé Carette
# theme : 

<warning> <a href="https:\/\/www.verywellhealth.com/type-1-diabetes-overview-3289655" target="_blank">Type 1 diabetes</a> is a serious autoimmune chronic disease. It occurs in people whose immune defenses, for unknown reasons, destroy the cells in the pancreas that create insulin. Insulin is essential for humans: It allows the glucose in our blood to enter our cells and fuel our bodies. Consequently, diabetes can cause hypoglycemia, when there is not enough glucose in the blood, and hyperglycemia, when there is too much. These two phenomena, taken to extremes in duration or intensity, can cause serious complications, up to and including death. This constant danger for the diabetic translates into a constant mental burden, which often weighs on everyday life. This fiction proposes to illustrate it.</warning> 

<strong><i>This story aims to raise awareness about the difficulties of managing type 1 diabetes, please keep in mind that the experience is not the same for everyone and that diabetes can be managed.</i></strong>

/* **********************Sub-chapter 1: incipit************************* */

VAR time=0
VAR bloodsugar=0
VAR comfort=0
VAR anxiety=0
VAR happiness=0

VAR breakfastskip = false
VAR packrushed = false

*[<b>Start the story</b>]

<chapter>Chapter 1: A Rough Start</chapter>

The alarm clock blares, jolting Zucchi from their slumber. <a onclick="CreateDialogBox()">They</a> groggily reach over and silence it, rubbing the sleep from their eyes. As they sit up, they notice the dull ache of fatigue in their bones, a feeling that's all too familiar. They are living with type 1 diabetes, and they know that this is going to be another day of constant balancing.
    **[Get up !]

Zucchi reaches for their phone on the nightstand and looks at their blood sugar levels on the CGM app. 

<expl>A <a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/managing-diabetes/continuous-glucose-monitoring" target="_blank">CGM</a> is a Continuous Glucose Monitor, a tiny sensor inserted under the skin that wirelessly displays every few minutes the blood glucose levels, also called blood sugar, thanks to a transmitter. It is then showed on a monitor that is often the user's own phone. The cost of a CGM is high and Swiss insurance companies only refund CGMs under certain restrictive conditions, not for all diabetics. </expl> 

It's a little low, they know that they need to eat something, but they're running late for work and don't have much time. They feel stressed and frustrated.
    ***[So, what about breakfast?] -> Breakfast


/* **********************Sub-chapter 2: breakfast************************* */

===Breakfast===

Zucchi contemplates their breakfast options. A bowl of cereal sounds tempting, but they know that it would cause their blood sugar levels to spike. Making something healthier, like scrambled eggs and spinach, would take too much time, and they're already running late for work. Skipping breakfast altogether, would cause their blood sugar levels to drop later in the morning.

<subchapter>What will Zucchi do for breakfast?</subchapter>

* [Eat a low-carb breakfast, but be late for work] -> breakfast_low_carb
* [Grab a quick bowl of cereal] -> breakfast_cereal
* [Skip breakfast] -> breakfast_skip

=breakfast_low_carb
~ time += 3
Zucchi takes the time to make a healthy breakfast, opting for scrambled eggs and spinach. The savory aroma of the eggs wafts through the kitchen, making Zucchi's stomach grumble with hunger. As they eat, they feel a sense of satisfaction knowing that they are making a good choice for their health. However, as they check the time, they realize that they are running late for work. Their heart races with anxiety and frustration, knowing that they have to choose between their health and punctuality. They feel a sense of guilt as they continue to prepare for this day, determined to make it to work on time.

    -> Finalbreakfast

=breakfast_cereal
~ time += 1
Zucchi pours a bowl of cereal, the colorful and crunchy cereal pieces look inviting. As they pour the milk and add the sugar, the sweet aroma of the cereal fills the room. As they take the first bite, the sweetness and crunchy texture of the cereal is satisfying. However, as they finish the bowl, they start to feel sluggish and heavy. They check their blood sugar level, it's high. They realize that the cereal has caused their blood sugar levels to spike. They have to take more insulin than they planned and they have to constantly monitor their blood sugar. They feel guilty and frustrated about not making healthier choices. They're running late for work now and feel stressed.

<expl> Type 1 diabetics must take <a href="https:\/\/www.niddk.nih.gov/health-information/diabetes/overview/insulin-medicines-treatments" target="_blank">insulin</a> because their pancreas does not make it on its own. They need to take insulin several times during the day, including when they eat and drink, to control their blood glucose level. There are different ways to take insulin. They can use a needle and syringe, an insulin pen, or an insulin pump. Pump and pens are more expensive, but are refunded by Swiss insurance companies.</expl>
    *[Ok.]-> Finalbreakfast

=breakfast_skip
~ breakfastskip = true
Zucchi skips breakfast altogether feeling the pressure of time and the stress of being late for work. They quickly check their blood sugar level and it's dangerously low. They feel lightheaded, anxious, and unsure of what to do next. Their stomach growls with hunger, and they feel weak. The thought of dealing with hypoglycemia during work fills them with dread and guilt. They know that skipping breakfast has consequences on their blood sugar level, and they must make a decision on how to address it.

<subchapter>How will Zucchi address their low blood sugar?</subchapter>
            ** [Take the time to check with the glucometer]-> check_glucometer
            ** [Take some sugar quickly]->quick_sugar

            =check_glucometer
            ~ time += 2
            
            Zucchi takes the time to check their blood sugar level with the glucometer and carefully calculates the right amount of sugar they need. They feel a sense of relief as they take the sugar, knowing that they have addressed their low blood sugar level. However, as they check the time, they realize that they are running very late for work. They feel stressed and frustrated about having to make a choice between their health and punctuality.

            <expl> A <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood. Therefore, when blood sugar values seem critical, it is important to use a glucometer to check what your body is feeling and what the much less reliable CGM is telling you.</expl>
            
                *[Ok.]->Finalbreakfast
        
            =quick_sugar
                        
            Zucchi quickly takes some sugar. They feel a sense of urgency but also worried about taking too much or too little sugar. They still feel lightheaded and a bit uncertain about their blood sugar levels, because they did not check it with a glucometer.
            
            <expl> A <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood. Therefore, when blood sugar values seem critical, it is important to use a glucometer to check what your body is feeling and what the much less reliable CGM is telling you.</expl>

                *[Ok.]->Finalbreakfast

===Finalbreakfast===
Breakfast is a crucial part of managing diabetes, but it can also be a source of stress and frustration, especially when time is a factor. Zucchi has to balance the need to eat a healthy breakfast with the reality of their busy schedule, and this can be a difficult task, with consequences. In their daily routine, Zucchi always needs to make choices and experience the consequences of those choices, which may or may not take up a lot of mental space.

*[Now, it is time to pack]
    -> Packing


/* **********************Sub-chapter 3: packing ************************* */

===Packing===

Zucchi starts to get ready for the day, but before leaving the house, they need to start packing their diabetes supplies. They have to make sure they have enough insulin for the day with them, in case of hyperglycemia or if they need to eat, but also enough glucose, in case of hypoglycemia, like soda, glucose tablets, or everything that has a big concentration of glucose while being easily ingested and transportable. 
    *[Oh]

They should check their insulin in the refrigerator and make sure they have enough for the next couple of days, because soon is the week-end, and the pharmacy will be closed. They feel anxious and stressed about the possibility of running out of insulin or glucose during the day or following days.They are always worried they'll forget something important, so they double check everything.

<subchapter>What will Zucchi pack? What will Zucchi do to make sure they don't run out of supplies?</subchapter>
    -> what_to_pack

===what_to_pack===
{TURNS_SINCE(->what_to_pack) >= 1 : {TURNS_SINCE(->what_to_pack) >= 3 : <i>Zucchi realizes all this preparation is taking quite a long time as they are running late.</i> }<i>Will Zucchi pack anything else ?</i>}

* (glucose){not soda}[Bring extra glucose tablets] -> extra_glucose
* (soda)[Bring extra soda] -> extra_soda
* (checkinsulin)[Check their insulin pen] -> check_insulin
* (checkinsulinfridge){checkinsulin}[Check the insulin in the fridge] -> check_insulin_fridge
* (extrainsulin)[Bring an extra insulin pen] -> extra_insulin
* {TURNS_SINCE(->what_to_pack) == 0}[Pack rushed] -> pack_rushed
* {TURNS_SINCE(->what_to_pack) >= 1}[Do nothing more] -> do_nothing_more

=extra_glucose
~ time += 1
Zucchi brings extra glucose tablets, just in case. They feel relieved but also frustrated that they have to think about things like this just to leave the house. They feel depressed at the thought of potentially having to eat the glucose tablets again in case of hypoglycemia. Over time, it has really become disgusting.
    ->what_to_pack

=extra_soda
~ time += 1
Zucchi looks in the fridge for soda, but find none. They have to go to grocery soon. {not glucose: -> extra_glucose| They are limited to using the tablets in case of hypoglycemia, which adds yet another layer to their desperation.}
    ->what_to_pack

=check_insulin
~ time += 1
Zucchi checks their insulin pen before leaving, making sure it is not expired, and have enough insulin in it. {not extrainsulin: They feel relieved but also a bit stressed about the possibility of running out of insulin.}
    ->what_to_pack
    
=check_insulin_fridge
~ time += 1
Zucchi remembers to check in the fridge if they have enough insulin supplies for the weekend that is coming. It seems all good, but Zucchi's tired about always having to think about so many things at the same time.
    ->what_to_pack

=extra_insulin
~ time += 1
Zucchi brings an extra insulin pen, just in case. {not checkinsulin: They feel relieved and also a bit annoyed that they have to think about things like this just to leave the house.| They're a bit annoyed that they have to think about all these things just to leave the house. }
TODO: add stress about not having checked or packed something (condition)
    ->what_to_pack

=pack_rushed
~ packrushed = true
Zucchi quickly packs some sugar without checking the insulin pens. They don't check their CGM and don't realize it's not working properly. This sure will lead to a stressful day, where they have to constantly check with a glucometer and don't feel as free.

{breakfastskip == false: <expl> A <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood, but it requires much more care and time to use it.</expl>|}
    
    *[Time flies. It's time to go.]
    -> End_of_chapter_1
    
=do_nothing_more
Zucchi feels like almost everything is checked. They still need to check that their CGM is working, because it is essential for their day.
    *[Check the glucose sensor.]
    -> checking_cgm


/* **********************Sub-chapter 4: checking CGM ************************* */

===checking_cgm===
~ time += 1
Zucchi checks their glucose sensor, making sure it's working properly and that their phone has enough battery. They know that this device is critical for managing their diabetes, but when it's not working properly, it can be a stressful and overwhelming experience. They feel relieved when it's working well but also a bit frustrated if it's not working because it means a day without a CGM and having to check blood sugar levels manually with a glucometer.

*[Check]
{~->not_working|->not_working|->working}

==not_working==

Unfortunately, the sensor is not working. Zucchi's phone is charged, but the blood glucose values are on standby and they don't know when or how the CGM will work again.

<subchapter>What will Zucchi do about that?</subchapter>

*[Contact the hotline for the sensor's manufacturer] -> contact_hotline
*[Spend the day without the CGM] -> no_cgm
*[Check the sugar with a glucometer] -> use_glucometer

    =contact_hotline
    ~ time += 2
    Zucchi contacts the hotline for the sensor's manufacturer. After some long minutes on the phone, the operator finds the solution to make the sensor work again. Zucchi feels relieved that they got help, but also frustrated by the wait time. 
    *[Humph]
        -> final_packing
    
    =no_cgm
    Zucchi decide to spend the day without the CGM. They feel less free, more stressed and anxious, having to check the sugar manually with a glucometer.
    
    {breakfastskip == false: {packrushed == false:<expl> A <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood, but it requires much more care and time to use it.</expl>|}|}
    *[Ok]
        ->final_packing
    
    =use_glucometer
    ~ time += 1
    Zucchi check the sugar with a glucometer, it is not as convenient as the CGM, but it allows Zucchi to still have a sense of their blood sugar level and make necessary adjustments. They feel relieved but also frustrated at the inconvenience of having to use a manual method.
    
    {breakfastskip == false: {packrushed == false:<expl> A <a href="https:\/\/www.verywellhealth.com/how-to-use-a-glucometer-1087304" target="_blank">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood, but it requires much more care and time to use it.</expl>|}|}
    *[Ok]
        ->final_packing

==working==

Fortunately, the sensor works. Zucchi feels relieved, but they know that the opposite situation has happened so often. The weight of these uncertainties and the impact on their health and schedule are too great to be forgotten. 
    *[Humph]
-> final_packing

==final_packing==
All these tasks and decisions, which may seem small, add up to a big and overwhelming burden for Zucchi. From packing diabetes supplies, to checking insulin pens, to dealing with malfunctioning equipment, managing diabetes is a full-time job that never stops. Zucchi feels overwhelmed and stressed about the constant need to make sure they have enough supplies, and the possibility of having to go without a critical device like a CGM, but they are determined to keep going.
    
    *[But time flies. It's time to think about the day ahead.]
    -> End_of_chapter_1

TODO: implement subchapter 5 ?
/* **********************Sub-chapter 5: get dressed ************************* */
===Dress===

Zucchi has to decide on what to wear, thinking about the weather and their activity level, to make sure they're dressed properly and wear comfortable clothes to wear their CGM. They have to make sure their clothes have pockets, where they can keep the glucose tablets and their CGM. They also have to make sure their clothes are loose enough to allow them to quickly and discreetly take their insulin shots. They feel overwhelmed, resentful, and frustrated that they have to think about so many things, just to go to work.
TODO : add a bag struggle, so the more you take the heavier and the less comfortable it is

<subchapter>What will Zucchi wear?</subchapter>

*[Loose fitting clothing with pockets]-> loose_clothing
*[Formal clothing with discreet places to carry the insulin pens]->formal_clothing
*[tight clothing with no pockets]->tight_clothing

=loose_clothing
Zucchi wears loose-fitting clothing with pockets, they can quickly and discreetly take their insulin shots and have easy access to glucose tablets and their insulin pens. They feel comfortable, but also resentful of the constant need to think about diabetes management.
    ->Finaldress

=formal_clothing
Zucchi wears formal clothing with discreet places to carry the insulin pens, they feel professional but also a bit self-conscious about having to hide their insulin pens, and frustrated that they can't be open about their condition.
    ->Finaldress

=tight_clothing
Zucchi wears tight clothing with no pockets. They feel self-conscious about the insulin pens being visible, and have a hard time quickly and discreetly taking their insulin shots. They feel uncomfortable, stressed, and frustrated that they have to make sacrifices in their appearance to manage their diabetes.
    ->Finaldress

=Finaldress
Zucchi's daily routine, even on what they wear, is impacted by the diabetes and it is a source of constant frustration. From choosing clothes with pockets for the glucose tablets, to being able to discreetly take their insulin shots, every element of life is impacted by the disease and it is a heavy burden. Zucchi feels overwhelmed, resentful and frustrated that they have to think about so many things just to live a normal life, but they are determined to keep going.
    
    -> End_of_chapter_1



==End_of_chapter_1

/* **********************Sub-chapter 6: end of chapter************************* */

Zucchi is now facing the decision of how to proceed with their day. Even if they try to forget their condition, they know that it is not possible. Every day is a new journey in the world of diabetes, and sometimes they can't always keep their promises, whether it's about their health, their professional goals, or their relationships. But the most important thing is to listen to themself, to tolerate and to be forgiving about what they think are failures, deviations. If they want to remain determined, that's what they have to give their all to.

<subchapter>So what should Zucchi do with their day?</subchapter>
*[Stay at home and rest] -> stay_at_home
*{time >= 6 }[Go to work, but arrive late] -> go_to_work_late
*{time < 6 }[Go to work, but rushed and almost not late] -> go_to_work_rushed
*[Go somewhere else] -> go_somewhere_else
=stay_at_home
Zucchi decides to stay at home and rest. They feel guilty for not going to work, but also relieved to have some time to recover from their morning struggles. They spend the day taking care of themselves and their diabetes, trying to regain their energy and balance.

*<strong>The end.</strong>

<i>Zucchi's decision to stay at home and rest was the right choice for their health. They spend the day focusing on their well-being, monitoring their blood sugar levels, and taking care of themselves. They feel more in control of their diabetes and are better prepared to face the challenges of the next day. As they lay down to sleep, they feel a sense of peace and accomplishment for taking care of themselves.<warning> The story ends here, but the journey of managing diabetes continues.</warning></i>
    -> end
    
=go_to_work_late
Zucchi rushes to get ready for work, but ends up arriving late. They feel guilty for not being punctual, but also relieved to have had the time to take care of their diabetes. Their boss is not happy, they are behind in all their tasks, which makes them very anxious. But the time he spent at least made him feel as good as possible about his diabetes.

*<strong>The end.</strong>

<i>Zucchi's decision to prioritize their diabetes over being punctual had consequences at work, but also allowed them to take care of their health. They feel guilty for being late, but also relieved that they were able to address their low blood sugar level. Despite the challenges they faced at work, they remain determined to find a balance between their professional and personal lives.<warning> The story ends here, but the journey of managing diabetes continues.</warning></i>
    -> end
    
=go_to_work_rushed
Zucchi rushes to get ready for work, but barely makes it on time. They feel stressed and anxious, as they did not take the time to take care of their diabetes. They spend the day struggling to catch up with their tasks and constantly monitoring their blood sugar.

*<strong>The end.</strong>

<i>Zucchi's decision to prioritize work over their diabetes had consequences on their health. They spend the day struggling to catch up with their tasks and constantly monitoring their blood sugar. Despite the challenges they faced, they learn an important lesson about the importance of taking care of themselves. As they lay down to sleep, they make a mental note to make better decisions in the future.<warning> The story ends here, but the journey of managing diabetes continues.</warning></i>
    -> end

=go_somewhere_else
Zucchi decides to go somewhere else instead of going to work. They feel guilty for not going to work, but also relieved to have some time to recover from their morning struggles. They spend the day taking care of themselves and their diabetes, trying to regain their energy and balance.

*<strong>The end.</strong>

<i>Zucchi's decision to put their health first and take a break has helped them to regain control of their diabetes. They spend the day enjoying simple times and having fun, while being aware of their diabetes and staying healthy. They feel more motivated than ever before. As they lay down to sleep, they feel a sense of accomplishment for taking control of their diabetes. <warning> The story ends here, but the journey of managing diabetes continues.</warning></i>

    -> end

=== end ===
TODO: add link embed in "continues" to get to the end
<strong><i>Thank you for taking the time to play 'A Rough Start'. You may have now a deeper understanding of the daily struggles of managing type 1 diabetes, and that it's a full-time job. We hope that this story has shown you the importance of supporting those who are living with diabetes. Please consider spreading awareness about the condition and educating others. That's how we can all make a difference. For diabetes – but obviously not only.</i></strong>

-> END
