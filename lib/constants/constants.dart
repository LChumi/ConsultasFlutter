import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

/* void showMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
} */

void showMessageError(String message, BuildContext context) {
  QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: 'Oops...',
      text: message);
}

showLoaderDialog(BuildContext context) {
  AlertDialog alerta = AlertDialog(
    content: Builder(builder: (context) {
      return SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 85, 174, 225),
            ),
            const SizedBox(
              height: 18.0,
            ),
            Container(
                margin: const EdgeInsets.only(left: 7),
                child: const Text("Cargando..."))
          ],
        ),
      );
    }),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

String getMessageFromErrorCode(String errorCode) {
  switch (errorCode) {
    case "ERROR_EMAIL_ALREADY_IN_USE":
      return "El correo Electronico ya existe, Inicie sesiòn";
    case "account-exists-with-diferent-credential":
      return "El correo ya existe, Inicie sesiòn";
    case "email-already-in-use":
      return "El correo ya existe,Inicie sesiòn";
    case "ERROR_WRONG_PASSWORD":
    case "wrong-password":
      return "Contraseña incorrecta";
    case "ERROR_USER_NOT_FOUND":
      return "No existe Usuario con ese correo";
    case "user-not-found":
      return "No existe Usuario con ese correo";
    case "ERROR_USER_DISABLED":
      return "Usuario inactivo";
    case "user-disabled":
      return "Usuario inactivo";
    case "ERROR_TOO_MANY_REQUEST":
      return "Demasiadas solicitudes para iniciar sesiòn en esta cuenta";
    case "operation-not-allowed":
      return "Demasiadas solicitudes para iniciar sesiòn en esta cuenta";
    case "ERROR_OPERATION_NOT_ALLOWED":
      return "Demasiadas solicitudes para iniciar sesiòn en esta cuenta";
    case "ERROR_INVALID_EMAIL":
      return "Correo electronico invalido";
    case "invalid-email":
      return "Correo electronico invalido";
    default:
      return "Sesiòn fallida por favor intente de nuevo";
  }
}

bool loginValidation(String email, String password, BuildContext context) {
  if (email.isEmpty && password.isEmpty) {
    showMessageError("Campos vacios", context);
    return false;
  } else if (email.isEmpty) {
    showMessageError("Ingrese email", context);
    return false;
  } else if (password.isEmpty) {
    showMessageError("Contraseña vacia", context);
    return false;
  } else {
    return true;
  }
}

bool registroValidation(String nombre, String telefono, String email,
    String password, BuildContext context) {
  if (email.isEmpty && password.isEmpty && nombre.isEmpty && telefono.isEmpty) {
    showMessageError("Campos vacios", context);
    return false;
  } else if (email.isEmpty) {
    showMessageError("Ingrese email", context);
    return false;
  } else if (password.isEmpty) {
    showMessageError("Contraseña vacia", context);
    return false;
  } else if (nombre.isEmpty) {
    showMessageError("Nombre vacio", context);
    return false;
  } else if (telefono.isEmpty) {
    showMessageError("Telefono vacio", context);
    return false;
  } else {
    return true;
  }
}
