import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nadd/results.dart';
import 'package:tflite/tflite.dart';

class SkinModelPage extends StatefulWidget {
  const SkinModelPage({super.key});

  @override
  State<SkinModelPage> createState() => _SkinModelPageState();
}

class _SkinModelPageState extends State<SkinModelPage> {
  String eczema =
      '''Eczema, also known as atopic dermatitis, is a skin problem that causes dry, itchy, scaly, red skin. It can affect infants, children, and adults and seems more common in certain families. Eczema can be treated with moisturizers and prescription ointments


Causes
Common triggers include: irritants – such as soaps and detergents, including shampoo, washing-up liquid and bubble bath. environmental factors or allergens – such as cold and dry weather, dampness, and more specific things such as house dust mites, pet fur, pollen and moulds.


Symptoms
- Dry, cracked skin.
- Itchiness (pruritus)
- Rash on swollen skin that varies in color depending on your skin color.
- Small, raised bumps, on brown or Black skin.
- Oozing and crusting.
- Thickened skin.
- Darkening of the skin around the eyes.
- Raw, sensitive skin from scratching.


Treatment
There's no cure, but many children find their symptoms naturally improve as they get older. The main treatments for atopic eczema are: emollients (moisturisers) – used every day to stop the skin becoming dry. topical corticosteroids – creams and ointments used to reduce swelling and redness during flare-ups.


Prevention
1. Limit Your Contact with Certain Household Items. If you can determine what triggers your flare-ups, do your best to avoid these items. ...
2. Wear Gloves. ...
3. Practice Good Bath and Shower Etiquette. ...
4. Moisturize. ...
5. Reduce Stress.
''';
  String cancer =
      '''Skin cancer — the abnormal growth of skin cells — most often develops on skin exposed to the sun. But this common form of cancer can also occur on areas of your skin not ordinarily exposed to sunlight.

There are three major types of skin cancer — basal cell carcinoma, squamous cell carcinoma and melanoma.

You can reduce your risk of skin cancer by limiting or avoiding exposure to ultraviolet (UV) radiation. Checking your skin for suspicious changes can help detect skin cancer at its earliest stages. Early detection of skin cancer gives you the greatest chance for successful skin cancer treatment.


Causes
Most skin cancers are caused by too much exposure to ultraviolet (UV) rays. To lower your risk of getting skin cancer, you can protect your skin from UV rays from the sun and from artificial sources like tanning beds and sunlamps.


Symptoms
A large brownish spot with darker speckles. A mole that changes in color, size or feel or that bleeds. A small lesion with an irregular border and portions that appear red, pink, white, blue or blue-black. A painful lesion that itches or burns


Prevention
1. Stay in the shade.
2. Wear clothing that covers your arms and legs.
3. Wear a hat with a wide brim to shade your face, head, ears, and neck.
4. Wear sunglasses that wrap around and block both UVA and UVB rays.
5. Use a broad spectrum sunscreen with a sun protection factor (SPF) of 15 or higher.
''';

  String vitiligo =
      '''Vitiligo (vit-ih-LIE-go) is a disease that causes loss of skin color in patches. The discolored areas usually get bigger with time. The condition can affect the skin on any part of the body. It can also affect hair and the inside of the mouth.
Normally, the color of hair and skin is determined by melanin. Vitiligo occurs when cells that produce melanin die or stop functioning. Vitiligo affects people of all skin types, but it may be more noticeable in people with brown or Black skin. The condition is not life-threatening or contagious. It can be stressful or make you feel bad about yourself.


Treatment for vitiligo may restore color to the affected skin. But it doesn't prevent continued loss of skin color or a recurrence.


Causes
What causes vitiligo? Vitiligo is caused by the lack of a pigment called melanin in the skin. Melanin is produced by skin cells called melanocytes, and it gives your skin its colour. In vitiligo, there are not enough working melanocytes to produce enough melanin in your skin.


Symptoms
- Patchy loss of skin color, which usually first appears on the hands, face, and areas around body openings and the genitals
- Premature whitening or graying of the hair on your scalp, eyelashes, eyebrows or beard
- Loss of color in the tissues that line the inside of the mouth and nose (mucous membranes)


Prevention
Use a broad-spectrum, water-resistant sunscreen with an SPF of at least 30. Apply sunscreen generously and reapply every two hours — or more often if you're swimming or sweating. You can also seek shade and wear clothing that shields your skin from the sun. Don't use tanning beds and sunlamps.
''';

  String measles =
      '''A viral infection that's serious for small children but is easily preventable by a vaccine.
The disease spreads through the air by respiratory droplets produced from coughing or sneezing.
Measles symptoms don't appear until 10 to 14 days after exposure. They include cough, runny nose, inflamed eyes, sore throat, fever and a red, blotchy skin rash.
There's no treatment to get rid of an established measles infection, but over-the-counter fever reducers or vitamin A may help with symptoms.


Causes
Measles is caused by an extremely contagious virus called morbillivirus. In fact, if 10 people who weren't vaccinated were in a room with someone with measles, nine of those people would get measles. Measles is spread by: Contaminated droplets that are spread through the air when you cough, sneeze or talk.


Symptoms
Measles symptoms don't appear until 10 to 14 days after exposure. They include cough, runny nose, inflamed eyes, sore throat, fever and a red, blotchy skin rash.


Prevention
The only way to prevent measles is to get the measles, mumps, and rubella (MMR) vaccine. One MMR vaccine provides around 93% protection against measles. A second booster dose, which started to be recommended in 1990, helps to improve the effectiveness of the measles vaccine to more than 97%


Treatment
There's no treatment to get rid of an established measles infection, but over-the-counter fever reducers or vitamin A may help with symptoms.
''';

