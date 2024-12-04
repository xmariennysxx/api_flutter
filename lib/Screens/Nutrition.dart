// ignore_for_file: file_names

import 'dart:io';
import 'package:app/Screens/barChart.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({super.key});

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  File? image;
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: image == null
                  ? const Image(
                      image: AssetImage(
                        "assets/download.jpg",
                      ),
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    )
                  : Image.file(
                      image!,
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              onTap: () {
                pickImage(ImageSource.gallery);
              },
              leading: const Icon(
                Icons.photo_size_select_actual_outlined,
                size: 25,
              ),
              title: const Text(
                "Choose from Gallery",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 2),
              ),
              tileColor: Colors.brown[100],
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  pickImage(ImageSource.camera);
                },
                leading: const Icon(
                  Icons.camera_alt_outlined,
                  size: 25,
                ),
                title: const Text(
                  "Use Camera",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                      letterSpacing: 2),
                ),
                tileColor: Colors.brown[100],
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              )),
          ElevatedButton(
              onPressed:() {
                Navigator.pushReplacement(context, PageTransition(
                    type: PageTransitionType.rotate,
                    alignment: Alignment.bottomCenter,
                    child: const BarCard()),);
              },
              child: const Text("BarChart"))
        ],
      ),
    );
  }

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File imagePath = await saveImagePermanently(image.path);
      name = image.name;
      setState(() {
        this.image = imagePath;
      });
      uploadFile();
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image:$e');
      }
    }
  }

  Future<File> saveImagePermanently(String path) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(path);
    final image = File('${directory.path}/$name');
    return File(path).copy(image.path);
  }

  Future uploadFile() async {
    final path = 'images/$name';
    final ref = FirebaseStorage.instance.ref().child(path);
    var uploadTask = ref.putFile(image!);
    final snapshot = await uploadTask.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    if (kDebugMode) {
      print('Dowload link:$urlDownload');
    }
  }
}