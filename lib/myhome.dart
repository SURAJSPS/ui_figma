import 'package:flutter/material.dart';
import 'package:ui_figma/d_util.dart';
import 'package:ui_figma/diary_entries.dart';
import 'package:ui_figma/my_color.dart';
import 'package:ui_figma/p_d_util.dart';
import 'package:ui_figma/p_diary_entries.dart';
import 'package:ui_figma/selected.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor.background,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 63,
            ),
            getAppBar(),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Color(0xFF3D5066).withOpacity(.3),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "Today's Diary Entries",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: MyColor.primary),
                          ),
                          SizedBox(
                            width: 27,
                          ),
                          Text(
                            '15th May,2020',
                            style:
                                TextStyle(fontSize: 12, color: Color(0xFF7D96B2)),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(),
                        children: [
                          TextSpan(
                            text: '8 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                          TextSpan(
                            text: 'Class,',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                          TextSpan(
                            text: ' 6 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                          TextSpan(
                            text: 'Chapters',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Selected(),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DiaryData.diaryEntries.length,
                itemBuilder: (context, index) {
                  return DiaryEntrues(
                    diaryEntriesModel: DiaryData.diaryEntries[index],
                  );
                }),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Previous',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: MyColor.primary),
                  ),
                  Image.asset(
                    'assets/icons/date.png',
                    height: 20,
                    width: 18,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: PDiaryData.pdiaryEntries.length,
                itemBuilder: (context, index) {
                  return PDiaryEntries(
                      pDiaryEntriesModel: PDiaryData.pdiaryEntries[index]);
                }),
          ],
        ),
      ),
    );
  }
}

// AppBar
Widget getAppBar() {
  return FittedBox(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/1.png',
            height: 16,
            width: 16,
            color: MyColor.primary,
          ),
          SizedBox(
            width: 90,
          ),
          Container(
            width: 123,
            child: Text(
              'Class Diray',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: MyColor.primary,
                  fontSize: 22),
            ),
          ),
          SizedBox(
            width: 86,
          ),
          Image.asset(
            'assets/icons/me.png',
            height: 24,
            width: 24,
            color: MyColor.primary,
          )
        ],
      ),
    ),
  );
}

// Widget getColumn(context) {
//   Size size = MediaQuery.of(context).size;
//   return }
