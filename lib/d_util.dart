import 'package:flutter/material.dart';
import 'package:ui_figma/d_model.dart';

class DiaryData {
  static List<DiaryEntriesModel> diaryEntries = [
    DiaryEntriesModel(
        assignMent: false,
        homeWork: true,
        assignGivenIcon: Icons.edit,
        homeworkIcon: Icons.chrome_reader_mode_outlined,
        lessonName: 'Laser Internals',
        lessonNumber: 14,
        subjectName: 'Physics',
        homeworklea: Icons.done),
    DiaryEntriesModel(
      assignMent: false,
      homeWork: false,
      assignGivenIcon: Icons.edit,
      homeworkIcon: Icons.chrome_reader_mode_outlined,
      lessonName: 'Metal Flame Tests',
      lessonNumber: 8,
      subjectName: 'Chemistry',
    ),
    DiaryEntriesModel(
      assignMent: false,
      homeWork: false,
      assignGivenIcon: Icons.edit,
      homeworkIcon: Icons.chrome_reader_mode_outlined,
      lessonName: 'Revolution Movement',
      lessonNumber: 14,
      subjectName: 'History & Civics',
    ),
  ];
}
