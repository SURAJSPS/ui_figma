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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: FittedBox(
        child: Stack(
          children: [
            Container(
              height: 66,
              width: 327,
              child: Card(
                margin: EdgeInsets.all(0),
                color: MyColor.card2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    grtDateInfo(widget),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                getClassInfo(widget),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                getAssignMent(widget),
                                SizedBox(
                                  width: 18,
                                ),
                                (widget.pDiaryEntriesModel!.homeWork != null)
                                    ? getHomeworks(widget)
                                    : SizedBox(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 12,
              bottom: 12,
              child: Image.asset(
                'assets/icons/for.png',
                height: 10,
                width: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getHomeworks(PDiaryEntries widget) {
  return Container(
    child: Row(
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
          "${widget.pDiaryEntriesModel!.homeWork}",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: MyColor.primary,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Image.asset(
          'assets/icons/done.png',
          height: 8,
          width: 8,
        )
      ],
    ),
  );
}

Widget getAssignMent(PDiaryEntries widget) {
  return Container(
    // color: Colors.orange,
    height: 10,
    width: 92,
    child: Row(
      children: [
        Image.asset(
          'assets/icons/bookE.png',
          height: 10,
          width: 10,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          'Assignments',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: MyColor.primary,
          ),
        ),
        (widget.pDiaryEntriesModel!.assignGivenTral != null)
            ? SizedBox()
            : Text(
                ' !',
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
        SizedBox(
          width: 4,
        ),
        (widget.pDiaryEntriesModel!.assignGivenTral != null)
            ? Image.asset(
                'assets/icons/done.png',
                height: 8,
                width: 8,
              )
            : SizedBox(),
      ],
    ),
  );
}

Widget getClassInfo(PDiaryEntries widget) {
  return Container(
    padding: EdgeInsets.all(0),
    height: 14,
    child: RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.grey),
        children: [
          TextSpan(
            text: "${widget.pDiaryEntriesModel!.whichClass}",
            style: TextStyle(
                color: MyColor.primary,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          TextSpan(
            text: " Classes, ",
            style: TextStyle(
                color: MyColor.primary,
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
          TextSpan(
            text: "${widget.pDiaryEntriesModel!.chapterNo}",
            style: TextStyle(
                color: MyColor.primary,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
          TextSpan(
            text: " Chapters",
            style: TextStyle(
                color: MyColor.primary,
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
        ],
      ),
    ),
  );
}

Widget grtDateInfo(widget) {
  return Padding(
    padding: const EdgeInsets.all(0),
    child: Stack(
      children: [
        Container(
          width: 73,
          margin: EdgeInsets.all(2),
          height: 62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14), topLeft: Radius.circular(14)),
            color: widget.pDiaryEntriesModel!.containerC,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 17,
              ),
              Text(
                '28 March',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '2021',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        (widget.pDiaryEntriesModel!.info == true)
            ? Positioned(
                bottom: 6,
                right: 6,
                child: Image.asset(
                  'assets/icons/info.png',
                  height: 8,
                  width: 8,
                ),
              )
            : SizedBox()
      ],
    ),
  );
}
