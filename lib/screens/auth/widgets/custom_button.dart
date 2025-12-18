import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    required this.onPressed,
  });
  Color? backgroundColor;
  String text;
  void Function()? onPressed;
  String? image;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
      height: 50.h,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }
}
