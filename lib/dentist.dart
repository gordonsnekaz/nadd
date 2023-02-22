import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nadd/results.dart';
import 'package:tflite/tflite.dart';

class DentistPage extends StatefulWidget {
  const DentistPage({super.key});

  @override
  State<DentistPage> createState() => _DentistPageState();
}

class _DentistPageState extends State<DentistPage> {
  String stainedTeeth =
      '''Stained teeth have proven themselves to be one of our nation’s most common pet peeves. There is a wide variety of teeth whitening treatments on today’s dental market, but what causes stained teeth? Teeth can stain for many different reasons. Your oral hygiene, medication use and food and drink choices can all be causes of stained teeth. Teeth stains occur on the surface of the tooth or below the tooth enamel. Some people develop both types of teeth stains. Here at Manor House Dental, we understand the growing demand for white teeth, and have listed types and causes below to help you decide on the best treatment for you.
\n\nCauses 
- Foods/drinks. Coffee, tea, colas, wines, and certain fruits and vegetables (for example, apples, and potatoes) can stain your teeth.
- Tobacco use.Smoking or chewing tobacco can stain teeth.
- Poor dental hygiene. Not brushing, flossing, and rinsing enough to remove plaque and stain-producing substances.
- Disease. Several diseases that affect enamel (the hard surface of the teeth) and dentin (the underlying material under enamel) can lead to tooth discoloration. Treatments for certain conditions can also affect tooth color. For example, head and neck radiation and chemotherapy can cause teeth discoloration. In addition, certain infections in pregnant mothers can lead to tooth discoloration in their babies by affecting enamel development.
- Medications. The antibiotics tetracycline and doxycycline are known to discolor teeth when given to children whose teeth are still developing (before age 8). Mouth rinses and washes containing chlorhexidine and cetylpyridinium chloride can also stain teeth. Antihistamines (like Benadryl), antipsychotic drugs, and drugs for high blood pressure also cause teeth discoloration.
- Dental materials. Some of the materials used in dentistry, such as amalgam restorations, especially silver sulfide-containing materials, can cast a gray-black color to teeth.
- Aging. As you age, the outer layer of enamel on your teeth wears away, revealing the natural color of dentin.
- Genetics. Some people have naturally brighter or thicker enamel than others.
- Environment. Excessive fluoride either from environmental sources (naturally high fluoride levels in water) or from excessive use (fluoride applications, rinses, toothpaste, and fluoride supplements taken by mouth) can cause teeth discoloration.


Treatment
1. Using tooth brushing and flossing techniques.
2. Avoiding the foods and beverages that cause stains.
3. Using over-the-counter whitening agents. ...
4. In-home whitening agents purchased from your dentist.
5. Bonding. A dentist or prosthodontist fuses material to stained areas of your teeth to change their color or shape.
6. Veneers. A dentist or prosthodontist puts a thin shell of material over the entire front of your tooth to change the color or shape.


Prevention 
Things you eat or drink that can leave a mark on your hands or clothes can also stain your choppers. That's why it's a good idea to brush or rinse your mouth after you've enjoyed them. Stain makers to watch out for include:
- Coffee or tea
- Soda
- Red and white wine
- Grape or cranberry juice
- Blueberries
- Beets
- Soy sauce
- Tomato sauce
''';

