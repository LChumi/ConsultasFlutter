import 'package:consultas/constants/routes.dart';
import 'package:consultas/screen/auth_ui/registro/registro.dart';
import 'package:consultas/widgets/primary_button/primary_button.dart';
import 'package:consultas/widgets/top_titulos/top_titulos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitulos(
                subtitulo: "Bienvenido que gusto tenerte aqui  ",
                titulo: "Iniciar Sesión"),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "Correo Electronico",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  )),
            ),
            TextFormField(
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
              titulo: "Iniciar Sesión",
              onPressed: () {},
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Center(child: Text("No tienes cuenta")),
            const SizedBox(
              height: 12.0,
            ),
            Center(
                child: CupertinoButton(
                    child: Text(
                      "Crear una Cuenta",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      Routes.instance.push(widget:const  Registro(), context: context);
                    }))
          ],
        ),
      ),
    );
  }
}
