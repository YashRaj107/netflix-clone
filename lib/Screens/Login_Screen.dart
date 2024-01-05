import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/Screens/Netflix.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailCont = TextEditingController();
    TextEditingController _passCont = TextEditingController();
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: _height,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 0, 0, 5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/mh4.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          'assets/images/netflix2.png',
                        ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25,280,25,40),
                      child: Container(height:250 ,
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SingleChildScrollView(
                              child: TextField(
                                controller: _emailCont,
                                decoration: InputDecoration(filled: true,
                                  fillColor: Colors.black,
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(width: 1,color: Colors.red)),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(width: 1,color: Colors.red)),
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.mail_sharp),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: TextField(
                                controller: _passCont,
                                obscureText: true,
                                decoration: InputDecoration(filled: true,
                                  fillColor: Colors.black,
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(width: 1,color: Colors.red)),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(width: 1,color: Colors.red)),
                                  hintText: 'Password',
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(

                              ),
                                onPressed: () {
                                  Get.to(() => Netflix());
                                },
                                child: Text('Sign in'))
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
