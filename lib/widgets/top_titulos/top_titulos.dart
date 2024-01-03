import 'package:flutter/material.dart';

class TopTitulos extends StatelessWidget {
  final String titulo,subtitulo;
  const TopTitulos({super.key, required this.subtitulo, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kToolbarHeight + 2,
        ),
        Text(
          titulo,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          subtitulo,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
