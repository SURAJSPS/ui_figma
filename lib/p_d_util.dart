import 'package:flutter/material.dart';
import 'package:ui_figma/p_d_model.dart';

class PDiaryData {
  static List<PDiaryEntriesModel> pdiaryEntries = [
    PDiaryEntriesModel(
      info: false,
      homeWork: 'Homework',
      containerC: Color(0xFF0B6FE4),
      assignGivenLead: Icons.edit,
      homeworkLead: Icons.chrome_reader_mode_outlined,
      chapterNo: 12,
      date: '28 MAR 2020',
      whichClass: 8,
      homeworkTral: Icons.done,
    ),
    PDiaryEntriesModel(
        info: true,
        containerC: Color(0xFFFF8133),
        assignGivenLead: Icons.edit,
        assignGivenTral: Icons.done,
        chapterNo: 8,
        date: '26 MAR 2020',
        whichClass: 9,
        dateInfoIcone: Icons.info),
    PDiaryEntriesModel(
      info: false,
      homeWork: 'Homework',
      containerC: Color(0xFF0B6FE4),
      assignGivenLead: Icons.edit,
      assignGivenTral: Icons.done,
      homeworkLead: Icons.chrome_reader_mode_outlined,
      chapterNo: 9,
      date: '25 MAR 2020',
      whichClass: 10,
      homeworkTral: Icons.done,
    )
  ];
}
