import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/Constants/video_Player.dart';
import 'package:netflix/lists/list_views.dart';

class Netflix extends StatefulWidget {
   const Netflix({Key? key}) : super(key: key);

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
    void initState() {
    pamplatesList.shuffle();
    newPamplatesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 615,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mh3.webp'),
                            fit: BoxFit.fill,
                          ),
                         ),
                    ),
                    Container(decoration: const BoxDecoration( gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,stops: [0.7,1],
                        colors: [Colors.black12,Colors.black])),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/netflix.png'),
                                        fit: BoxFit.fitWidth),
                                  ),
                                ),
                                Container(
                                  width: 180,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.cast_sharp),
                                      Icon(Icons.search_sharp),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset('assets/images/user.jpg'),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 528),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: const [Icon(Icons.add), Text('My List')],
                                  ),
                                  Container(
                                    width: 85,
                                    height: 35,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          Icons.play_arrow,
                                          size: 25,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          'Play',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Icon(Icons.info_outline),
                                      Text('Info')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Text(
                  'Comedy',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 170,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: pamplatesList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index){
                    return pamplatesList[index];
                  }),
                ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Container(height: 280,
                //     child: Row(
                //       children: [
                //         Container(
                //           width: 150,
                //           height: 350,
                //           margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //           decoration: const BoxDecoration(),
                //           child: const Image(
                //             image: AssetImage('assets/images/rushhour.jpg'),
                //           ),
                //         ),
                //         Container(
                //           width: 150,
                //           height: 350,
                //           margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //           decoration: const BoxDecoration(),
                //           child: const Image(
                //             image: AssetImage('assets/images/manfromtoronto.jpg'),
                //           ),
                //         ),
                //         InkWell(
                //           onTap: (){
                //             Get.defaultDialog(
                //                 title: 'Alert',
                //                 content: Container(height: 250,width: 250,
                //                   child: CustomYoutubePlayer(),),
                //                 onCancel: (){
                //                   Get.back();
                //                 }
                //             );
                //           },
                //           child: Container(
                //             width: 150,
                //             height: 350,
                //             margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //             decoration: const BoxDecoration(),
                //             child: const Image(
                //               image: const AssetImage('assets/images/mh3.webp'),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                const Text(
                  'Made in India',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 170,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: newPamplatesList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index){
                        return newPamplatesList[index];
                      }),
                ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Container(height: 280,
                //     child: Row(
                //       children: [
                //         Container(
                //           width: 150,
                //           height: 350,
                //           margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //           decoration: const BoxDecoration(),
                //           child: const Image(
                //             image: AssetImage('assets/images/rushhour.jpg'),
                //           ),
                //         ),
                //         Container(
                //           width: 150,
                //           height: 350,
                //           margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //           decoration: const BoxDecoration(),
                //           child: const Image(
                //             image: AssetImage('assets/images/manfromtoronto.jpg'),
                //           ),
                //         ),
                //         Container(
                //           width: 150,
                //           height: 350,
                //           margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //           decoration: const BoxDecoration(),
                //           child: const Image(
                //             image: const AssetImage('assets/images/mh3.webp'),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
