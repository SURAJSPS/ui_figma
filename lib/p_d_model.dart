import 'package:flutter/material.dart';

class PDiaryEntriesModel {
  int? whichClass;
  String? homeWork;
  int? chapterNo;
  Color? containerC;
  IconData? assignGivenLead;
  IconData? assignGivenTral;
  IconData? homeworkLead;
  IconData? homeworkTral;
  IconData? dateInfoIcone;
  String? date;
  PDiaryEntriesModel(
      {this.assignGivenLead,this.homeWork,
      this.containerC,
      this.assignGivenTral,
      this.chapterNo,
      this.date,
      this.dateInfoIcone,
      this.homeworkLead,
      this.homeworkTral,
      this.whichClass});
}
