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
    return Scaffold(
      backgroundColor: MyColor.background,
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset(
          'assets/icons/1.png',
          height: 16,
          width: 16,
          color: MyColor.primary,
        ),
        title: Text(
          'Class Diray',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: MyColor.primary,
              fontSize: 22),
        ),
        actions: [
          Row(
            children: [
              Image.asset(
                'assets/icons/me.png',
                height: 24,
                width: 24,
                color: MyColor.primary,
              ),
              SizedBox(
                width: 16,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Divider(
              color: Color(0xFF3D5066).withOpacity(.3),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
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
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: MyColor.primary),
                      children: [
                        TextSpan(
                          text: '8 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        TextSpan(
                          text: 'Class,',
                        ),
                        TextSpan(
                          text: '6',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        TextSpan(
                          text: ' Chapters',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Selected(),
            SizedBox(
              height: 8,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DiaryData.diaryEntries.length,
                itemBuilder: (context, index) {
                  return DiaryEntrues(
                    diaryEntriesModel: DiaryData.diaryEntries[index],
                  );
                }),
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
              height: 26,
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

// Widget getColumn(context) {
//   Size size = MediaQuery.of(context).size;
//   return }
