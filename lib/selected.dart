import 'package:flutter/material.dart';

class Selected extends StatelessWidget {
  const Selected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: .1),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFF00C38D),
            ),
            height: 85,
            width: 327,
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        "Mathematics",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Lesson ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              "17",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              ": ",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Integration",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: SizedBox(
                        height: 9,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        // width: size.width / 1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icons/bookE.png',
                              height: 10,
                              width: 10,
                              color: Color(0xFFFFFFFF),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Assignment",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/book.png',
                                  height: 10,
                                  width: 10,
                                  color: Color(0xFFFFFFFF),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Homework Given",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Image.asset(
              'assets/icons/for.png',
              height: 8,
              width: 4,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
