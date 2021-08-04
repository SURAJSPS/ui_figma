import 'package:flutter/material.dart';
import 'package:ui_figma/d_model.dart';
import 'package:ui_figma/my_color.dart';

// ignore: must_be_immutable
class DiaryEntrues extends StatefulWidget {
  DiaryEntriesModel? diaryEntriesModel;
  DiaryEntrues({Key? key, this.diaryEntriesModel}) : super(key: key);

  @override
  _DiaryEntruesState createState() => _DiaryEntruesState();
}

class _DiaryEntruesState extends State<DiaryEntrues> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 7.99),
      child: Container(
        height: 65,
        width: 327,
        child: Card(
          color: Color(0xFFBFCFE0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.diaryEntriesModel!.subjectName}",
                  style: TextStyle(
                    fontSize: 16,
                    color: MyColor.primary,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // width: size.width / 1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Lesson ',
                            style: TextStyle(
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                          Text(
                            "${widget.diaryEntriesModel!.lessonNumber}",
                            style: TextStyle(
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                          Text(
                            ": ",
                            style: TextStyle(),
                          ),
                          Text(
                            "${widget.diaryEntriesModel!.lessonName}",
                            style: TextStyle(
                              fontSize: 12,
                              color: MyColor.primary,
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          (widget.diaryEntriesModel!.homeWork == true)
                              ? Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/book.png',
                                      height: 10,
                                      width: 10,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Assignment",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: MyColor.primary,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/icons/done.png',
                                      height: 10,
                                      width: 10,
                                    ),
                                  ],
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/for.png',
                          height: 8,
                          width: 4,
                        ),
                        SizedBox(
                          width: 7,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
