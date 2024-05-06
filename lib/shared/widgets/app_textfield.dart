import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import '../../core/utils/constants.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({Key? key, this.hint, this.maxLines, this.controller, this.isOutlineBorder = true, this.labelText,this.inputType})
      : super(key: key);

  final String? hint, labelText;
  final TextEditingController? controller;
  final bool isOutlineBorder;
  final int? maxLines;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: inputFiledVMargin),
      child: TextFormField(
        controller: controller,
        cursorColor: hintClr,
        maxLines: maxLines,
        keyboardType:inputType ,
        decoration: InputDecoration(
            hintText: hint,
            labelText: labelText,
            labelStyle: const TextStyle(color: inputLabelClr,  fontSize: 12),
            hintStyle: const TextStyle( fontSize: 16, color: hintClr),
            border: _setBorder(),
            enabledBorder: _setBorder(),
            focusedBorder: _setBorder(borderClr: hintClr),
            disabledBorder: _setBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: isOutlineBorder ? 20 : 4, vertical: 14)),
      ),
    );
  }

  InputBorder _setBorder({Color? borderClr}) {
    return isOutlineBorder
        ? OutlineInputBorder(
            borderSide: BorderSide(color: borderClr ?? inputBorderClr), borderRadius: BorderRadius.circular(8))
        : UnderlineInputBorder(borderSide: BorderSide(color: borderClr ?? inputBorderClr));
  }
}
