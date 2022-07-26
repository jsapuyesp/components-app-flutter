import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': ''
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              onChanged: () {},
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Ingresa el nombre',
                    inputType: TextInputType.text,
                    formValues: formValues,
                    fromProperty: 'first_name',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Ingresa el Apellido',
                    inputType: TextInputType.text,
                    formValues: formValues,
                    fromProperty: 'last_name',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Email',
                    hintText: 'Ingresa el email',
                    inputType: TextInputType.emailAddress,
                    formValues: formValues,
                    fromProperty: 'email',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Password',
                    hintText: 'Ingresa el password',
                    inputType: TextInputType.text,
                    obscureText: true,
                    formValues: formValues,
                    fromProperty: 'password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'SuperUser', child: Text('SuperUser')),
                        DropdownMenuItem(
                            value: 'Developer', child: Text('Developer')),
                        DropdownMenuItem(
                            value: 'Jr. Developer',
                            child: Text('Jr. Developer'))
                      ],
                      onChanged: (value) {
                        formValues['role'] = value ?? 'Admin';
                      }),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text('Guardar'),
                        ),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }

                        //* Imprimir map
                        print(formValues);
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
