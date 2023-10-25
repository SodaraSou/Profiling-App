import 'package:profiling_app/xcore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    this.label,
    required this.keyboardType,
    this.controller,
    this.showValidator = true,
    this.focusNode,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.inputFormatters,
  }) : super(key: key);
  final TextEditingController? controller;
  final String? label;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final bool showValidator;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      keyboardType: keyboardType,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      autofillHints: const [
        AutofillHints.telephoneNumber,
      ],
      onTapOutside: (event) {
        Get.focusScope?.unfocus();
      },
      decoration: InputDecoration(
        hintText: label,
        labelText: label,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(kRadius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(kRadius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent.withOpacity(0.05),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(kRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.05),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(kRadius),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      validator: (value) {
        if (showValidator) {
          if (value!.isEmpty) {
            return 'Fill the blank';
          }
        }
        return null;
      },
    );
  }
}
