import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset('assets/header-login.png'),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 64,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Please sign in to continue',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 32.0),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'User ID dan/atau password anda belum diisi';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            contentPadding: EdgeInsets.only(
                              bottom: 0,
                            ),
                            hintText: 'User ID',
                            labelText: 'User ID',
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        const SizedBox(height: 32.0),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'User ID dan/atau password anda belum diisi';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            contentPadding: EdgeInsets.only(
                              bottom: 0,
                            ),
                            hintText: 'Password',
                            labelText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        const SizedBox(height: 28.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (!_formKey.currentState!.validate()) {
                                await showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset(
                                          'assets/error-sign.png',
                                          height: 64,
                                        ),
                                        const SizedBox(height: 12.0),
                                        const Text(
                                          'User ID dan/atau Password belum diisi',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    actionsAlignment: MainAxisAlignment.center,
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('OK'),
                                        style: ElevatedButton.styleFrom(
                                          shape: const StadiumBorder(),
                                          primary: const Color(0xFF6338a1),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                fixedSize: const Size(160, 48),
                                shape: const StadiumBorder(),
                                primary: const Color(0xFF6338a1)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
