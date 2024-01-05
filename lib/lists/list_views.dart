import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/Constants/video_Player.dart';

List<Pamplates> pamplatesList = [
  Pamplates(
      image: 'manfromtoronto.jpg',
      name: 'Man From Toronto',
      year: '2018',
      board: 'U/A 18+',
      seasons: 'Part 1',
      description:
          'The movie is based on a shooter and a loser , the loser accidentally reaches to the shooter spot but forcefully has to join the shooter .'),
  Pamplates(
      image: 'rushhour.jpg',
      name: 'Rush Hour',
      year: '2018',
      board: 'U/A 18+',
      seasons: 'Part 1',
      description:
          'The movie is based on a shooter and a loser , the loser accidentally reaches to the shooter spot but forcefully has to join the shooter .'),
  Pamplates(
      image: 'moneyheist.jpg',
      name: 'Money Heist',
      year: '2018',
      board: 'U/A 18+',
      seasons: '5 Seasons',
      description:
          'The movie is based on a shooter and a loser , the loser accidentally reaches to the shooter spot but forcefully has to join the shooter .'),
  Pamplates(
      image: 'allofus.jpg',
      name: 'All Of Us Are Dead',
      year: '2021',
      board: 'U/A 13+',
      seasons: 'Part 1',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'annathe.jpg',
      name: 'Annaatthee',
      year: '2022',
      board: 'U/A ',
      seasons: 'Part 1',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'kotafact.jpg',
      name: 'Kota Factory',
      year: '2022',
      board: 'U/A ',
      seasons: '2 Seasons',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'lucifer.webp',
      name: 'Lucifer',
      year: '2022',
      board: 'U/A 13+',
      seasons: '6 Seasons',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: '13reaosns.webp',
      name: '13 Reasons Why?',
      year: '2022',
      board: 'U/A 13+',
      seasons: '4 Seasons',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'lukachuppi.webp',
      name: 'Luka Chuppi',
      year: '2019',
      board: 'U/A 13+',
      seasons: 'Part 1',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
];
List<Pamplates> newPamplatesList = [
  Pamplates(
      image: 'kotafact.jpg',
      name: 'Kota Factory',
      year: '2022',
      board: 'U/A ',
      seasons: '2 Seasons',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'lucifer.webp',
      name: 'Lucifer',
      year: '2022',
      board: 'U/A 13+',
      seasons: '6 Seasons',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: '13reaosns.webp',
      name: '13 Reasons Why?',
      year: '2022',
      board: 'U/A 13+',
      seasons: '4 Seasons',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'lukachuppi.webp',
      name: 'Luka Chuppi',
      year: '2019',
      board: 'U/A 13+',
      seasons: 'Part 1',
      description:
          'The movie has a sensitive content of dead people which are caused by a virus and a child and a women survive from them.'),
  Pamplates(
      image: 'manfromtoronto.jpg',
      name: 'Man From Toronto',
      year: '2018',
      board: 'U/A 18+',
      seasons: 'Part 1',
      description:
          'The movie is based on a shooter and a loser , the loser accidentally reaches to the shooter spot but forcefully has to join the shooter .'),
  Pamplates(
      image: 'rushhour.jpg',
      name: 'Rush Hour',
      year: '2018',
      board: 'U/A 18+',
      seasons: 'Part 1',
      description:
          'The movie is based on a shooter and a loser , the loser accidentally reaches to the shooter spot but forcefully has to join the shooter .'),
];

class Pamplates extends StatelessWidget {
  Pamplates(
      {Key? key,
      required this.image,
      required this.name,
      required this.year,
      required this.board,
      required this.seasons,
      required this.description})
      : super(key: key);

  final String image;
  final String name;
  final String year;
  final String board;
  final String seasons;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(
            enableDrag: false,
            Container(height: 400,
              color: Colors.grey[850],
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/$image'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                FittedBox(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        name,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),
                                      ),
                                      Container(
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.close,size: 15,),
                                          )),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(year),
                                      Text(board),
                                      Text(seasons),
                                    ],
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     Container(
                                //       child: SizedBox(height:400,
                                //           child: SingleChildScrollView(scrollDirection: Axis.vertical,
                                //               child: Flexible(child: Text(description,maxLines: 4,overflow: TextOverflow.ellipsis,)),
                                //           )
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.white),
                                  child: IconButton(
                                      onPressed: () {
                                        Get.defaultDialog(
                                            title: '',
                                            content: Container(height:410,
                                              width: 410,
                                              child: CustomYoutubePlayer(),),
                                            onCancel: (){
                                              Get.back();
                                            }
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.play_arrow_sharp,
                                        color: Colors.black,
                                      )),
                                ),
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[400]),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow_sharp,
                                      color: Colors.white,
                                    ))),
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[400]),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow_sharp,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Divider(thickness: 2,
                          color: Colors.grey[400],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.info_outlined),
                            Text('Episodes & Info'),
                            Container(child: Icon(Icons.arrow_forward_ios_sharp)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            barrierColor: Colors.transparent,
            backgroundColor: Colors.grey[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: 170,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: AssetImage(
                'assets/images/$image',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
