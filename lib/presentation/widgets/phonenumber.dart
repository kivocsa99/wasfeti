import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PhoneNumberField extends HookWidget {
  final TextEditingController? controller;
  final ValueChanged<String?>? onchanged;
  final ValueChanged<String?>? onsubmit;
  final bool? forget;
  final GlobalKey<FormState>? formkey;
  final String? Function(String?)? validator;

  const PhoneNumberField(
      {super.key,
      this.controller,
      this.onchanged,
      this.onsubmit,
      this.forget,
      this.formkey,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Form(
        key: formkey,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 0, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "E-mail",
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: TextFormField(
                  onFieldSubmitted: onsubmit,
                  validator: validator,
                  onChanged: onchanged,
                  controller: controller,
                  textAlign: TextAlign.start,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    contentPadding: EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 10),
                    hintText: "xxxxx@xxx.com",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
