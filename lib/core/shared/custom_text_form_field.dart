import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final bool isPassword;
  final TextEditingController controller;
  final String hintText;

  const CustomTextFormField({
    super.key,
    this.isPassword = false,
    required this.controller,
    required this.hintText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    setState(() {
      _obscureText = widget.isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  _obscureText = !_obscureText;
                  setState(() {});
                },
                child: Icon(
                  !_obscureText ? CupertinoIcons.lock : CupertinoIcons.lock_open,
                ),
              )
            : null,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your ${widget.hintText}';
        }
        return null;
      },
      style: TextStyle(
        color: AppColors.primary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: AppColors.primary,
      cursorWidth: 1,
      cursorHeight: 20,
      cursorRadius: Radius.circular(2),
      cursorOpacityAnimates: true,
    );
  }
}