  String toothDecay =
      '''Tooth decay (dental caries) is damage to a tooth that can happen when decay-causing bacteria in your mouth make acids that attack the tooth’s surface, or enamel. This can lead to a small hole in a tooth, called a cavity. If tooth decay is not treated, it can cause pain, infection, and even tooth loss.


Causes
Tooth decay can occur when acid is produced from plaque, which builds up on your teeth. If plaque is allowed to build up, it can lead to further problems, such as dental caries (holes in the teeth), gum disease or dental abscesses, which are collections of pus at the end of the teeth or in the gums.

- Cutting Off Regular Dental Checkups
- Untreated Medical Disease
- Dry Mouth
- Poor Oral Hygiene
- Sugars and Starches



Symptoms of Tooth Decay
1. Tooth sensitivity to too hot or cold foods and drinks.
2. Sharp pain in your mouth after consuming hot, cold or sweet things.
3. Unpleasant taste in your mouth.
4. Bad breath.
5. Gray, brown or black spots on your teeth.
6. Facial swelling caused by a dental abscess.
7. Mouth pain and toothache which feels like a sharp pain.


Prevention
- Use fluoride toothpaste after eating or drinking.
- Brush your teeth at least twice a day and do not forget to brush your tongue as well.
- Floss your teeth everyday and use mouthwash regularly.
- Avoid sugary foods and drinks.
- Visit a dentist regularly.
- Have a good oral hygiene routine.
- Do not miss any regular dental checkups.
- Try to have nutritious and balanced meals.
- Chewing sugar free gum after meals helps for the saliva production.
''';
  String gumProblem =
      '''In its early stage, called gingivitis, the gums can become swollen and red, and they may bleed. In its more serious form, called periodontitis, the gums can pull away from the tooth, bone can be lost, and the teeth may loosen or even fall out. Periodontal disease is mostly seen in adults.


Causes
Gum disease is caused by a build-up of plaque on the teeth. Plaque is a sticky substance that contains bacteria. Some bacteria in plaque are harmless, but some are harmful for the health of your gums. If you don't remove plaque from your teeth by brushing them, it builds up and irritates your gums


Treatment
A person can be free of gum disease with an aggressive approach. The dentist can also employ methods such as scaling and root planing to help the patient heal. These processes are ways of deep-cleaning the gumline and eliminating bacteria. Surgical procedures are also available to halt the disease.


Prevention
1. Brush With Fluoridated Toothpaste. Fluorine helps strengthen your teeth. 
2. Floss Regularly. Flossing is something that you need to do at least once a day. 
3. Use An Antibacterial Mouthwash. 
4. Get Regular Dental Cleanings. 
5. Stop Smoking. 
6. Watch Your Diet.
''';

  String crookedTeth =
      '''Misaligned Teeth – Misaligned teeth or malocclusion is caused when the size of the upper or the lower jaw is smaller than usual. Misaligned jaws result in problems such as overbite and underbite.


Causes
Crooked teeth can be genetic. Crowding, jaw size, jaw shape, having too many teeth (hyperdontia), overbites, underbites, and poor tooth or palate development are some of the conditions that can be passed down in your family


Treatment
Fortunately, there are many treatment options for crooked teeth, including braces, removable aligners, and teeth straightening surgery.


Prevention
1. No more thumb sucking. Many toddlers take comfort in sucking their thumbs, but the sooner you can encourage them to break this habit, the better for them. ...
2. Teach good oral hygiene. ...
3. Respond quickly to tooth loss. ...
4. Catch it early.
''';

  String toothErosion =
      '''Dental erosion occurs when acids dissolve away part of the enamel surface of your teeth. It is usually caused by acidic drinks or medicines, excessive vomiting or acid reflux. Erosion is not caused by bacteria, so it is different to tooth decay.
Dental erosion can occur at any age. But it can be particularly severe in elderly people with dry mouths if they don’t produce enough saliva to flush out and neutralise acids.


Causes
Acidic foods and drinks such as fruit and fruit juices - particularly citrus ones including lemon and orange - contain natural acids which can be harmful to your teeth, especially if you have a lot of them often. 'Alcopops', 'coolers' and 'designer drinks' that contain acidic fruits and are fizzy can cause erosion too.


Treatment
If dental erosion is untreated, it can lead to the loss of tooth structure. This can require treatment to the outside and interior of the tooth and nerves. Treatments include:
- veneers
- fillings
- crowns
- root canal treatment
- tooth extraction
- prevention


To prevent dental erosion:
- cut down on fruit juices, sports drinks, soft drinks and diet drinks
- cut down on acidic foods
- drink water after eating acidic foods, in between meals and after drinking tea or coffee
- rinse your mouth with water or milk after vomiting
- chew sugar-free gum for 20 minutes after eating acidic foods to increase saliva
- avoid alcohol and do not eat for 3 hours before bedtime to reduce acid reflux
- have regular dental or oral health check-ups
''';
  var description = '';
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
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
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
                                "NADD Dentist",
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
                                        "Please picture or select your teeth image to be diagnosed by the NADD dentist.",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
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
                                /*Stained Teeth
                                  Cavities and Tooth Decay
                                  Crooked Teeth
                                  Acid Teeth Erosion
                                  Gum Problem */
                                Results(
                                  image: _image,
                                  output: _output,
                                  description: _output[0]['label'] ==
                                          "Cavities and Tooth Decay"
                                      ? toothDecay
                                      : _output[0]['label'] == "Crooked Teeth"
                                          ? crookedTeth
                                          : _output[0]['label'] == "Gum Problem"
                                              ? gumProblem
                                              : _output[0]['label'] ==
                                                      "Stained Teeth"
                                                  ? stainedTeeth
                                                  : _output[0]['label'] ==
                                                          "Acid Teeth Erosion"
                                                      ? toothErosion
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
