import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;
  final TextAlign? align;
  final int? maxLines;

  const CustomText({
    super.key,
    required this.text,
    this.weight,
    this.size,
    this.color,
    this.align,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.w500,
      ),
      textAlign: align ?? TextAlign.left,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}
