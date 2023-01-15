import 'package:components/widgets/widgets_index.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final formValues = {
      'name': '',
      'lastName': '',
      'email': '',
      'password': '',
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputWidget(
                hintText: 'Nombre del usuario',
                labelText: 'Nombre',
                prefixIcon: const Icon(Icons.person),
                controlName: 'name',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputWidget(
                labelText: 'Apellidos',
                prefixIcon: const Icon(Icons.person),
                controlName: 'lastName',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputWidget(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email_rounded),
                inputType: TextInputType.emailAddress,
                controlName: 'email',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputWidget(
                labelText: 'Contraseña',
                prefixIcon: const Icon(Icons.security_outlined),
                password: true,
                controlName: 'password',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar')),
                ),
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (!myFormKey.currentState!.validate()) {
                    print('formulario inválido');
                    return;
                  }
                  print(formValues);
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
