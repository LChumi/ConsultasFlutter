// ignore_for_file: use_build_context_synchronously

import 'package:consultas/constants/constants.dart';
import 'package:consultas/constants/routes.dart';
import 'package:consultas/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:consultas/screen/auth_ui/login/login.dart';
import 'package:consultas/screen/home/home.dart';
import 'package:consultas/widgets/primary_button/primary_button.dart';
import 'package:consultas/widgets/top_titulos/top_titulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController correo = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController nombre = TextEditingController();
  TextEditingController telefono = TextEditingController();
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitulos(
                  subtitulo: "Bienvenido que gusto tenerte aqui  ",
                  titulo: "Crear una cuenta"),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                controller: nombre,
                decoration: const InputDecoration(
                    hintText: "Nombre",
                    prefixIcon: Icon(
                      Icons.person_outlined,
                    )),
              ),
              TextFormField(
                controller: correo,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "Correo Electronico",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    )),
              ),
              TextFormField(
                controller: telefono,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: "Numero de telefono",
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                    )),
              ),
              TextFormField(
                controller: password,
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  prefixIcon: const Icon(
                    Icons.password_sharp,
                  ),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              PrimaryButton(
                titulo: "Registrarse",
                onPressed: () async {
                  bool isValidated =
                    registroValidation(nombre.text,telefono.text,correo.text, password.text, context);
                if (isValidated) {
                  bool isLogined = await FirebaseAuthHelper.instance
                      .registro(correo.text, password.text, context);
                  if (isLogined) {
                    Routes.instance.pushAndRemoveUntil(
                        widget: const Home(), context: context);
                  }
                }
                },
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Center(child: Text("¿Tienes una cuenta?")),
              const SizedBox(
                height: 12.0,
              ),
              Center(
                  child: CupertinoButton(
                      child: Text(
                        "Inicia sesión",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        Routes.instance.push(widget: const Login(), context: context);
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
