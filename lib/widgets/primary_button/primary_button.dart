import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String titulo;
  const PrimaryButton({super.key, this.onPressed, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(titulo),),
    );
  }
}