import 'package:flutter/material.dart';

class CommonReports extends StatelessWidget {
  List<String> images = [
    'assets/cover1.png',
    'assets/cover2.png',
    'assets/cover3.png',
    'assets/cover4.png',
    'assets/cover5.png',
  ];

  List<String> side = [
    'assets/pictures1.png',
    'assets/pictures2.png',
    'assets/pictures3.png',
    'assets/pictures4.png',
    'assets/pictures5.png',
  ];

  List<String> headings = [
    'Farming initiative',
    'We have started',
    'Harvesting season',
    'Farming Initiative',
    'Farming Initiative',
  ];
  List<String> line = [
    'We are thankful for the donations we..',
  ];
  List<String> names = [
    'Macdel Hoger Geovany',
    'Wonder Jewelry',
    'Delicias Las Conejas',
    'Macdel Hoger Geovany',
    'Macdel Hoger Geovany',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 10),
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (context, index) => SizedBox(
          height: 0,
        ),
        itemBuilder: (context, index) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                index == 0
                    ? Container(
                        padding: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Yesterday',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )
                    : index == 2
                        ? Container(
                            padding: EdgeInsets.only(left: 12, top: 10),
                            child: Text(
                              '9th Apr 2022',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          )
                        : index == 3
                            ? Container(
                                padding: EdgeInsets.only(left: 12, top: 10),
                                child: Text('24th Mar 2022 ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              )
                            : SizedBox.shrink(),
                Container(
                  margin: EdgeInsets.only(right: 10.2, left: 10.2, top: 10),
                  height: 89.25,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 26,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage(images[index]),
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 14, left: 5),
                              child: Text(headings[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff161616))),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 6, top: 4, bottom: 4),
                                child: Text(line[0],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF161616)
                                            .withOpacity(0.5)))),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 6, right: 4),
                                  child: Image(
                                      image: AssetImage('assets/draw1.png'))),
                              Text(names[index],
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff161616))),
                            ]),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Image(image: AssetImage(side[index]))),
                            Text('18:30',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF161616).withOpacity(0.5))),
                          ]),
                    ],
                  ), //row
                ),
              ]);
        },
      ),
    );
  }
}
