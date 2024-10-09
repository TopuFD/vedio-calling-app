
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBodyBtn extends StatelessWidget {
  CustomBodyBtn({super.key, required this.title, required this.ontap, this.icon});

  final String title;
  VoidCallback ontap;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Center(
        child: icon == null? Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ): Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          icon!,
          SizedBox(width: 4,),
          Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        ],)
      ),
    );
  }
}