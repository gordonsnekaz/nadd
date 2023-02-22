import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nadd/descriptive_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MostDiagnosedDiseasesPage extends StatelessWidget {
  var headings = <String>[
    'Cholera',
    'Heart Disease',
    'Malaria',
    'Rabies',
    'Measles',
    'Typhoid',
    'Tuberculosis',
    'Conjunctivitis',
    'Diarrhea',
    'Mononucleosis',
    'Stomach Aches',
    'Diabetes',
    'Alzheimer\'s disease',
  ];
  /*overview: "",
                                symptoms: "",
                                treatment: "",
                                prevention: "",
                                prognosis: "", */

  var overview = [
    'Cholera is an infectious disease that causes severe watery diarrhea, which can lead to dehydration and even death if untreated. It is caused by eating food or drinking water contaminated with a bacterium called Vibrio cholerae. The disease is most common in places with poor sanitation, crowding, war, and famine. Common locations include parts of Africa, south Asia, and Latin America. If you are traveling to one of those areas, knowing the following cholera facts can help protect you and your family.',
    'Heart disease describes a range of conditions that affect the heart. Heart diseases include:'
        '\nBlood vessel disease, such as coronary artery disease'
        '\nIrregular heartbeats (arrhythmias)'
        '\nHeart problems you\'re born with (congenital heart defects)'
        'Disease of the heart muscle'
        '\nHeart valve disease',
    'Malaria is a serious disease that spreads when you’re bitten by a mosquito infected by tiny parasites. When it bites, the mosquito injects malaria parasites into your bloodstream. Malaria is caused by the parasites, not by a virus or by a type of bacterium.'
        '\nAnyone can get malaria, but people who live in Africa have a higher risk of infection than others. Young children, older people and those who are pregnant have an increased risk of dying from malaria. People who live in poverty and don’t have access to healthcare are more likely to have complications from the disease.'
        '\nMore than 90% of malaria deaths occur in Africa, and nearly all of the people who die are young children. More than 80% of malaria deaths in the region in 2020 involved children under the age of 5 years old.',
    'Rabies virus (RABV) is transmitted through direct contact (such as through broken skin or mucous membranes in your eyes, nose, or mouth) with saliva or brain/nervous system tissue from an infected animal. Rabies is fatal but preventable. It can spread to people and pets if they are bitten or scratched by a rabid animal.'
        '\nRabies virus gets into your body when the saliva (spit) of an infected animal gets into an open wound (usually from a bite). It moves very slowly along nerves into your central nervous system (your brain and spinal cord). When it reaches your brain, the damage causes neurological symptoms. From there, rabies leads to coma and death.'
        '\nRabies moves from an infected wound to your brain over time. There are several phases that most people go through: incubation, prodromal phase, acute neurologic phase and coma.',
    'Measles is a contagious disease that causes fever, a red rash, cough and red eyes. It can have serious complications such as encephalitis, which itself can cause hearing loss. You can prevent measles by getting vaccinated.'
        'Measles is an airborne disease caused by a virus, and it’s very contagious. Symptoms may develop about eight to 12 days after you’re exposed. Symptoms can last 10 to 14 days.'
        '\nMeasles is also called rubeola, 10-day measles or red measles. It’s not the same as German measles, or rubella.'
        '\nMeasles (rubeola) and German measles (rubella) are similar in some ways. . They have some symptoms in common, such as fever, sore throat and rash. However, the virus that causes measles is different than the virus that causes German measles.'
        '\nGerman measles is very serious for those who are pregnant. This condition can cause the person to miscarry or can cause birth defects in the baby. Both viral diseases can be prevented by getting one vaccine.',
    'Typhoid fever is an illness you get from S. Typhi bacterium. It causes a high fever, flu-like symptoms and diarrhea. You can be contagious with typhoid even if you don’t feel sick. Typhoid can be life-threatening and should be treated promptly with antibiotics. If you live in or travel to an area where typhoid is common, you should get vaccinated.'
        '\nYou’ll commonly hear paratyphoid fever mentioned along with typhoid. Paratyphoid fever is similar to typhoid with more mild symptoms. It’s caused by Salmonella Paratyphi (S. Paratyphi).'
        '\nS. Typhi and S. Paratyphi are different from the Salmonella bacteria that cause salmonellosis, a common type of food poisoning.'
        '\nSome people continue to be contagious with typhoid fever even after they’ve recovered (long-term carrier). You can spread typhoid for a year or more with no symptoms. It’s important to get tested for S. Typhi after you feel better to make sure you can’t spread it to other people.',
    'Tuberculosis is an infectious disease that can cause infection in your lungs or other tissues. It commonly affects your lungs, but it can also affect other organs like your spine, brain or kidneys. The word “tuberculosis” comes from a Latin word for "nodule" or something that sticks out.'
        '\nTuberculosis is also known as TB. Not everyone who becomes infected with TB gets sick, but if you do get sick you need to be treated.'
        '\nIf you’re infected with the bacterium, but don’t have symptoms, you have inactive tuberculosis or latent tuberculosis infection (also called latent TB). It may seem like TB has gone away, but it’s dormant (sleeping) inside your body.'
        '\nIf you’re infected, develop symptoms and are contagious, you have active tuberculosis or tuberculosis disease (TB disease).'
        '\nThe three stages of TB are:'
        '\n - Primary infection.'
        '\n - Latent TB infection.'
        '\n - Active TB disease.',
    'Pink eye is an inflammation (redness) of the conjunctiva, the clear tissue that lines the inside surface of your eyelid and outer coating of your eye. This tissue helps keep your eyelid and eyeball moist. You can get pink eye from viruses, bacteria, allergens and other causes.'
        '\nThe medical name for pink eye is conjunctivitis. You can get pink eyes in one or both eyes. An eye with pink eyes, the white part looks light pink to reddish and your eyelids are puffy or droopy. You might see fluid (discharge) coming from the infected eye or crusting on your eyelashes and eyelids.',
    'Going to the bathroom, having a bowel movement, pooping – no matter what you call it, stool is a regular part of your life. However, sometimes this process of getting waste out of your body changes. When you have loose or watery stool, it’s called diarrhea. This is a very common condition and usually resolves without intervention.'
        '\nDiarrhea can happen for a wide variety of reasons and it usually goes away on its own in one to three days. When you have diarrhea, you may need to quickly run to the bathroom with urgency and this may happen more frequently than normal. You may also feel bloated, have lower abdominal cramping and sometimes experience nausea.'
        '\nAlthough most cases of diarrhea are self-limited (happening for a fixed amount of time and steady level of severity), sometimes diarrhea can lead to serious complications. Diarrhea can cause dehydration (when your body loses large amounts of water), electrolyte imbalance (loss of sodium, potassium and magnesium that play a key role in vital bodily functions) and kidney failure (not enough blood/fluid is supplied to the kidneys). When you have diarrhea, you lose water and electrolytes along with stool. You need to drink plenty of fluids to replace what’s lost. Dehydration can become serious if it fails to resolve (get better), worsens and is not addressed adequately.',
    'Mononucleosis is an illness that commonly affects teenagers and young adults, but can affect children as well. Viruses, most commonly Epstein-Barr Virus (EBV), and certain infections cause the illness. Mono is sometimes called “the kissing disease” because it spreads easily through bodily fluids like saliva.'
        '\nFor most people, mono isn’t serious, and it improves without treatment. Still, extreme fatigue, body aches and other symptoms can interfere with school, work and daily life. With mono, you might feel sick for about a month.',
    'Abdominal pain is discomfort anywhere in your belly region — between your ribs and your pelvis. We often think of abdominal pain as “stomach pain” or a “stomachache,” but pain in your abdomen could be coming from other organs too.'
        '\nYour abdomen is home to your:'
        '\n - Stomach.'
        '\n - Liver.'
        '\n - Gallbladder.'
        '\n - Pancreas.'
        '\n - Small intestine.'
        '\n - Large intestine.'
        '\nThese are all organs in your digestive system, but pain can also be in your abdominal wall, the outer shell (skin, muscles) of your abdomen. And sometimes, the pain that you feel in your belly may be coming from somewhere else, like your chest, pelvis or back.'
        '\nAbdominal pain can take many forms and can mean many things.'
        '\nIt may feel:'
        '\n - Mild or severe.'
        '\n - Dull or sharp.'
        '\n - Burning or achy.'
        '\n - Crampy or colicky.'
        '\n - Constant or intermittent.'
        '\n - Localized (in one spot) or generalized (all over).'
        '\nUltimately, abdominal pain is a subjective symptom that only you can describe. Since your healthcare provider can’t measure it, it\'s what you say it is. Your healthcare provider will always take your abdominal pain seriously.',
    'Diabetes happens when your body isn\'t able to take up sugar (glucose) into its cells and use it for energy. This results in a build up of extra sugar in your bloodstream.'
        '\nPoorly controlled diabetes can lead to serious consequences, causing damage to a wide range of your body\'s organs and tissues – including your heart, kidneys, eyes and nerves.'
        '\nThe types of diabetes are:'
        '\n - Type 1 diabetes: This type is an autoimmune disease, meaning your body attacks itself. In this case, the insulin-producing cells in your pancreas are destroyed. Up to 10% of people who have diabetes have Type 1. It’s usually diagnosed in children and young adults (but can develop at any age). It was once better known as “juvenile” diabetes. People with Type 1 diabetes need to take insulin every day. This is why it is also called insulin-dependent diabetes.'
        '\n - Type 2 diabetes: With this type, your body either doesn’t make enough insulin or your body’s cells don’t respond normally to the insulin. This is the most common type of diabetes. Up to 95% of people with diabetes have Type 2. It usually occurs in middle-aged and older people. Other common names for Type 2 include adult-onset diabetes and insulin-resistant diabetes. Your parents or grandparents may have called it “having a touch of sugar.”'
        '\n - Prediabetes: This type is the stage before Type 2 diabetes. Your blood glucose levels are higher than normal but not high enough to be officially diagnosed with Type 2 diabetes.'
        '\n - Gestational diabetes: This type develops in some women during their pregnancy. Gestational diabetes usually goes away after pregnancy. However, if you have gestational diabetes you\'re at higher risk of developing Type 2 diabetes later on in life.',
    'Alzheimer’s disease is a brain disorder that cannot be stopped or reversed. The disease severely affects memory, thinking, learning and organizing skills and eventually affects a person’s ability to carry out simple daily activities. Alzheimer’s disease is not a normal part of the aging process.'
        '\nAlzheimer’s is a disease whose symptoms worsen over time. In fact, scientists believe the disease process may go on for 10 years or longer before the first symptoms of Alzheimer’s disease appear.'
        '\nWhen memory problems do begin to be noticeable, they are often identified as mild cognitive impairment (MCI). At this stage, intellectual function is affected but the ability to function and live independently remain intact as the brain compensates for disease-related changes.'
        '\nIn some people, MCI can hold steady at this stage. However, people with MCI are at high risk for progression to dementia. Alzheimer’s disease is the most common form of dementia. (Dementia can also be due to a variety of reasons such as Parkinson’s disease, dementia with Lewy bodies, vascular dementia, frontotemporal dementia and more.) With dementia, in contrast to MCI, daily function is affected.'
        '\nAs dementia due to Alzheimer’s disease progresses to late stages, affected individuals cannot carry on a conversation, recognize family and friends, or care for themselves.'
  ];

  var symptoms = <String>[
    'Symptoms of cholera can begin as soon as a few hours or as long as five days after infection. Often, symptoms are mild. But sometimes they are very serious. About one in 20 people infected have severe watery diarrhea accompanied by vomiting, which can quickly lead to dehydration. Although many infected people may have minimal or no symptoms, they can still contribute to spread of the infection.'
        'Signs and symptoms of dehydration include:'
        '\n - Rapid heart rate'
        '\n - Loss of skin elasticity (the ability to return to original position quickly if pinched)'
        '\n - Dry mucous membranes, including the inside of the mouth, throat, nose, and eyelids'
        '\n = Low blood pressure'
        '\n - Thirst'
        '\n - Muscle cramps'
        '\n - If not treated, dehydration can lead to shock and death in a matter of hours.',
    '''The symptoms of heart disease depend on the specific type a person has. Also, some heart conditions cause no symptoms at all. That said, the following symptoms may indicate a heart problem:
\n - angina, or chest pain
\n - difficulty breathing
\n - fatigue and lightheadedness
\n - swelling due to fluid retention, or edema
\nIn children, the symptoms of a congenital heart defect may include cyanosis, or a blue tinge to the skin, and an inability to exercise.
\nSome signs and symptoms that could indicate heart attack include:
\n - chest pain
\n - breathlessness
\n - heart palpitations
\n - nausea
\n - stomach pain
\n - sweating
\n - arm, jaw, back, or leg pain
\n - a choking sensation
\n - swollen ankles
\n - fatigue
\n - an irregular heartbeat
\nHeart attack can lead to cardiac arrest, which is when the heart stops and the body can no longer function. A person needs immediate medical attention if they have any symptoms of a heart attack.
''',
    '''Signs and symptoms of malaria are similar to flu symptoms. They include:
Fever and sweating.
Chills that shake your whole body.
Headache and muscle aches.
Fatigue.
Chest pain, breathing problems and cough.
Diarrhea, nausea and vomiting.
As malaria gets worse, it can cause anemia and jaundice (yellowing of the skin and whites of the eyes).
The most severe form of malaria, which may progress to a coma, is known as cerebral malaria. This type represents about 15% of deaths in children and nearly 20% of adult deaths.
''',
    '''You usually have no symptoms of rabies for several weeks after it enters your body. When rabies makes it to your central nervous system (prodromal phase), you experience flu-like symptoms. In the final stages, you have neurological (brain) symptoms.
Prodromal symptoms of rabies
Fever.
Tiredness (fatigue).
Bite wound burning, itching, tingling, pain or numbness.
Cough.
Sore throat.
Muscle pain.
Nausea and vomiting.
Diarrhea.
Acute neurologic symptoms of rabies
Neurological symptoms of rabies are either furious or paralytic. Furious rabies symptoms may come and go with periods of calm in between (furious episodes).
Furious rabies symptoms
Agitation and aggression.
Restlessness.
Seizures.
Hallucinations.
Muscle twitching (fasciculations).
Fever.
Racing heart (tachycardia).
Fast breathing (hyperventilation).
Excessive salivation.
Two different-sized pupils (anisocoria).
Facial paralysis (facial palsy).
Fear of water/drinking (hydrophobia).
Fear of air being blown in your face/drafts (aerophobia).
Delirium.
Paralytic rabies symptoms
Fever.
Headache.
Neck stiffness.
Weakness, especially starting from the body part that was bitten and progressing to other body parts.
Tingling, “pins and needles” or other strange sensations.
Paralysis.
Coma.
''',
    '''The most common symptoms of measles include:
A high fever.
Tiredness.
A barky cough.
Red or bloodshot eyes.
A runny nose.
A red rash, which starts at the head and then spreads downward.
Other symptoms of measles may include:
sore throat.
White spots in the mouth.
Muscle pain.
Sensitivity to light (light makes your eyes hurt).
''',
    '''Typhoid fever gets its name from a high fever that can last for weeks if left untreated. It often gets progressively worse over a few days.
Other symptoms of typhoid fever include:
Headache.
Chills.
Loss of appetite.
Stomach (abdominal) pain.
“Rose spots” rash, or faint pink spots, usually on your chest or stomach.
Cough.
Muscle aches.
Nausea, vomiting.
Diarrhea or constipation.
''',
    '''People with inactive TB do not exhibit symptoms. However, they may have a positive skin reaction test or blood test.
Those with active TB can show any of the following symptoms:
Bad cough (lasting longer than two weeks).
Pain in your chest.
Coughing up blood or sputum (mucus).
Fatigue or weakness.
Loss of appetite.
Weight loss.
Chills.
Fever.
Night sweats.
''',
    '''Symptoms of pink eye include:
Redness in the white of your eye or inner eyelid.
Increased tearing.
Thick yellow discharge that crusts over your eyelashes, especially after sleep.
Green or white discharge from your eye.
Gritty feeling in one or both eyes.
Itchy eyes (especially in pink eye caused by allergies).
Burning eyes (especially in pink eye caused by chemicals and irritants).
Blurred vision.
Increased sensitivity to light.
Swollen eyelids.
''',
    '''The symptoms you can experience when you have diarrhea can vary depending on if it’s mild or severe and what the cause of the diarrhea happens to be. There’s a link between severe cases of diarrhea and a medical condition that needs to be treated.
When you have diarrhea, you may experience all of these symptoms or only a few. The main symptom of diarrhea is loose or watery stool.
Other symptoms of mild diarrhea can include:
Bloating or cramps in the abdomen.
A strong and urgent need to have a bowel movement.
Nausea (upset stomach).
If you have severe diarrhea, you may experience symptoms like:
Fever.
Weight loss.
Dehydration.
Severe pain.
Vomiting.
Blood.
Severe diarrhea can lead to significant complications. If you have these symptoms, call your healthcare provider and seek medical attention.
''',
    '''Symptoms of mono vary, and they can be mild or severe. They tend to come on gradually. If you get sick with mono, it will probably happen four to six weeks after you come in contact with EBV. These symptoms may last for four weeks or longer:
Enlarged spleen or liver.
Extreme fatigue.
Fever.
Headaches.
Loss of appetite.
Muscle aches or weakness.
Rash.
Sore throat.
Swollen lymph nodes in the neck, armpits or groin.
''',
    '''Always see your doctor if your pain is unexplained, persistent or severe, or if you have been injured or are pregnant.
Also, see your doctor if your pain is accompanied by any of these symptoms:
Persistent fever.
Persistent nausea or vomiting.
Blood in your stools, urine or vomit.
Swelling and tenderness to the touch.
Jaundice (yellowing of the eyes and skin).
Pain in any other part of your body.
Shortness of breath or symptoms that get worse with exertion.
''',
    '''Symptoms of diabetes include:
Increased thirst.
Weak, tired feeling.
Blurred vision.
Numbness or tingling in the hands or feet.
Slow-healing sores or cuts.
Unexplained weight loss.
Frequent urination.
Frequent unexplained infections.
Dry mouth.
Other symptoms
In women: Dry and itchy skin, and frequent yeast infections or urinary tract infections.
In men: Decreased sex drive, erectile dysfunction, decreased muscle strength.
Type 1 diabetes symptoms: Symptoms can develop quickly – over a few weeks or months. Symptoms begin when you’re young – as a child, teen or young adult. Additional symptoms include nausea, vomiting or stomach pains and yeast infections or urinary tract infections.
Type 2 diabetes and prediabetes symptoms: You may not have any symptoms at all or may not notice them since they develop slowly over several years. Symptoms usually begin to develop when you’re an adult, but prediabetes and Type 2 diabetes is on the rise in all age groups.
Gestational diabetes: You typically will not notice symptoms. Your obstetrician will test you for gestational diabetes between 24 and 28 weeks of your pregnancy.''',
    '''Symptoms of Alzheimer’s disease vary from person to person and worsen over time. Symptoms of the disease include:
Memory loss. This is usually one of the first symptoms of Alzheimer’s disease.
Putting objects in odd places
Confusion about events, time and place
Repeating questions
Trouble managing money and paying bills
Trouble performing/taking longer to perform familiar tasks
Getting lost/wandering
Not being able to sleep
Changes in personality and behavior including agitation, anxiety and aggression
Having groundless suspicions about family, friends and caregivers
Poor judgment or reasoning
Trouble recognizing family and friends
Difficulty learning and remembering new information/recent events
Difficulty performing multi step tasks, such as dressing or cooking
Having hallucinations, delusions or paranoia
Difficulty speaking/finding the right words
Difficulty reading, writing and working with numbers
Difficulty walking
Difficulty swallowing
''',
  ];

  var treatment = <String>[
    '''Cholera requires immediate treatment because the disease can cause death within hours.
Rehydration. The goal is to replace lost fluids and electrolytes using a simple rehydration solution, oral rehydration salts (ORS). The ORS solution is available as a powder that can be made with boiled or bottled water. Without rehydration, approximately half the people with cholera die. With treatment, fatalities drop to less than 1%.
Intravenous fluids. Most people with cholera can be helped by oral rehydration alone, but severely dehydrated people might also need intravenous fluids.
Antibiotics. While not a necessary part of cholera treatment, some antibiotics can reduce cholera-related diarrhea and shorten how long it lasts in severely ill people.
Zinc supplements. Research has shown that zinc might decrease diarrhea and shorten how long it lasts in children with cholera.''',
    '''The treatment options will vary depending on the type of heart disease a person has, but some common strategies include making lifestyle changes, taking medications, and undergoing surgery. The following sections look at some of these options.
Medications, various medications 
Trusted Source can help treat heart conditions. The main options include:
Anticoagulants: Also known as blood thinners, these medications can prevent clots. They include warfarin (Coumadin) and the direct oral anticoagulants dabigatran, rivaroxaban, and apixaban.
Antiplatelet therapies: These include aspirin, and they can also prevent clots.
Angiotensin-converting enzyme inhibitors: These can help treat heart failure and high blood pressure by causing the blood vessels to expand. Lisinopril is one example.
Angiotensin II receptor blockers: These can also control blood pressure. Losartan is one example.
Angiotensin receptor neprilysin inhibitors: These can help unload the heart and interrupt the chemical pathways that weaken it.
Beta-blockers: Metoprolol and other medications in this class can reduce the heart rate and lower blood pressure. They can also treat arrhythmias and angina.
Calcium channel blockers: These can lower blood pressure and prevent arrhythmias by reducing the pumping strength of the heart and relaxing the blood vessels. One example is diltiazem (Cardizem).
Surgery
Undergoing heart surgery can help treat blockages and heart problems when medications are not effective.
''',
    '''It’s important to start treating malaria as soon as possible. Your provider will prescribe medications to kill the malaria parasite. Some parasites are resistant to malaria drugs.
Some drugs are given in combination with other drugs. The type of parasite will determine what type of medication you take and how long you take it.
Antimalarial drugs include:
Artemisinin drugs (artemether and artesunate). The best treatment for Plasmodium falciparum malaria, if available, is artemisinin combination therapy.
Atovaquone (Mepron®).
Chloroquine. There are parasites that are resistant to this medication.
Doxycycline (Doxy-100®, Monodox®, Oracea®).
Mefloquine.
Quinine.
Primaquine.
Medications can cure you of malaria.
''',
    '''There’s no approved treatment for rabies once you have symptoms. If you’ve been exposed to rabies (were bitten by or been in contact with an infected animal), contact a healthcare provider as soon as possible.
Clean the wound gently but thoroughly with soap and water. Ask your provider for additional instructions on cleaning the wound.
Your provider will give you a series of shots (vaccinations) to prevent the virus from causing rabies. They’ll also give you an antibody treatment directly to the wound if you’ve never been vaccinated before.
If you’re bitten or scratched by a wild animal, there are steps you can take to prevent rabies.
Medications prevent an infection from traveling to your brain if you’ve been exposed to rabies (post-exposure prophylaxis/PEP). These medications are often combined:
Rabies vaccine. Your healthcare provider will give you four shots over 14 days. If you’ve already been vaccinated before exposure, you’ll only need two shots. The vaccine teaches your body to destroy the rabies virus before it enters your brain.
Human rabies immune globulin (HRIG). Your provider will give you shots around the wound. HRIG gives you antibodies (molecules that fight infection) that will destroy the virus near the wound until your body takes over. You shouldn’t get HRIG if you’ve been vaccinated before your exposure.
''',
    '''There’s no cure for measles. The virus must run its course, which usually takes about 10 to 14 days.
You can do some things that might make you feel better, such as:
Taking acetaminophen or ibuprofen for aches, pains or fever.
Getting plenty of rest.
Drinking enough fluids.
Gargling with salt water.
Avoiding harsh light if your eyes hurt.
Note: Never give aspirin to children or teenagers unless your healthcare provider specifically tells you to because of the risk of Reye’s syndrome.
''',
    '''Typhoid is treated with antibiotics. Some newer types of the bacteria are able to survive antibiotic treatments, so you’ll be treated with different antibiotics depending on what type of typhoid you have and where you got sick. Paratyphoid fever is also treated with antibiotics.
If you’re severely ill or have complications, you might need additional treatments. You’ll probably need to be admitted to the hospital for these treatments.
What medications are used to treat typhoid fever?
Your healthcare provider will treat typhoid fever with antibiotics, which may include:
Ciprofloxacin, levofloxacin or ofloxacin.
Ceftriaxone, cefotaxime or cefixime.
Azithromycin.
Carbapenems.
''',
    '''TB infection and disease is treated with these drugs:
Isoniazid (Hyzyd®).
Rifampin (Rifadin®).
Ethambutol (Myambutol®).
Pyrazinamide (Zinamide®).
Rifapentine (Priftin®).
You must take all of the medication your provider prescribes, or not all of the bacteria will be killed. You will have to take these medications for as long as you're told — sometimes up to nine months.
Some forms of TB have become resistant to medications. It’s very important and likely that your provider will use more than one drug to treat TB. It’s very important to finish your entire prescription.
''',
    '''Treatment of pink eye depends on whether it’s caused by bacteria, a virus, an allergen or something else.
Treatment for pink eye caused by bacteria
If bacteria are causing your pink eye, your provider will give you a prescription for antibiotics (eye drops, ointments or pills). If it’s tricky to put ointment in your eye or your child’s eye, don’t worry. If the ointment gets as far as the eyelashes, it will most likely melt into the eye.
Treatment for pink eye caused by viruses
Pink eye caused by a virus doesn’t need treatment unless it’s caused by herpes simplex virus, varicella-zoster virus (chickenpox/shingles) or a sexually transmitted infection. These are serious infections that require antiviral medications. If not treated, they could scar your eye or cause vision loss.
Antibiotics can’t treat pink eye caused by a virus.
Treatment for pink eye caused by irritating substances
If something gets into your eyes and irritates them, rinse your eyes with a gentle stream of warm water for five minutes. Avoid further exposure to the irritating substances.
Your eyes should begin to improve within four hours after rinsing them. If they don’t, call your healthcare provider. If the substance in your eyes is a strong acid or alkaline chemical (such as drain cleaner), rinse your eyes with water and call your healthcare provider immediately.
Treatment for pink eye caused by allergies
Allergic conjunctivitis is treated with prescription or over-the-counter eye drops. These contain either antihistamines to control allergic reactions or anti-inflammatory drugs such as steroids or decongestants.
You can relieve your symptoms temporarily by applying a cold compress to your closed eyes. You can prevent this kind of pink eye by avoiding the allergens that cause your symptoms or taking over-the-counter allergy medicines.
Treatment for pink eye caused by sexually transmitted infections (STIs)
Pink eyes caused by STIs are uncommon but can be serious. Like other causes of pink eye, bacterial pink eye is treated with antibiotics and viral pink eye is treated with antiviral medications.
Newborn babies can develop a serious type of pink eye that can cause vision loss. If you’re pregnant and living with an STI, your baby can pick up the bacteria during delivery. Its standard practice in U.S. hospitals is to apply an antibiotic ointment to every newborn’s eyes to help prevent infection.
Treatment for pink eye caused by autoimmune disease
If you have pink eyes caused by an autoimmune disease, treating the underlying illness will also treat your pink eye. Ask your healthcare provider how to manage your symptoms until your eye feels better.
''',
    '''In most cases, you can treat mild and uncomplicated diarrhea at home. By using an over-the-counter product like bismuth subsalicylate (Pepto-Bismol® or Kaopectate®) you’ll usually feel better very quickly.
However, over-the-counter medications aren’t always the solution. If your diarrhea is caused by an infection or parasite, you’ll need to see a healthcare provider for treatment. A general rule is not to use over-the-counter medications for diarrhea if you also have a fever or blood in your stool. In those cases, call your healthcare provider.
When diarrhea lasts for a long period of time (several weeks), your healthcare provider will base your treatment on the cause. This could involve a few different treatment options, including:
Antibiotics: Your healthcare provider might prescribe an antibiotic or other medication to treat an infection or parasite that’s causing the diarrhea.
Medication for a specific condition: Diarrhea can be a sign of several other medical conditions, including irritable bowel syndrome (IBS), inflammatory bowel disease (IBD) such as Crohn’s disease and ulcerative colitis, microscopic colitis, or bacterial overgrowth. Once the cause of the diarrhea is identified, diarrhea can usually be controlled.
Probiotics: Groupings of good bacteria, probiotics are sometimes used to re-establish a healthy biome to combat diarrhea. Introducing probiotics can be helpful in some cases and some healthcare providers feel that it’s worth a try. Always talk to your provider before starting a probiotic or any kind of supplement.
''',
    '''There isn’t a vaccine or cure for mono. Antibiotics to fight bacterial infection and antiviral medications to kill other viruses don’t work against mono. Instead, treatments focus on helping you feel better by relieving symptoms. Your care might include:
Rest: Mono makes you very tired. Sleep helps your body fight infection.
Hydration: Drink plenty of fluids to prevent dehydration.
Pain relievers: Nonsteroidal anti-inflammatory drugs (NSAIDs) ease fever, inflammation, headaches and muscle aches. These drugs include ibuprofen (Advil®) and naproxen (Aleve®). Acetaminophen (Tylenol®) also works.
Sore throat soothers: You can gargle with salt water and use throat lozenges.
Avoiding sports: Physical activity can put too much pressure on an enlarged spleen, increasing the risk of rupture. You should avoid contact sports and strenuous exercise while you’re sick and for up to four weeks afterward.
''',
    '''Here''',
    '''Treatments for diabetes depend on your type of diabetes, how well controlled your blood glucose level is and your other existing health conditions.
Type 1 diabetes: If you have this type, you must take insulin every day. Your pancreas no longer makes insulin.
Type 2 diabetes: If you have this type, your treatments can include medications (both for diabetes and for conditions that are risk factors for diabetes), insulin and lifestyle changes such as losing weight, making healthy food choices and being more physically active.
Prediabetes: If you have prediabetes, the goal is to keep you from progressing to diabetes. Treatments are focused on treatable risk factors, such as losing weight by eating a healthy diet (like the Mediterranean diet) and exercising (at least five days a week for 30 minutes). Many of the strategies used to prevent diabetes are the same as those recommended to treat diabetes (see prevention section of this article).
Gestational diabetes: If you have this type and your glucose level is not too high, your initial treatment might be modifying your diet and getting regular exercise. If the target goal is still not met or your glucose level is very high, your healthcare team may start medication or insulin.
Oral medications and insulin work in one of these ways to treat your diabetes:
Stimulates your pancreas to make and release more insulin.
Slows down the release of glucose from your liver (extra glucose is stored in your liver).
Blocks the breakdown of carbohydrates in your stomach or intestines so that your tissues are more sensitive to (better react to) insulin.
Helps rid your body of glucose through increased urination.
''',
    '''There is no cure for Alzheimer’s disease, but available medications temporarily slow the worsening of dementia symptoms and help with behavioral problems that may appear during the course of the disease.
Four medications representing two drug classes are currently approved by the Food and Drug Administration (FDA) to treat the symptoms of Alzheimer’s disease. These drugs are the cholinesterase inhibitors and a NMDA antagonist.
Cholinesterase inhibitors. The cholinesterase inhibitors are all approved to treat the symptoms of mild to moderate Alzheimer's disease (AD). Cholinesterase inhibitors include:
Donepezil (Aricept®) (also FDA-approved to treat moderate to severe disease)
Rivastigmine (Exelon®) and Exelon patch
Galantamine (Razadyne®)
These drugs work by blocking the action of acetylcholinesterase, the enzyme responsible for destroying acetylcholine. Acetylcholine is one of the chemicals that helps nerve cells communicate. Researchers believe that reduced levels of acetylcholine cause some of the symptoms of Alzheimer's disease. By blocking the enzyme, these medications increase the concentration of acetylcholine in the brain. This increase is believed to help improve some memory problems and reduce some of the behavioral symptoms seen in patients with Alzheimer’s disease.
These medications do not cure Alzheimer’s disease or stop the progression of the disease. The most common side effects of these drugs are nausea, diarrhea, and vomiting. Some people may have loss of appetite, insomnia or bad dreams.
NMDA antagonist. Memantine (Namenda®) is approved by the FDA for treatment of moderate to severe Alzheimer's disease. It blocks the neurotransmitter glutamate from activating NMDA receptors on nerve cells, keeping the cells healthier. This medication works differently than the cholinesterase inhibitors. Memantine can be taken alone or taken together with a cholinesterase inhibitor.
Patients with moderate to severe Alzheimer's who were treated with memantine performed better in studies measuring the common activities of daily living such as eating, walking, toileting, bathing, and dressing compared with patients taking placebo. Patients with lower functioning may benefit the most.
Summary of medications to treat the symptoms of Alzheimer’s disease. The four current medications approved for Alzheimer’s disease have shown modest effects in preserving brain function. They may help lessen or stabilize the symptom of Alzheimer’s disease for a period of time. Due to the side effects of these drugs – especially the gastrointestinal effects -- doctors and patients should talk about their use before prescribing them. Also, these drugs should be stopped when dementia reaches advanced stages.
Managing behavior changes. Medications are available to treat some of the common behavioral symptoms of Alzheimer’s disease. For example, antidepressant drugs can be used to treat anxiety, restlessness, aggression and depression. Anti-anxiety drugs can be used to treat agitation. Anticonvulsants are sometimes used to treat aggression. Antipsychotics can be used to treat paranoia, hallucinations, and agitation. Some of the side effects of these drugs include confusion and dizziness, which can increase the risk of falls. Therefore these drugs are typically used either for short periods of time, only when behavioral problems are severe, and only after safer and/or other non-drug therapies have been tried first.''',
  ];

  var prevention = <String>[
    '''Make sure to drink and use safe water to brush your teeth, wash and prepare food, and make ice
Wash your hands often with soap and safe water*
Use latrines or bury your poop; do not poop in any body of water
Cook food well (especially seafood), keep it covered, and eat it hot. Peel fruits and vegetables*
Clean up safely in the kitchen and in places where the family bathes and washes clothes
''',
    '''Some lifestyle measures can help reduce the risk of heart disease. These include:
Eating a balanced diet: Opt for a heart-healthy diet that is rich in fiber and favors whole grains and fresh fruits and vegetables. The Mediterranean diet and the DASH diet may be good for heart health. Also, it may help to limit the intake of processed foods and added fat, salt, and sugar.
Exercising regularly: This can help strengthen the heart and circulatory system, reduce cholesterol, and maintain blood pressure. A person may wish to aim for 150 minutes of exercise per week.
Maintaining a moderate body weight: A healthy body mass index (BMI) is typically between 20 and 25. People can check their BMI here.
Quitting or avoiding smoking: Smoking is a major risk factor for heart and cardiovascular conditions.
Limiting alcohol intake: Women should consume no more than one standard drink
Trusted Source
 per day, and men should consume no more than two standard drinks per day.
Managing underlying conditions: Seek treatment for conditions that affect heart health, such as high blood pressure, obesity, and diabetes.
Taking these steps can help boost overall health and reduce the risk of heart disease and its complications
''',
    '''If you plan on living temporarily in or traveling to an area where malaria is common, talk to your provider about taking medications to prevent malaria. You will need to take the drugs before, during and after your stay. Medications can greatly reduce the chances of getting malaria. These drugs can’t be used for treatment if you do develop malaria despite taking them.
You should also take precautions to avoid mosquito bites. To lower your chances of getting malaria, you should:
Apply mosquito repellent with DEET (diethyltoluamide) to exposed skin.
Drape mosquito netting over beds.
Put screens on windows and doors.
Treat clothing, mosquito nets, tents, sleeping bags and other fabrics with an insect repellent called permethrin.
Wear long pants and long sleeves to cover your skin.
''',
    '''Rabies is preventable. Keeping your pets safe and staying away from wild animals will help prevent you from being exposed to rabies. If you’re exposed, you can get a vaccine to prevent rabies before symptoms start.
Make sure your pets’ vaccinations are up-to-date. This includes dogs, cats and ferrets.
Don’t let your pets roam free without supervision.
Leave wildlife alone. Don’t touch injured animals or try to capture animals yourself.
If you find a bat in a room where someone was sleeping, assume they’ve been bitten. Bat bites are small and fade quickly, so you might not notice them. Contact a healthcare provider right away.
If you’re bitten or scratched by a wild animal or have been exposed to rabies in some other way, contact a healthcare provider as soon as possible.
If you’re at high risk for being exposed to rabies, it’s recommended that you get vaccinated on a regular basis (pre-exposure prophylaxis/PREP).
''',
    '''The best way to prevent measles is to get vaccinated. People who work in a healthcare facility should wear personal protective equipment that includes masks, gowns and clothes when they are in contact with body fluids. You should wash your hands before and after putting on gloves.
People who work with children or who are in other industries are encouraged to avoid physical contact with sick people and to practice good hand washing techniques. Follow the guidelines of your employer.''',
    '''The best way to reduce your risk of typhoid fever is to get vaccinated if you live in or are traveling to an area where it’s common. Hand washing and safe food handling are also important for limiting the spread of typhoid.
Vaccines for preventing typhoid fever
There are two vaccines for typhoid fever. They don’t last forever — you need to get additional doses to stay protected. They greatly reduce your risk but don’t guarantee you won’t get typhoid. Vaccines may provide some protection against paratyphoid fever, though this hasn’t been tested.
Oral vaccine. The oral vaccine for typhoid is four pills that you take every other day. As of December 2020, it’s no longer available from the manufacturer.
Injectable vaccine (shot). The injectable vaccine for typhoid is a single shot. You need to get it at least two weeks before you arrive in an area where typhoid is common so your body has time to build up defenses (make antibodies). Children over 2 years old can get the typhoid shot. You’ll need to get a booster shot every two years to stay protected.
Safe food practices for preventing typhoid fever
Vaccines are the best way to protect yourself from typhoid. But you should also take steps to avoid eating or drinking things that could be contaminated with S. Typhi or other bacteria. This is true both at home and when you’re traveling. Safe food handling practices include:
Don’t make food for others if you’re sick.
Wash your hands with soap and water before and after preparing food or eating and after going to the bathroom.
Wash surfaces and utensils used for food prep and eating before and after use.
If you’re unsure whether the food you’re eating is safe, eat mostly well-cooked or packaged food.
Don’t drink untreated water or eat food prepared with untreated water. If you’re unsure, it’s safest to use bottled water to drink and cook with.
''',
    '''You usually have to be in contact with someone with active TB for a long time before becoming infected. It helps to follow infection prevention guidelines like:
Wash your hands thoroughly and often.
Coughing into your elbow or covering your mouth when you cough.
Avoiding close contact with other people.
Making sure you take all of your medication correctly.
Not returning to work or school until you’ve been cleared by your healthcare provider.
In the hospital, the most important measures to stop the spread of TB are having proper ventilation and using the correct types of personal protective equipment.
''',
    '''If you or your child has bacterial or viral pink eye, your healthcare provider may recommend staying home from work, school or daycare until you’re no longer contagious. Check with your healthcare provider to find out how long that may be. You’re usually less likely to spread the infection if you’ve been on antibiotics for 24 hours or no longer have symptoms.
Following good general hygiene and eye care practices can also help prevent the spread of pink eye.
Don’t touch or rub the infected eye(s).
Wash your hands often with soap and water.
Wash any discharge from your eyes twice a day using a fresh cotton ball. Throw away the cotton ball and wash your hands with soap and warm water afterward.
Wash your hands after applying eye drops or ointment to your eye or someone else’s eye.
Don’t share personal items such as makeup, contact lenses, towels or cups.
''',
    '''There are a few ways you can decrease your chances of having diarrhea, including:
Avoiding infections with good hygiene habits: Washing your hands with soap and water after using the bathroom, as well as cooking, handling, and eating, is an important way to prevent diarrhea. Washing your hands thoroughly can really help keep you and those around you healthy.
Getting your vaccinations: Rotavirus, one of the causes of diarrhea, can be prevented with the rotavirus vaccine. This is given to infants in several stages during the first year of life.
Storing food properly: By keeping your food stored at the right temperatures, not eating things that have gone bad, cooking food to the recommended temperature and handling all foods safely, you can prevent diarrhea.
Watching what you drink when you travel: Traveler’s diarrhea can happen when you drink water or other drinks that haven’t been treated correctly. This is most likely to happen in developing countries. To avoid getting diarrhea there are a few tips to follow. Watch what you drink. Don’t drink tap water, use ice cubes, brush your teeth with tap water, or consume unpasteurized milk, milk products or unpasteurized juices. You should also be careful when trying local foods from street vendors, eating raw or undercooked meats (and shellfish), as well as raw fruits and vegetables. When in doubt, drink bottled water or something that’s been boiled first (coffee or tea).
''',
    '''There’s no vaccine for mono. The best way to prevent getting the viruses that cause mono is by practicing good hygiene. Don’t share foods, drinks or bodily fluids with someone who has mono or any signs of viral illness, like fever, cough, sore throat or fatigue
''',
    '''Here''',
    '''Chronic complications are responsible for most illness and death associated with diabetes. Chronic complications usually appear after several years of elevated blood sugars (hyperglycemia). Since patients with Type 2 diabetes may have elevated blood sugars for several years before being diagnosed, these patients may have signs of complications at the time of diagnosis.
The complications of diabetes have been described earlier in this article. Although the complications can be wide ranging and affect many organ systems, there are many basic principles of prevention that are shared in common. These include:
Take your diabetes medications (pills and/or insulin) as prescribed by your doctor.
Take all of your other medications to treat any risk factors (high blood pressure, high cholesterol, other heart-related problems and other health conditions) as directed by your doctor.
Monitor your blood sugars closely.
Follow a healthy diet, such as the Mediterranean or Dash diet. Do not skip meals.
Exercise regularly, at least 30 minutes five days a week.
Maintain a weight that's healthy for you.
Keep yourself well-hydrated (water is your best choice).
Quit smoking, if you smoke.
See your doctor regularly to monitor your diabetes and to watch for complications.
''',
    '''Here''',
  ];

  var prognosis = <String>[
    '''Vibrio cholerae, the bacterium that causes cholera, is usually found in food or water contaminated by feces from a person with the infection. Common sources include:
Municipal water supplies
Ice made from municipal water
Foods and drinks sold by street vendors
Vegetables grown with water containing human wastes
Raw or undercooked fish and seafood caught in waters polluted with 
''',
    '''High blood pressure, high blood cholesterol, and smoking are key risk factors for heart disease.
Several other medical conditions and lifestyle choices can also put people at a higher risk for heart disease, including:
Diabetes
Overweight and obesity
Unhealthy diet
Physical inactivity
''',
    '''When a mosquito bites someone who has malaria, the mosquito becomes infected. When that mosquito bites someone else, it transfers a parasite to the other person’s bloodstream. There, the parasites multiply. There are five types of malaria parasites that can infect humans.
In rare cases, people who are pregnant and who have malaria can transfer the disease to their children before or during birth.
It’s possible, but unlikely, for malaria to be passed through blood transfusions, organ donations and hypodermic needles.
''',
    '''The rabies virus causes a rabies infection. The virus spreads through the saliva of infected animals. Infected animals can spread the virus by biting another animal or a person.
In rare cases, rabies can be spread when infected saliva gets into an open wound or the mucous membranes, such as the mouth or eyes. This could happen if an infected animal licked an open cut on your skin.
Animals that can transmit the rabies virus
Any mammal (an animal that suckles its young) can spread the rabies virus. The animals most likely to spread the rabies virus to people include:
Pets and farm animals
Cats
Cows
Dogs
Ferrets
Goats
Horses
Wild animals
Bats
Beavers
Coyotes
Foxes
Monkeys
Raccoons
Skunks
Woodchucks
In very rare cases, the virus has been spread to tissue and organ transplant recipients from an infected organ.
''',
    '''Measles is caused by an extremely contagious virus called morbillivirus. In fact, if 10 people who weren’t vaccinated were in a room with someone with measles, nine of those people would get measles. Measles is spread by:
Contaminated droplets that are spread through the air when you cough, sneeze or talk.
Kissing someone who has measles.
Sharing drinks or food with someone with measles.
Shaking hands or holding hands or hugging someone with measles.
From pregnant people to their babies — either during the pregnancy, delivery or while nursing.
The airborne respiratory droplets can remain in the room even after the person with measles is gone.
It can take six to 21 days to develop symptoms of measles after you’ve been infected. This is the incubation period. You’re contagious about four days before you develop a rash to about four days after the rash starts.
''',
    '''Typhoid fever is caused by the bacterium S. Typhi. It lives in the gut (intestines) of infected people and can contaminate food and water.
How does typhoid fever spread?
Typhoid fever usually spreads through food or water contaminated with S. Typhi. This can happen if someone with typhoid touches something you eat or drink without washing their hands. It can also happen if waste water (water that has poop or pee in it) gets into water you drink or on food you eat.
You can get typhoid from another person if they don’t wash their hands after going to the bathroom. When they touch surfaces and objects (like phones or doorknobs) they can leave bacteria behind that can transfer to the next person who touches it.
''',
    '''TB is caused by the bacterium Mycobacterium tuberculosis. The germs are spread through the air and usually infect the lungs, but can also infect other parts of the body. Although TB is infectious, it doesn’t spread easily. You usually have to spend a lot of time in contact with someone who is contagious in order to catch it.''',
    '''The pink or reddish color of pink eye happens when the blood vessels in the membrane covering your eye (the conjunctiva) gets inflamed, making them more visible. Causes of inflammation include:
Viruses. Viruses are the most common cause of pink eye. Coronaviruses, such as the common cold or COVID-19, are among the viruses that can cause pink eye.
Bacteria. Common types of bacteria that cause bacterial conjunctivitis include Staphylococcus aureus, Haemophilus influenzae, Streptococcus pneumonia and Pseudomonas aeruginosa.
Allergens. This includes molds, pollen or other substances that cause allergies.
Irritating substances. This includes shampoos, cosmetics, contact lenses, dirt, smoke and pool chlorine.
Sexually transmitted infections (STIs). A virus (herpes simplex) or bacteria (gonorrhea or chlamydia) can cause STIs. STIs can cause pink eyes in both adults and newborns.
A foreign object in your eye.
Blocked or incompletely opened tear ducts in babies.
''',
    '''The cause of most self-limited diarrhea is generally not identified. The most common cause of diarrhea is a virus that infects your bowel (“viral gastroenteritis”). The infection usually lasts a couple of days and is sometimes called “intestinal flu.”
Other possible causes of diarrhea can include:
Infection by bacteria.
Infections by other organisms and preformed toxins
Eating foods that upset the digestive system.
Allergies and intolerances to certain foods (Celiac disease or lactose intolerance).
Medications.
Radiation therapy.
Malabsorption of food (poor absorption).
''',
    '''Over 90% of mono cases are caused by the Epstein-Barr virus. Other viruses and certain infections may also bring on the illness. The symptoms can develop because of:
Adenovirus.
Cytomegalovirus (CMV).
Hepatitis A, Hepatitis B and Hepatitis C.
Herpes simplex virus (HSV).
Human immunodeficiency virus (HIV).
Rubella.
Toxoplasmosis.
''',
    '''Most causes are temporary and not serious. They may have to do with digestion, menstruation or a passing virus. For example:
Digestive issues
Abdominal pain after eating may be due to:
Indigestion.
Gas and gas pain.
Constipation.
Diarrhea.
Food allergies and intolerances.
Food poisoning.
Inflammation
Irritation or infection in your organs can cause temporary inflammation, such as:
Viral gastroenteritis (stomach flu).
Peptic ulcer disease.
Chronic acid reflux (GERD).
Urinary tract infection (UTI).
Female reproductive cycle
If you have a uterus, you might experience occasional pain from:
Menstrual cramps.
Ovulation pain.
What are the more serious causes of abdominal pain?
Sometimes abdominal pain indicates a serious medical condition that will require treatment. Pain in different regions may indicate different organs are involved. For example:
Right upper quadrant
Your upper right abdomen is home to your liver, gallbladder and bile ducts. Your right kidney is in the back. The first sections of your small and large intestines also pass through.
Upper right abdominal pain is most likely related to liver disease or gallbladder disease, such as:
Hepatitis (alcoholic, toxic, metabolic, viral or autoimmune).
Gallstones.
Cholecystitis (gallbladder inflammation).
Bile duct cancer, stones and strictures.
Gallbladder cancer.
Liver cancer.
It could also be a localized problem in your duodenum, ascending colon or right kidney, such as a:
Kidney infection.
Kidney stone.
Duodenal ulcer.
Large bowel obstruction.
Left upper quadrant
Your upper left abdomen is home to your stomach, pancreas and spleen. Your left kidney is in the back of your abdominal cavity, and your heart and left lung are right above it.
Upper left abdominal pain could mean:
Pancreatitis (inflamed pancreas).
Pancreatic cancer.
Splenomegaly (enlarged spleen).
Gastritis.
Stomach ulcer.
Bile reflux.
Stomach cancer.
Kidney infection.
Kidney stone.
If the pain is referred from your chest, it could be from:
Heartburn.
Angina.
Non Cardiac chest pain.
Heart attack.
Pericarditis.
Pneumonia.
Pleurisy.
Pulmonary embolism.
Lower abdomen
Your lower abdomen has most of your small intestine and large intestine. Pain here is most likely to be related to gastrointestinal diseases. It could also be related to your ureters, ovaries or uterus.
Abdominal causes include:
Irritable bowel syndrome.
Functional dyspepsia.
Inflammatory bowel disease (Crohn’s, ulcerative colitis).
Large or small bowel obstruction.
Small intestine cancer.
Colon cancer.
Abdominal aortic aneurysm.
Peritonitis.
Mesenteric lymphadenitis.
Intestinal (mesenteric) ischemic syndrome.
Hernia.
Kidney stones.
Pain referred from the pelvic organs could be due to:
Endometriosis.
Ovarian cysts.
Pelvic inflammatory disease.
Ectopic pregnancy.
Ovarian cancer.
Uterine cancer.
Left lower quadrant
Pain that is specifically in your lower left abdomen is most often related to diverticulosis and diverticulitis of the colon. Diverticula (small outpouchings in the bowel wall) can occur throughout your colon, but they usually develop in the lower left part.
Right lower quadrant
Pain that is specifically in your lower right abdomen may be related to your appendix. It could be inflammation (appendicitis) or more rarely, appendix cancer.
General pain
Other, general causes of stomach pain include:
Stress (psychosomatic pain).
Visceral hypersensitivity.
Abdominal bloating.
Traumatic injuries.
Muscle strain.
Shingles.
''',
    '''The cause of diabetes, regardless of the type, is having too much glucose circulating in your bloodstream. However, the reason why your blood glucose levels are high differs depending on the type of diabetes.
Causes of Type 1 diabetes: This is an immune system disease. Your body attacks and destroys insulin-producing cells in your pancreas. Without insulin to allow glucose to enter your cells, glucose builds up in your bloodstream. Genes may also play a role in some patients. Also, a virus may trigger the immune system attack.
Cause of Type 2 diabetes and prediabetes: Your body’s cells don't allow insulin to work as it should to let glucose into its cells. Your body's cells have become resistant to insulin. Your pancreas can’t keep up and make enough insulin to overcome this resistance. Glucose levels rise in your bloodstream.
Gestational diabetes: Hormones produced by the placenta during your pregnancy make your body’s cells more resistant to insulin. Your pancreas can’t make enough insulin to overcome this resistance. Too much glucose remains in your bloodstream.''',
    '''Alzheimer’s disease is caused by the abnormal build-up of proteins in the brain. The build-up of these proteins — called amyloid protein and tau protein — leads to cell death.
The human brain contains over 100 billion nerve cells as well as other cells. The nerve cells work together to fulfill all the communications needed to perform such functions as thinking, learning, remembering, and planning. Scientists believe that amyloid protein builds up in the brain cells, forming larger masses called plaques. Twisted fibers of another protein called tau form into tangles. These plaques and tangles block the communication between nerve cells, which prevents them from carrying out their processes. The slow and ongoing death of the nerve cells, starting in one area of the brain (usually in the area of the brain that controls memory) then spreading to other areas, results in the symptoms seen in patients with Alzheimer’s disease.
''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDDEDF9),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffDDEDF9),
                Color(0xffFFFFFF),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  //color: Color(0xffE7F1FF),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Color(0xff828282),
                                size: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Color(0xffE7F1FF),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                      top: 5.0,
                      bottom: 15.0,
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Most diagnosed dieases",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff219653)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    itemCount: headings.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.4))),
                        margin: const EdgeInsets.symmetric(vertical: 6.0),
                        child: GestureDetector(
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: DescriptivePage(
                                topic: headings[index],
                                overview: overview[index],
                                symptoms: symptoms[index],
                                treatment: treatment[index],
                                prevention: prevention[index],
                                prognosis: prognosis[index],
                              ),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        headings[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff828282)),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'read more...',
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff828282)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Color(0xff828282),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
