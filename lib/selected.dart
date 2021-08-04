import 'package:flutter/material.dart';

class Selected extends StatelessWidget {
  const Selected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 85,
      width: size.width,
      child: Card(
        color: Color(0xFF00C38D),
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
                "Mathematics",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                // width: size.width / 1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Lesson ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      "17",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Text(
                      ": ",
                      style: TextStyle(),
                    ),
                    Text(
                      "Integration",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                          width: 24,
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
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/for.png',
                        height: 8,
                        width: 4,
                        color: Color(0xFFFFFFFF),
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
    );
  }
}
