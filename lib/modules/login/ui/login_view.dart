import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stack/modules/login/controllers/login_controller.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: Text("Login View")
    //   )
    // );

    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Scaffold(
        body: ReactiveForm(
          formGroup: _.loginForm,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReactiveTextField(
                  formControlName: 'email',
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                ReactiveTextField(
                  formControlName: 'password',
                  decoration: const InputDecoration(labelText: 'Password'),
                ),

                TextButton(
                  onPressed: _.loginHandler, 
                  child: const Text('Login')
                )
              ],
            )
          )
        )
      )
    );
  }

}