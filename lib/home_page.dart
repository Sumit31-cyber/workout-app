import 'dart:convert';
import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/video_info.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      setState(() {
        info = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                      color: color.AppColor.homePageTitle,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  color: color.AppColor.homePageIcons,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: color.AppColor.homePageIcons,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: color.AppColor.homePageIcons,
                  size: 20,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Your Program',
                  style: TextStyle(
                      color: color.AppColor.homePageSubtitle,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    color: color.AppColor.homePageDetail,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => VideoInfo());
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: color.AppColor.homePageIcons,
                    size: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 202,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 20,
                      color: color.AppColor.gradientSecond.withOpacity(0.3))
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Workout',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Legs Training',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'and Glutes workout',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: color.AppColor.homePageContainerTextSmall,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '60 min',
                              style: TextStyle(
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  color: color.AppColor.gradientFirst,
                                  blurRadius: 10,
                                  offset: Offset(4, 8),
                                )
                              ]),
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/card.jpg'),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 40,
                              offset: Offset(8, 10),
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.3)),
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-1, -5),
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.3))
                        ]),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 200, bottom: 40),
                    decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/figure.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 150, top: 50),
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: color.AppColor.homePageDetail),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Keep it up\n',
                              style: TextStyle(
                                  color: color.AppColor.homePagePlanColor,
                                  fontSize: 16),
                              children: [TextSpan(text: "stick to your plan")]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Area of focus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle),
                )
              ],
            ),
            Expanded(
                child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: (info.length.toDouble() / 2).toInt(), // 2
                  itemBuilder: (context, index) {
                    int a = 2 * index;
                    int b = 2 * index + 1;
                    return Row(
                      children: [
                        Container(
                          height: 170,
                          margin:
                              EdgeInsets.only(left: 30, bottom: 15, top: 15),
                          width: (MediaQuery.of(context).size.width - 90) / 2,
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.1)),
                              BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.1))
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                info[a]['img'],
                              ),
                            ),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[a]['title'],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 170,
                          margin:
                              EdgeInsets.only(left: 30, bottom: 15, top: 15),
                          width: (MediaQuery.of(context).size.width - 90) / 2,
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.1)),
                              BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(0.1))
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                info[b]['img'],
                              ),
                            ),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[b]['title'],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
