import 'package:flutter/material.dart';
import 'package:ui_figma/my_color.dart';
import 'package:ui_figma/p_d_model.dart';

// ignore: must_be_immutable
class PDiaryEntries extends StatefulWidget {
  PDiaryEntriesModel? pDiaryEntriesModel;
  PDiaryEntries({Key? key, this.pDiaryEntriesModel}) : super(key: key);

  @override
  _PDiaryEntriesState createState() => _PDiaryEntriesState();
}

class _PDiaryEntriesState extends State<PDiaryEntries> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Container(
        height: 66,
        width: 327,
        child: Card(
          color: MyColor.card2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    width: 73,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          topLeft: Radius.circular(14)),
                      color: widget.pDiaryEntriesModel!.containerC,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.pDiaryEntriesModel!.date}",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 4,
                    bottom: 4,
                    child: Image.asset(
                      'assets/icons/done.png',
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "${widget.pDiaryEntriesModel!.whichClass}",
                            style: TextStyle(
                                color: MyColor.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          TextSpan(
                            text: " Classes, ",
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.primary,
                            ),
                          ),
                          TextSpan(
                            text: "${widget.pDiaryEntriesModel!.chapterNo}",
                            style: TextStyle(
                                color: MyColor.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          TextSpan(
                            text: " Chapters",
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/bookE.png',
                                height: 10,
                                width: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Assignments',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: MyColor.primary,
                                ),
                              ),
                              (widget.pDiaryEntriesModel!.assignGivenTral !=
                                      null)
                                  ? SizedBox()
                                  : Text(
                                      ' !',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 10),
                                    ),
                              SizedBox(
                                width: 5,
                              ),
                              (widget.pDiaryEntriesModel!.assignGivenTral !=
                                      null)
                                  ? Image.asset(
                                      'assets/icons/done.png',
                                      height: 10,
                                      width: 10,
                                    )
                                  : SizedBox(),
                              SizedBox(
                                width: 10,
                              ),
                              (widget.pDiaryEntriesModel!.homeWork != null)
                                  ? Image.asset(
                                      'assets/icons/book.png',
                                      height: 10,
                                      width: 10,
                                    )
                                  : Text(''),
                              SizedBox(
                                width: 5,
                              ),
                              (widget.pDiaryEntriesModel!.homeWork != null)
                                  ? Text(
                                      '${widget.pDiaryEntriesModel!.homeWork}',
                                      style: TextStyle(
                                          color: MyColor.primary, fontSize: 10),
                                    )
                                  : SizedBox(
                                      width: 70,
                                    ),
                              SizedBox(
                                width: 5,
                              ),
                              (widget.pDiaryEntriesModel!.homeWork != null)
                                  ? Image.asset(
                                      'assets/icons/done.png',
                                      height: 10,
                                      width: 10,
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 79,
                        ),
                        Image.asset(
                          'assets/icons/for.png',
                          height: 8,
                          width: 4,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
