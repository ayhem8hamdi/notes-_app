import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.maxLines,
      this.onChanged,
      this.val = ''});
  final String hint;
  final String val;
  final int maxLines;

  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: val);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is empty man';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        maxLines: maxLines,
        cursorColor: const Color(0xff62FCD7),
        cursorErrorColor: const Color.fromARGB(255, 248, 248, 248),
        decoration: InputDecoration(
            hintText: hint,
            errorStyle: const TextStyle(color: Colors.red, fontSize: 16),
            border: buildBorder(),
            errorBorder: buildBorder(color: Colors.red),
            focusedErrorBorder: buildBorder(color: Colors.red),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(color: const Color(0xff4F378B))),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}
