import 'package:flutter/material.dart';
import 'package:machine_test/core/utils/constants.dart';

import '../../core/theme/colors.dart';
import 'app_text.dart';

class AppPrimaryBtn extends StatelessWidget {
  const AppPrimaryBtn(
      {super.key,
      required this.text,
      this.onPressed,
      this.width,
      this.margin,
      this.isInvertedBtn = false,
      this.backgroundColor,
      this.txtClr,
      this.isOutlinedBtn = false,
      this.isFullbgColor = false,
      this.icon,
      this.fontSize,
      this.radius,
      this.padding,
      this.constraints,
      this.borderClr,
      this.family,
      this.height});

  final String text;
  final void Function()? onPressed;
  final double? width, fontSize, radius, height;
  final EdgeInsetsGeometry? margin;
  final bool isInvertedBtn;
  final Color? backgroundColor, txtClr, borderClr;
  final bool isOutlinedBtn, isFullbgColor;
  final dynamic? family;
  final Widget? icon;
  final EdgeInsetsGeometry? padding;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      constraints: constraints ?? const BoxConstraints(minHeight: 48),
      width: width ?? double.infinity,
      height: height ?? 40,
      child: icon != null
          ? TextButton.icon(
              onPressed: onPressed,
              style: _buildBtnStyle(),
              icon: icon!,
              label: BtnText(
                  text: text,
                  txtClr: txtClr,
                  isInvertedBtn: isInvertedBtn,
                  family: family,
                  fontSize: fontSize),
            )
          : TextButton(
              onPressed: onPressed,
              style: _buildBtnStyle(),
              child: BtnText(
                  text: text,
                  txtClr: txtClr,
                  isInvertedBtn: isInvertedBtn,
                  family: family,
                  fontSize: fontSize),
            ),
    );
  }

  ButtonStyle _buildBtnStyle() {
    return TextButton.styleFrom(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: isFullbgColor
          ? backgroundColor
          : (isOutlinedBtn
              ? null
              : (isInvertedBtn
                  ? Colors.white
                  : backgroundColor ?? primaryBtnClr)),
      // Background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 6.0),
        side: isOutlinedBtn || borderClr != null
            ? BorderSide(color: borderClr ?? backgroundColor!)
            : BorderSide.none,
      ),
    );
  }
}

class BtnText extends StatelessWidget {
  const BtnText({
    super.key,
    required this.text,
    required this.txtClr,
    required this.isInvertedBtn,
    required this.fontSize,
    this.family,
  });

  final String text;
  final Color? txtClr;
  final bool isInvertedBtn;
  final double? fontSize;
  final dynamic? family;

  @override
  Widget build(BuildContext context) {
    return AppText(
      text,
      color: txtClr ?? (isInvertedBtn ? primaryBtnClr : Colors.white),
      size: fontSize,
      family: family ?? inter600,
    );
  }
}
