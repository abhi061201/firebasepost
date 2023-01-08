

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class UploadImagebutton extends StatefulWidget {
  const UploadImagebutton({super.key});

  @override
  State<UploadImagebutton> createState() => _UploadImagebuttonState();
}

class _UploadImagebuttonState extends State<UploadImagebutton> {
  var file=null;
  ImagefromCamera() async {
    Navigator.pop(context);
    file = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 675,
      maxWidth: 960,
    );
    setState(() {
      file= this.file;
    });
  }

  ImagefromGallery() async {
    Navigator.pop(context);
    file = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 675,
      maxWidth: 960,
    );
    setState(() {
      file = this.file;
    });
  }

  seleceImage(parentcontext) {
    return showDialog(
      context: parentcontext,
      builder: (context) {
        return SimpleDialog(
          title: Text(
            'create post',
          ),
          children: [
            SimpleDialogOption(
              child: Text(
                'Select from local',
              ),
              onPressed: () {
                return ImagefromCamera();
              },
            ),
            SimpleDialogOption(
              child: Text(
                'Select from Gallery',
              ),
              onPressed: () {
                return ImagefromGallery();
              },
            ),
            SimpleDialogOption(
              child: Text(
                'Cancel',
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return file==null? Scaffold(
      appBar: AppBar(
        title: const Text(
          'Upload Image Button',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              return seleceImage(context);
            },
            child: const Text('upload Image'),
          ),
        ],
      ),
    ): Text('File Uploaded');
  }
}
