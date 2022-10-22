
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CourseScreen(),
    );
  }
}

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.orange,
        elevation: 0,
      ),

      body: Stack(
        children: [
          Container(
            height: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(190),
                bottomRight: Radius.circular(190),
              ),
              color: Colors.orange
            ),
          ),
          Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Spanish',
                                  style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.3,
                              margin: EdgeInsets.symmetric(vertical: 30),
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Beginner',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.orangeAccent,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.diamond_outlined, color: Colors.red,),
                                  Icon(Icons.diamond_outlined, color: Colors.red,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Text('2 Milestones',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        ),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: CircularPercentIndicator(
                          radius: 55,
                          lineWidth: 4,
                          backgroundWidth: 2,
                          percent: 0.4,
                          backgroundColor: Colors.white,
                          progressColor: Colors.white,
                          center: Text('43 %',
                          style: TextStyle(
                            fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,

                          ),
                          ),


                      ),
                    ),
                  ],
                ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(2, 4),
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade600,
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                        offset: Offset(3, 4),
                                      ),
                                    ],
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/888/888071.png',
                                    scale: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Basics',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                          Text('4/5',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.yellow,
                              percent: 0.8,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(2, 4),
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          offset: Offset(3, 4),
                                        ),
                                      ]
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/4818/4818253.png',
                                    scale: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Occupations',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                          Text('1/5',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.brown,
                              percent: 0.2,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(2, 4),
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          offset: Offset(3, 4),
                                        ),
                                      ]
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/3601/3601571.png',
                                    scale: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Conversation',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                          Text('3/5',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.blue,
                              percent: 0.6,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(2, 4),
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          offset: Offset(3, 4),
                                        ),
                                      ]
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/2875/2875433.png',
                                    scale: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Places',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                          Text('1/5',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.green,
                              percent: 0.2,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(2, 4),
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          offset: Offset(3, 4),
                                        ),
                                      ]
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/2636/2636269.png',
                                    scale: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Family Members',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                          Text('3/5',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.deepOrange,
                              percent: 0.6,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(2, 4),
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                          offset: Offset(3, 4),
                                        ),
                                      ]
                                  ),
                                  child: Image.network('https://cdn-icons-png.flaticon.com/512/3137/3137066.png',
                                    scale: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text('Foods',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                          Text('2/5',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: LinearPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.red,
                              percent: 0.5,
                              lineHeight: 5,
                              barRadius: Radius.circular(18),
                              linearStrokeCap: LinearStrokeCap.round,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],

      ),
    );
  }
}
