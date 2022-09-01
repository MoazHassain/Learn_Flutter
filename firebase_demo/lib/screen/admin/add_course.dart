import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _feeController = TextEditingController();
  XFile? _courseImage;
  String? imageUrl;

  // choosing image from gallery or camera
  ChooseImage() async {
    ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  WriteData() async {
    // uploading image to firebase
    File imageFile = File(_courseImage!.path);

    FirebaseStorage _storage = FirebaseStorage.instance;
    // created image folder and put image file into that folder
    UploadTask _uploadTask =
        _storage.ref('images').child(_courseImage!.name).putFile(imageFile);

    // getting the download link from firebase storage
    TaskSnapshot snapshot = await _uploadTask;
    imageUrl = await snapshot.ref.getDownloadURL();

    CollectionReference _courseCollection =
        FirebaseFirestore.instance.collection('courses');
    _courseCollection.add({
      'course_name': _titleController.text,
      'course_fee': _feeController.text,
      'img': imageUrl
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      padding: EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 26,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: Color.fromARGB(255, 229, 232, 236),
      ),
      child: Column(
        children: [
          CustomTextField(_titleController, "Course Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(_feeController, "Course Fee"),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Center(
              child: _courseImage == null
                  ? FloatingActionButton(
                      onPressed: () {
                        ChooseImage();
                      },
                      child: Icon(
                        Icons.photo_camera,
                        size: 32,
                      ),
                    )
                  : Image.file(
                      File(_courseImage!.path),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {
                WriteData();
              },
              child: Text(
                "ADD COURSE",
              ),
            ),
          )
        ],
      ),
    );
  }

  TextField CustomTextField(TextEditingController _controller, String _hint) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: _hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
