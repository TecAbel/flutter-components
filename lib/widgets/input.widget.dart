import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? prefixIcon;
  final TextInputType? inputType;
  final bool? password;

  final String controlName;
  final Map<String, dynamic> formValues;

  const CustomInputWidget({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.prefixIcon,
    this.inputType,
    required this.controlName,
    required this.formValues,
    this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      keyboardType: inputType,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[controlName] = value,
      validator: ((value) {
        if (value == null || value == '') return 'Este campo es requerido';
        return value.length < 3
            ? 'El nombre debe tener al menos 3 caracteres'
            : null;
      }),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: password ?? false,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
      ),
    );
  }
}
