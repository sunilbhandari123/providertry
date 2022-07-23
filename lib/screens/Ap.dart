import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/api.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final athiprovider = Provider.of<Athiprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'Passsword'),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                athiprovider.loin(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: athiprovider.loading
                        ? const CircularProgressIndicator(
                            color: Colors.black,
                          )
                        : const Text('Login')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
