import 'package:flutter/widgets.dart';

class DiaryEntriesModel {
  String? subjectName;
  int? lessonNumber;
  bool? assignMent;

  bool? homeWork;
  IconData? homeworklea;
  IconData? homeworktra;
  String? lessonName;
  IconData? assignGivenIcon;
  IconData? homeworkIcon;
  DiaryEntriesModel({
    this.assignGivenIcon,
    this.homeworkIcon,
    this.lessonName,
    this.lessonNumber,
    this.subjectName,
    this.assignMent,
    this.homeWork,
    this.homeworklea,
    this.homeworktra,
  });
}
