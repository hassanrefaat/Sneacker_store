import 'package:flutter/material.dart';

import '../utils/styles.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  double? height,
  double? width,
  bool noBorder = false,
  onTapOutside,
  bool readOnly = false,
  double? textSize,
  String? title,
  onSubmit,
  onChanged,
  onTap,
  bool isPassword = false,
  required String? Function(String?)? validator,
  required String label,
  IconData? prefix,
  bool? filled,
  bool isClickable = true,
  IconData? suffix,
  Color? suffixColor,
  Function? suffixPressed,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(
          width: double.infinity,
          height: height,
          child: TextFormField(
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            readOnly: readOnly,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: textSize ?? 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            controller: controller,
            keyboardType: type,
            obscureText: isPassword,
            enabled: isClickable = true,
            onFieldSubmitted: onSubmit,
            onChanged: onChanged,
            onTap: onTap,
            validator: validator,
            decoration: InputDecoration(
              filled: filled,
              fillColor: Colors.grey.shade300,
              border: noBorder
                  ? null
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
              label: Text(label),
              prefixIcon: Icon(prefix),
              suffixIcon: suffix != null
                  ? IconButton(
                      onPressed: () {
                        suffixPressed!();
                      },
                      icon: Icon(
                        suffix,
                        color: suffixColor,
                      ))
                  : null,
              // border:  OutlineInputBorder())),
              // decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50)
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );


Widget defaultSearchFormField({
  required TextEditingController controller,
  required TextInputType type,
  double? height,
  double? width,
  bool noBorder = false,
  onTapOutside,
  bool readOnly = false,
  double? textSize,
  String? title,
  onSubmit,
  onChanged,
  onTap,
  required String? Function(String?)? validator,
  required String text,
  IconData? prefix,
  bool isClickable = true,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )
            : const SizedBox(),
        SizedBox(
          width:270,
          height: height,
          child: TextFormField(
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            readOnly: readOnly,
            textAlign: TextAlign.start,
            style: Styles.style12,
            controller: controller,
            keyboardType: type,
            enabled: isClickable = true,
            onFieldSubmitted: onSubmit,
            onChanged: onChanged,
            onTap: onTap,
            validator: validator,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              border: noBorder
                  ? null
                  : OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: text,
              prefixIcon: Icon(prefix),


              // border:  OutlineInputBorder())),
              // decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(50)
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );




