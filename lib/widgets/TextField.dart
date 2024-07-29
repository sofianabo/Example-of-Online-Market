// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextForm1 extends StatelessWidget {
  TextEditingController controller;
  int maxlength;
  String labeltext;
  Color activeLabel;
  Color colorlabel;
  IconData prifexIcon;
  Color prifexColor;
  Color focasBorder;
  TextForm1(
      {super.key,
      required this.controller,
      required this.maxlength,
      required this.labeltext,
      required this.activeLabel,
      required this.colorlabel,
      required this.prifexIcon,
      required this.prifexColor,
      required this.focasBorder});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      maxLength: maxlength,
      controller: controller,
      decoration: InputDecoration(
        label: Text(
          labeltext,
        ),
        floatingLabelStyle: TextStyle(color: activeLabel),
        labelStyle: TextStyle(color: colorlabel),
        prefixIcon: Icon(
          prifexIcon,
          color: prifexColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: focasBorder),
        ),
      ),
    ));
  }
}
