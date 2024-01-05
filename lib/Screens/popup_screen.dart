import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopUpScreen extends StatefulWidget {
  const PopUpScreen({Key? key}) : super(key: key);

  @override
  State<PopUpScreen> createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUp'),
      ),

      body: Center(
        child: ElevatedButton(
            onPressed: () {Get.defaultDialog(
          title: 'Alert',
          content: const Text('This is a popup demo'),
          onCancel: (){
            Get.back();
          }
        );}, child: Card(

        )),
      ),
    );
  }
}
