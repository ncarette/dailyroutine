var storyContent = ﻿{"inkVersion":20,"root":[[{"#":"author: Noé Carette"},"^<warning> <a href=\"https://www.verywellhealth.com/type-1-diabetes-overview-3289655\" target=\"_blank\">Type 1 diabetes</a> is a serious autoimmune chronic disease. It occurs in people whose immune defenses, for unknown reasons, destroy the cells in the pancreas that create insulin. Insulin is essential for humans: It allows the glucose in our blood to enter our cells and fuel our bodies. Consequently, diabetes can cause hypoglycemia, when there is not enough glucose in the blood, and hyperglycemia, when there is too much. These two phenomena, taken to extremes in duration or intensity, can cause serious complications, up to and including death. This constant danger for the diabetic translates into a constant mental burden, which often weighs on everyday life. This fiction proposes to illustrate it.</warning>","\n","^<strong><i>This story aims to raise awareness about the difficulties of managing type 1 diabetes, please keep in mind that the experience is not the same for everyone and that diabetes can be managed.</i></strong>","\n","ev","str","^<b>Start the story</b>","/str","/ev",{"*":"0.c-0","flg":20},{"c-0":["\n","^<chapter>Chapter 1: A Rough Start</chapter>","\n","^The alarm clock blares, jolting Zucchi from their slumber. They groggily reaches over and silences it, rubbing the sleep from their eyes. As they sit up, they notices the dull ache of fatigue in their bones, a feeling that's all too familiar. They are living with type 1 diabetes, and they know that this is going to be another day of constant balancing act.","\n",["ev","str","^Get up !","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^Zucchi reaches for their phone on their nightstand and look how's their blood sugar on their CGM app.","\n","^<expl>A <a href=\"https://www.niddk.nih.gov/health-information/diabetes/overview/managing-diabetes/continuous-glucose-monitoring\" target=\"_blank\">CGM</a> is a Continuous Glucose Monitoring, a tiny sensor inserted under the skin that wirelessly sends every few minutes the blood glucose levels, also called blood sugar, thanks to a transmitter. It is then showed on a monitor that is often the user's own phone. The cost of a CGM is high and Swiss insurance companies only reimburse CGMs under certain restrictive conditions, not for all diabetics. </expl>","\n","^It's a little low, they know that they need to eat something, but they're running late for work and don't have much time. They feel stressed and frustrated.","\n",["ev","str","^So, what about breakfast?","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":"Breakfast"},"\n",{"->":"0.g-0"},{"#f":5}]}],{"#f":5}]}],{"#f":5}],"g-0":["done",{"#f":5}]}],"done",{"Breakfast":[["^Zucchi contemplates their breakfast options. A bowl of cereal sounds tempting, but they know that it would cause their blood sugar levels to spike. Making something healthier, like scrambled eggs and spinach, would take too much time, and they're already running late for work. Skipping breakfast altogether, would cause their blood sugar levels to drop later in the morning.","\n","^<subchapter>What will Zucchi do for breakfast?</subchapter>","\n","ev","str","^Eat a low-carb breakfast, but be late for work","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Grab a quick bowl of cereal","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Skip breakfast","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["^ ",{"->":".^.^.^.breakfast_low_carb"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.breakfast_cereal"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^.breakfast_skip"},"\n",{"#f":5}]}],{"breakfast_low_carb":["ev",{"VAR?":"time"},3,"+",{"VAR=":"time","re":true},"/ev","^Zucchi takes the time to make a healthy breakfast, opting for scrambled eggs and spinach. The savory aroma of the eggs wafts through the kitchen, making Zucchi's stomach grumble with hunger. As they eat, they feel a sense of satisfaction knowing that they are making a good choice for their health. However, as they check the time, they realize that they are running late for work. Their heart races with anxiety and frustration, knowing that they have to choose between their health and punctuality. They feel a sense of guilt as they continue to prepare for this day, determined to make it to work on time.","\n",{"->":"Finalbreakfast"},{"#f":1}],"breakfast_cereal":[["ev",{"VAR?":"time"},1,"+",{"VAR=":"time","re":true},"/ev","^Zucchi pours a bowl of cereal, the colorful and crunchy cereal pieces look inviting. As they pour the milk and add the sugar, the sweet aroma of the cereal fills the room. As they take the first bite, the sweetness and crunchy texture of the cereal is satisfying. However, as they finish the bowl, they start to feel sluggish and heavy. They check their blood sugar level, it's high. They realize that the cereal has caused their blood sugar levels to spike. They have to take more insulin than they planned and they have to constantly monitor their blood sugar. They feel guilty and frustrated about not making healthier choices. They're running late for work now and feels stressed.","\n","^<expl> Type 1 diabetics must take <a href=\"https://www.niddk.nih.gov/health-information/diabetes/overview/insulin-medicines-treatments\" target=\"_blank\">insulin</a> because their pancreas does not make it. They need to take insulin several times during the day, including when they eat and drink, to control their blood glucose level. There are different ways to take insulin. They can use a needle and syringe, an insulin pen, or an insulin pump. Pump and pens are more expensive, but it is reimbursed by Swiss insurance companies.</expl>","\n","ev","str","^Ok.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":[{"->":"Finalbreakfast"},"\n",{"#f":5}]}],{"#f":1}],"breakfast_skip":["ev",true,"/ev",{"VAR=":"breakfastskip","re":true},"^Zucchi skips breakfast altogether, feeling the pressure of time and the stress of being late for work. They quickly check their blood sugar level and it's dangerously low. They feel lightheaded, anxious, and unsure of what to do next. Their stomach growls with hunger, and they feel weak. The thought of dealing with hypoglycemia during work fills them with dread and guilt. They know that skipping breakfast has consequences on their blood sugar level, and they must make a decision on how to address it.","\n","^<subchapter>How will Zucchi address their low blood sugar?</subchapter>","\n",["ev","str","^Take the time to check with the glucometer","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Take some sugar quickly","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":[{"->":".^.^.^.^.check_glucometer"},"\n",{"#f":5}],"c-1":[{"->":".^.^.^.^.quick_sugar"},"\n",{"#f":5}]}],{"#f":1}],"check_glucometer":[["ev",{"VAR?":"time"},2,"+",{"VAR=":"time","re":true},"/ev","^Zucchi takes the time to check their blood sugar level with the glucometer and carefully calculates the right amount of sugar they need. They feel a sense of relief as they take the sugar, knowing that they have addressed their low blood sugar level. However, as they check the time, they realize that they are running very late for work. They feel stressed and frustrated about having to make a choice between their health and punctuality.","\n","^<expl> A <a href=\"https://www.verywellhealth.com/how-to-use-a-glucometer-1087304\" target=\"_blank\">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood. Therefore, when blood sugar values seem critical, it is important to use a glucometer to check what your body is feeling and what the much less reliable CGM is telling you.</expl>","\n","ev","str","^Ok.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":[{"->":"final_breakfast_skip"},"\n",{"#f":5}]}],{"#f":1}],"quick_sugar":[["^Zucchi quickly takes some sugar. They feel a sense of urgency but also worried about taking too much or too little sugar. They still feel lightheaded and a bit uncertain about their blood sugar levels, because they did not check it with a glucometer.","\n","^<expl> A <a href=\"https://www.verywellhealth.com/how-to-use-a-glucometer-1087304\" target=\"_blank\">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood. Therefore, when blood sugar values seem critical, it is important to use a glucometer to check what your body is feeling and what the much less reliable CGM is telling you.</expl>","\n","ev","str","^Ok.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":[{"->":"final_breakfast_skip"},"\n",{"#f":5}]}],{"#f":1}],"#f":1}],"final_breakfast_skip":[{"->":"Finalbreakfast"},{"#f":1}],"Finalbreakfast":[["^Breakfast is a crucial part of managing diabetes, but it can also be a source of stress and frustration, especially when time is a factor. Zucchi has to balance the need to eat a healthy breakfast with the reality of their busy schedule, and this can be a difficult task, with consequences. In their daily routine, Zucchi always needs to make choices and experience the consequences of those choices, which may or may not take up a lot of mental space.","\n","ev","str","^Now it is time to pack","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"Packing"},{"#f":5}]}],{"#f":1}],"Packing":["^Zucchi starts to get ready for the day, but before leaving the house, they need to start packing their diabetes supplies. They have to make sure they have enough insulin for the day with them, in case of hyperglycemia or if they need to eat, but also enough glucose, in case of hypoglycemia, like soda, glucose tablets, or everything that has a big concentration of glucose while being easily ingested and transportable.","\n","^They should check their insulin in the refrigerator and make sure they have enough for the next couple of days, because soon is the week-end, and the pharmacy will be closed. They feel anxious and stressed about the possibility of running out of insulin or glucose during the day or following days.They are always worried they'll forget something important, so they double check everything.","\n","^<subchapter>What will Zucchi pack? What will Zucchi do to make sure they don't run out of supplies?</subchapter>","\n",{"->":"what_to_pack"},{"#f":1}],"what_to_pack":[["ev",{"^->":"what_to_pack"},"turns",1,">=","/ev",[{"->":".^.b","c":true},{"b":["^ ","ev",{"^->":"what_to_pack"},"turns",3,">=","/ev",[{"->":".^.b","c":true},{"b":["^ Zucchi realizes all this preparation is taking quite a long time as they are running late. ",{"->":".^.^.^.8"},null]}],"nop","^Will Zucchi pack anything else ?",{"->":".^.^.^.7"},null]}],"nop","\n","ev","str","^Bring extra glucose tablets","/str",{"CNT?":".^.c-1"},"!","/ev",{"*":".^.c-0","flg":21},"ev","str","^Bring extra soda","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Check their insulin pen","/str","/ev",{"*":".^.c-2","flg":20},"ev","str","^Check the insulin in the fridge","/str",{"CNT?":".^.c-2"},"/ev",{"*":".^.c-3","flg":21},"ev","str","^Bring an extra insulin pen","/str","/ev",{"*":".^.c-4","flg":20},"ev","str","^Pack rushed","/str",{"^->":"what_to_pack"},"turns",0,"==","/ev",{"*":".^.c-5","flg":21},"ev","str","^Do nothing more","/str",{"^->":"what_to_pack"},"turns",1,">=","/ev",{"*":".^.c-6","flg":21},{"c-0":["^ ",{"->":".^.^.^.extra_glucose"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.extra_soda"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^.check_insulin"},"\n",{"#f":5}],"c-3":["^ ",{"->":".^.^.^.check_insulin_fridge"},"\n",{"#f":5}],"c-4":["^ ",{"->":".^.^.^.extra_insulin"},"\n",{"#f":5}],"c-5":["^ ",{"->":".^.^.^.pack_rushed"},"\n",{"#f":5}],"c-6":["^ ",{"->":".^.^.^.do_nothing_more"},"\n",{"#f":5}]}],{"extra_glucose":["ev",{"VAR?":"time"},1,"+",{"VAR=":"time","re":true},"/ev","^Zucchi brings extra glucose tablets, just in case. They feel relieved but also frustrated that they have to think about things like this just to leave the house. They feel depressed at the thought of potentially having to eat the glucose tablets again in case of hypoglycemia. Over time, it has really become disgusting.","\n",{"->":".^.^"},{"#f":1}],"extra_soda":["ev",{"VAR?":"time"},1,"+",{"VAR=":"time","re":true},"/ev","^Zucchi looks in the fridge for soda, but find none. They have to go to grocery soon. ","ev",{"CNT?":".^.^.0.c-0"},"!","/ev",[{"->":".^.b","c":true},{"b":["^ ",{"->":".^.^.^.^.extra_glucose"},{"->":".^.^.^.13"},null]}],[{"->":".^.b"},{"b":["^ They are limited to using the tablets in case of hypoglycemia, which adds yet another layer to their desperation.",{"->":".^.^.^.13"},null]}],"nop","\n",{"->":".^.^"},{"#f":1}],"check_insulin":["ev",{"VAR?":"time"},1,"+",{"VAR=":"time","re":true},"/ev","^Zucchi checks their insulin pen before leaving, making sure it is not expired, and have enough insulin in it. They feel relieved but also a bit stressed about the possibility of running out of insulin.","\n",{"->":".^.^"},{"#f":1}],"check_insulin_fridge":["ev",{"VAR?":"time"},1,"+",{"VAR=":"time","re":true},"/ev","^Zucchi remembers to check in the fridge if they have enough insulin supplies for the weekend that is comming. It seems all good, but Zucchi's tired about always having to think about so many things at the same time.","\n",{"->":".^.^"},{"#f":1}],"extra_insulin":["ev",{"VAR?":"time"},1,"+",{"VAR=":"time","re":true},"/ev","^Zucchi brings an extra insulin pen, just in case. They feel relieved and also a bit annoyed that they have to think about things like this just to leave the house.","\n",{"->":".^.^"},{"#f":1}],"pack_rushed":[["ev",true,"/ev",{"VAR=":"packrushed","re":true},"^Zucchi quickly packs some sugar without checking the insulin pens. They don't check their CGM and don't realize it's not working properly. This sure will lead to a stressful day, where they have to constantly check with a glucometer and don't feel as free.","\n","ev",{"VAR?":"breakfastskip"},false,"==","/ev",[{"->":".^.b","c":true},{"b":["^ <expl> A <a href=\"https://www.verywellhealth.com/how-to-use-a-glucometer-1087304\" target=\"_blank\">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood, but it requires much more care and time to use it.</expl>",{"->":".^.^.^.12"},null]}],"nop","\n","ev","str","^Time flies. It's time to go.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"End_of_chapter_1"},{"#f":5}]}],{"#f":1}],"do_nothing_more":[["^Zucchi feels like almost everything is checked. They still need to check that their CGM is working, because it is essential for their day.","\n","ev","str","^Check the glucose sensor.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"checking_cgm"},{"#f":5}]}],{"#f":1}],"#f":3}],"checking_cgm":["^Zucchi checks their glucose sensor, making sure it's working properly and that their phone has enough battery. They know that this device is critical for managing their diabetes, but when it's not working properly, it can be a stressful and overwhelming experience. They feel relieved when it's working well but also a bit frustrated if it's not working because it means a day without a CGM and having to check blood sugar levels manually with a glucometer.","\n",["ev","visit",3,"seq","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":"not_working"},{"->":".^.^.23"},null],"s1":["pop",{"->":"not_working"},{"->":".^.^.23"},null],"s2":["pop",{"->":"working"},{"->":".^.^.23"},null],"#f":5}],"\n",{"#f":1}],"not_working":[["^Unfortunately, the sensor is not working. Zucchi's phone is charged, but the blood glucose values are on standby and they don't know when or how the CGM will work again.","\n","^<subchapter>What will Zucchi do about that?</subchapter>","\n","ev","str","^Contact the hotline for the sensor's manufacturer","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Spend the day without the CGM","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Check the sugar with a glucometer","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["^ ",{"->":".^.^.^.contact_hotline"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.no_cgm"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^.use_glucometer"},"\n",{"#f":5}]}],{"contact_hotline":["^Zucchi contacts the hotline for the sensor's manufacturer. After some long minutes on the phone, the operator finds the solution to make the sensor work again. Zucchi feels relieved that they got help, but also frustrated by the wait time.","\n",{"->":"final_packing"},{"#f":1}],"no_cgm":["^Zucchi decide to spend the day without the CGM. They feel less free, more stressed and anxious, having to check the sugar manually with a glucometer.","\n","ev",{"VAR?":"breakfastskip"},false,"==","/ev",[{"->":".^.b","c":true},{"b":["^ ","ev",{"VAR?":"packrushed"},false,"==","/ev",[{"->":".^.b","c":true},{"b":["^<expl> A <a href=\"https://www.verywellhealth.com/how-to-use-a-glucometer-1087304\" target=\"_blank\">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood, but it requires much more care and time to use it.</expl>",{"->":".^.^.^.7"},null]}],"nop",{"->":".^.^.^.8"},null]}],"nop","\n",{"->":"final_packing"},{"#f":1}],"use_glucometer":["^Zucchi check the sugar with a glucometer, it is not as convenient as the CGM, but it allows Zucchi to still have a sense of their blood sugar level and make necessary adjustments. They feel relieved but also frustrated at the inconvenience of having to use a manual method.","\n","ev",{"VAR?":"breakfastskip"},false,"==","/ev",[{"->":".^.b","c":true},{"b":["^ ","ev",{"VAR?":"packrushed"},false,"==","/ev",[{"->":".^.b","c":true},{"b":["^<expl> A <a href=\"https://www.verywellhealth.com/how-to-use-a-glucometer-1087304\" target=\"_blank\">glucometer</a> is a small medical device used to determine the concentration of glucose in the blood. The diabetic must prick his finger to extract a drop of blood, which will then be analyzed by the device. The glucometer is the most reliable device for measuring the concentration of glucose in the blood, but it requires much more care and time to use it.</expl>",{"->":".^.^.^.7"},null]}],"nop",{"->":".^.^.^.8"},null]}],"nop","\n",{"->":"final_packing"},{"#f":1}],"#f":1}],"working":["^yeay, it works !","\n",{"->":"final_packing"},{"#f":1}],"final_packing":[["^All these tasks and decisions, which may seem small, add up to a big and overwhelming burden for Zucchi. From packing diabetes supplies, to checking insulin pens, to dealing with malfunctioning equipment, managing diabetes is a full-time job that never stops. Zucchi feels overwhelmed and stressed about the constant need to make sure they have enough supplies, and the possibility of having to go without a critical device like a CGM, but they are determined to keep going.","\n","ev","str","^But time flies. It's time to think about the day ahead.","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n",{"->":"End_of_chapter_1"},{"#f":5}]}],{"#f":1}],"Dress":[["^Zucchi has to decide on what to wear, thinking about the weather and their activity level, to make sure they're dressed properly and wear comfortable clothes to wear their CGM. They have to make sure their clothes have pockets, where they can keep the glucose tablets and their CGM. They also have to make sure their clothes are loose enough to allow them to quickly and discreetly take their insulin shots. They feel overwhelmed, resentful, and frustrated that they have to think about so many things, just to go to work.","\n","^<subchapter>What will Zucchi wear?</subchapter>","\n","ev","str","^Loose fitting clothing with pockets","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Formal clothing with discreet places to carry the insulin pens","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^tight clothing with no pockets","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":[{"->":"Dress.loose_clothing"},"\n",{"#f":5}],"c-1":[{"->":"Dress.formal_clothing"},"\n",{"#f":5}],"c-2":[{"->":"Dress.tight_clothing"},"\n",{"#f":5}]}],{"loose_clothing":["^Zucchi wears loose-fitting clothing with pockets, they can quickly and discreetly take their insulin shots and have easy access to glucose tablets and their insulin pens. They feel comfortable, but also resentful of the constant need to think about diabetes management.","\n",{"->":".^.^.Finaldress"},{"#f":1}],"formal_clothing":["^Zucchi wears formal clothing with discreet places to carry the insulin pens, they feel professional but also a bit self-conscious about having to hide their insulin pens, and frustrated that they can't be open about their condition.","\n",{"->":".^.^.Finaldress"},{"#f":1}],"tight_clothing":["^Zucchi wears tight clothing with no pockets. They feel self-conscious about the insulin pens being visible, and have a hard time quickly and discreetly taking their insulin shots. They feel uncomfortable, stressed, and frustrated that they have to make sacrifices in their appearance to manage their diabetes.","\n",{"->":".^.^.Finaldress"},{"#f":1}],"Finaldress":["^Zucchi's daily routine, even on what they wear, is impacted by the diabetes and it is a source of constant frustration. From choosing clothes with pockets for the glucose tablets, to being able to discreetly take their insulin shots, every element of life is impacted by the disease and it is a heavy burden. Zucchi feels overwhelmed, resentful and frustrated that they have to think about so many things just to live a normal life, but they are determined to keep going.","\n",{"->":"End_of_chapter_1"},{"#f":1}],"#f":1}],"End_of_chapter_1":[["^Zucchi is now facing the decision of how to proceed with their day.","\n","^<subchapter>What should Zucchi do?</subchapter>","\n","ev","str","^Stay at home and rest","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Go to work, but arrive late","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Go to work, but rushed and almost not late","/str","/ev",{"*":".^.c-2","flg":20},"ev","str","^Go somewhere else","/str","/ev",{"*":".^.c-3","flg":20},{"c-0":["^ ",{"->":".^.^.^.stay_at_home"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.go_to_work_late"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^.go_to_work_rushed"},"\n",{"#f":5}],"c-3":["^ ",{"->":".^.^.^.go_somewhere_else"},"\n",{"#f":5}]}],{"stay_at_home":["^Zucchi decides to stay at home and rest. They feel guilty for not going to work, but also relieved to have some time to recover from their morning struggles. They spend the day taking care of themselves and their diabetes, trying to regain their energy and balance.","\n","end",{"#f":1}],"go_to_work_late":["^Zucchi rushes to get ready for work, but ends up arriving late. They feel guilty for not being punctual, but also relieved to have had the time to take care of their diabetes. They spend the day struggling to catch up with their tasks and constantly monitoring their blood sugar.","\n",["ev","str","^Go to work late after eating a low-carb breakfast","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Go to work late after skipping breakfast, but checking their blood sugar with a glucometer and taking the right amount of sugar","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Go to work late after taking the time to check their cgm, but it not working, checked their glucose on a glucometer and going to work without a functional cgm","/str","/ev",{"*":".^.c-2","flg":20},"ev","str","^Go to work late after eating a high-carb breakfast","/str","/ev",{"*":".^.c-3","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.go_to_work_late_low_carb"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.^.go_to_work_late_skip_glucometer"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^.^.go_to_work_late_cgm_not_working"},"\n",{"#f":5}],"c-3":["^ ",{"->":".^.^.^.^.go_to_work_late_high_carb"},"\n",{"#f":5}]}],{"#f":1}],"go_to_work_late_high_carb":["^Zucchi arrives at work late, but their blood sugar is high throughout the day. They feel sluggish and have to take more insulin than planned. They feel guilty about not making healthier choices and are behind on their tasks. They feel stressed about the high blood sugar and the fact that they are late for work.","\n","end",{"#f":1}],"go_to_work_late_low_carb":["^Zucchi arrives at work late, but their blood sugar is stable throughout the day. They feel better and more energized, but they're behind on their tasks and feel stressed. They feel a bit frustrated that they had to choose between health and punctuality.","\n","end",{"#f":1}],"go_to_work_late_cgm_not_working":["^Zucchi arrives at work late, but they're blood sugar is stable throughout the day. They feel relieved that they have addressed their low blood sugar but they are behind on their tasks and feel stressed. They feel frustrated that their cgm was not working and that they had to spend extra time checking their blood sugar with a glucometer.","\n","end",{"#f":1}],"go_to_work_late_skip_glucometer":["^Zucchi arrives at work late, but their blood sugar is stable throughout the day. They feel relieved that they have addressed their low blood sugar but they are behind on their tasks and feel stressed. They feel guilty about not planning better and having to skip breakfast.","\n","end",{"#f":1}],"go_to_work_rushed":["^Zucchi rushes to get ready for work, but barely makes it on time. They feel stressed and anxious, but also relieved to have had the time to take care of their diabetes. They spend the day struggling to catch up with their tasks and constantly monitoring their blood sugar.","\n","end",{"#f":1}],"go_somewhere_else":["^Zucchi decides to go somewhere else instead of going to work. They feel guilty for not going to work, but also relieved to have some time to recover from their morning struggles. They spend the day taking care of themselves and their diabetes, trying to regain their energy and balance.","\n","end",{"#f":1}],"#f":1}],"global decl":["ev",0,{"VAR=":"time"},0,{"VAR=":"bloodsugar"},0,{"VAR=":"comfort"},0,{"VAR=":"anxiety"},0,{"VAR=":"happiness"},false,{"VAR=":"breakfastskip"},false,{"VAR=":"packrushed"},"/ev","end",null],"#f":1}],"listDefs":{}};