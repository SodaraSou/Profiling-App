import 'package:profiling_app/xcore.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadius),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Container(
        constraints: const BoxConstraints(minWidth: 80),
        padding: const EdgeInsets.all(kPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kRadius),
        ),
        child: Center(
          child: Text(
            title,
            style: subtitleBoldStyle.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
