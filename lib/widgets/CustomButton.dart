import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onpressed, this.isLoading = false});
  final void Function()? onpressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 26, right: 26, bottom: 15),
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14),
            backgroundColor: const Color(0xff4F378B)),
        child: isLoading
            ? const CircularProgressIndicator()
            : const Text(
                'Add',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
      ),
    );
  }
}
