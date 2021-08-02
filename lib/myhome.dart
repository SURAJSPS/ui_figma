import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          'Class Diray',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(0),
        child: getColumn(context),
      ),
    );
  }
}

Widget getColumn(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Divider(
        thickness: 1,
        color: Colors.grey,
      ),
      Container(
        height: 100,
        width: size.width,
        child: Container(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Today's Diary Entries",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '15th May,2020',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.grey[200]),
                  children: [
                    TextSpan(
                      text: '8 ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Class,',
                    ),
                    TextSpan(
                      text: '6',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' Chapters'),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
