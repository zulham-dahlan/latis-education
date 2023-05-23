import 'dart:io';

import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';
import 'package:latiseducation_app/widget/new_post_feature.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:file_picker/file_picker.dart';

class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  TextEditingController descriptionController = TextEditingController();
  File? uploadedImage;
  File? uploadedFile;
  bool isImageUploaded = false;
  bool isFileUploaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'Bagikan Postingan',
            style: TextStyle(fontSize: 18),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 24, top: 24),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                'POSTING',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
      backgroundColor: primaryColor,
      body: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'images/avatar_satu.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Kak Jihan',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1.0,
                  color: greyColor,
                ),
              ),
              child: Center(
                child: TextFormField(
                  maxLines: 6,
                  controller: descriptionController,
                  decoration: const InputDecoration.collapsed(
                    hintText:
                        'Bagikan modul,bahan ajar, kunci jawaban, foto, video mengajar, nilai siswa, portofolio mengajar kakak di sini',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            NewPostFeature(
              icon: Icons.camera_alt,
              colorIcon: Colors.green,
              nameFeature: 'Tambah Foto / Video',
              function: () async {
                await ImagePicker()
                    .pickImage(source: ImageSource.gallery)
                    .then((image) {
                  setState(() {
                    uploadedImage = File(image!.path);
                    isImageUploaded = true;
                  });
                });
              },
            ),
            NewPostFeature(
              icon: Icons.attach_file,
              colorIcon: Colors.purple,
              nameFeature: 'Tambah File',
              function: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  allowedExtensions: ['pdf', 'doc'],
                );
                if (result != null) {
                  setState(() {
                    uploadedFile = File(result.files.single.path!);
                    isFileUploaded = true;
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
