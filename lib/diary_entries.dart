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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 7.99),
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFBFCFE0),
          ),
          height: 65,
          width: size.width,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "${widget.diaryEntriesModel!.subjectName}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: MyColor.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 14,
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
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "${widget.diaryEntriesModel!.lessonName}",
                              style: TextStyle(
                                fontSize: 12,
                                color: MyColor.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      (widget.diaryEntriesModel!.homeWork == true)
                          ? Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Image.asset(
                                    'assets/icons/book.png',
                                    height: 10,
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 54,
                                    child: Text(
                                      "Homework",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: MyColor.primary,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Image.asset(
                                    'assets/icons/done.png',
                                    height: 10,
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 16.1,
                bottom: 16.1,
                child: Image.asset(
                  'assets/icons/for.png',
                  height: 8,
                  width: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