  String lupus =
      '''An inflammatory disease caused when the immune system attacks its own tissues.
Lupus (SLE) can affect the joints, skin, kidneys, blood cells, brain, heart and lungs.
Symptoms vary but can include fatigue, joint pain, rash and fever. These can periodically get worse (flare up) and then improve.
While there's no cure for lupus, current treatments focus on improving quality of life through controlling symptoms and minimising flare-ups. This begins with lifestyle modifications, including sun protection and diet. Further disease management includes medication such as anti-inflammatories and steroids


Causes
It's likely that lupus results from a combination of your genetics and your environment. It appears that people with an inherited predisposition for lupus may develop the disease when they come into contact with something in the environment that can trigger lupus. The cause of lupus in most cases, however, is unknown


Symptoms
Symptoms vary but can include fatigue, joint pain, rash and fever. These can periodically get worse (flare up) and then improve.


Treatment
While there's no cure for lupus, current treatments focus on improving quality of life through controlling symptoms and minimising flare-ups. This begins with lifestyle modifications, including sun protection and diet. Further disease management includes medication such as anti-inflammatories and steroids.


Prevention
Exposure to UV rays from sunlight and other light sources can trigger flares in many people with lupus. Staying out of the sun between 10 a.m. and 4 p.m., applying sunscreen every day, and wearing sun-protective clothing can prevent UV rays from triggering a lupus flare.''';

  String herpes =
      '''The herpes simplex virus (HSV) is categorized into 2 types: HSV-1 and HSV-2. HSV-1 is mainly transmitted by oral-to-oral contact, causing oral herpes (including symptoms known as cold sores), but it can also lead to genital herpes. HSV-2 is a sexually transmitted infection that causes genital herpes


Causes
You can get genital herpes after coming into contact with HSV-1 or HSV-2. Most people get genital herpes from HSV-2, which they get during sex. If someone has a cold sore and performs oral sex, this can spread HSV-1 to the genitals, and cause herpes sores on the genitals.


Symptoms
- Pain or itching around the genitals.
- Small bumps or blisters around the genitals, anus or mouth.
- Painful ulcers that form when blisters rupture and ooze or bleed.
- Scabs that form as the ulcers heal.
- Painful urination.
- Discharge from the urethra, the tube that releases urine from the body.


Treatment
Is there a cure or treatment for genital herpes? There is no cure for genital herpes. However, daily use of antiviral medicines can prevent or shorten outbreaks. Antiviral medicines also can reduce the chance of spreading it to others.


Prevention
- Use condoms. Condoms are the best way to prevent STIs when you have sex. ...
- Get tested. Be sure you and your partner are tested for STIs. ...
- Be monogamous. ...
- Limit your number of sex partners. ...
- Do not douche. ...
- Do not abuse alcohol or drugs.
''';

  bool _loading = true;
  late File _image;
  late List _output;
  final picker = ImagePicker(); //allows us to pick image from gallery or camera

  @override
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //dis function disposes and clears our memory
    super.dispose();
    Tflite.close();
  }

  classifyImage(File image) async {
    //this function runs the model on the image
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults:
          5, //the amout of categories our neural network can predict (here no. of animals)
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _output = output!;
      _loading = false;
    });
  }

  loadModel() async {
    //this function loads our model
    await Tflite.loadModel(
      model: 'assets/model_unquant_skin.tflite',
      labels: 'assets/labels_skin.txt',
    );
  }

  pickImage() async {
    //this function to grab the image from camera
    var image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  pickGalleryImage() async {
    //this function to grab the image from gallery
    var image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDDEDF9),
        body: Container(
          decoration: const BoxDecoration(
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
                            children: const [
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
                                "Dermatology",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff219653)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    children: [
                      _loading == true
                          ? Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: const AssetImage(
                                            "assets/dentist_pic.jpg"),
                                        colorFilter: ColorFilter.mode(
                                          const Color(0xff828282)
                                              .withOpacity(0.4),
                                          BlendMode.modulate,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 260,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 40,
                                      ),
                                      child: Text(
                                        "Please picture or select your skin image to be diagnosed by the NADD dermatology.",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    pickGalleryImage(),
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Color(0xff219653),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                        child: Text(
                                      'Open gallery',
                                      style: TextStyle(
                                          color: Color(0xfff5f8ff),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    pickImage(),
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Color(0xff9B51E0),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                        child: Text(
                                      'Open camera',
                                      style: TextStyle(
                                          color: Color(0xfff5f8ff),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: FileImage(_image),
                                        colorFilter: ColorFilter.mode(
                                          const Color(0xff828282)
                                              .withOpacity(1),
                                          BlendMode.modulate,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 260,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    pickGalleryImage(),
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Color(0xff219653),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                        child: Text(
                                      'Open gallery',
                                      style: TextStyle(
                                          color: Color(0xfff5f8ff),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    pickImage(),
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Color(0xff9B51E0),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                        child: Text(
                                      'Open camera',
                                      style: TextStyle(
                                          color: Color(0xfff5f8ff),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )),
                                  ),
                                ),
                                Results(
                                  image: _image,
                                  output: _output,
                                  description: _output[0]['label'] == "Eczema"
                                      ? eczema
                                      : _output[0]['label'] == "Skin Cancer"
                                          ? cancer
                                          : _output[0]['label'] == "Vitiligo"
                                              ? vitiligo
                                              : _output[0]['label'] == "Measles"
                                                  ? measles
                                                  : _output[0]['label'] ==
                                                          "Lupus"
                                                      ? lupus
                                                      : _output[0]['label'] ==
                                                              "Herpes"
                                                          ? herpes
                                                          : "Not Identified",
                                ),
                              ],
                            ),
                      //Image.file(image!),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
