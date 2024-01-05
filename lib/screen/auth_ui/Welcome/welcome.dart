/*
 * Copyright (c) 2024.
 *  Este código es propiedad de Luis Chumi y está protegido por las leyes de derechos de autor.
 *  Se concede el permiso para usar, copiar, modificar y distribuir este software con la condición de que se incluya este aviso en todas las copias o partes sustanciales del software.
 *  Para obtener ayuda, soporte , contacta a Luis Chumi en luischumi.9@gmail.com.
 */

import 'package:consultas/constants/assets_images.dart';
import 'package:consultas/constants/routes.dart';
import 'package:consultas/screen/auth_ui/login/login.dart';
import 'package:consultas/screen/auth_ui/registro/registro.dart';
import 'package:consultas/widgets/primary_button/primary_button.dart';
import 'package:consultas/widgets/top_titulos/top_titulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitulos(
                  subtitulo: "Consulta nuestros productos con nuestra App",
                  titulo: "Bienvenido"),
              Center(
                  child: Image.asset(
                AssetsImages.instance.bienvenido,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.facebook,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: Image.asset(
                      AssetsImages.instance.googleLogo,
                      scale: 30.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              PrimaryButton(
                titulo: "Iniciar Sesión",
                onPressed: () {
                  Routes.instance.push(widget: const Login(), context: context);
                },
              ),
              const SizedBox(
                height: 18.0,
              ),
              PrimaryButton(
                titulo: "Registrarse",
                onPressed: () {
                  Routes.instance
                      .push(widget: const Registro(), context: context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
