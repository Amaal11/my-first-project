import 'package:flutter/material.dart';
import 'amaal/amaal_color.dart';
import 'amaal/amaal_text.dart';

void main() {
  runApp(const AmaalApp());
}

class AmaalApp extends StatelessWidget {
  const AmaalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: amaalColors.backgroundGradient,
        ),


        child: Center(

          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(

                child: Form(

                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Image.asset('assets/images/img.png',
                        width:150 ,height: 150,
                      ),
                      const SizedBox(
                        height: 50,),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: amaalTexts.emailHint,
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || !value.contains('@')) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: amaalTexts.phoneHint,
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 9 || !RegExp(r'^\d+$').hasMatch(value)) {
                            return 'Please enter a valid phone number.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: amaalTexts.passwordHint,
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null ||
                              !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$')
                                  .hasMatch(value)) {
                            return 'Password must contain uppercase, lowercase, numbers, and symbols.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  email: _emailController.text,
                                  phone: _phoneController.text,
                                  password: _passwordController.text,
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(amaalTexts.loginButton),
                      ),
                    ],
                  ),
                ),
              )
          ),

        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String email;
  final String phone;
  final String password;

  const DetailsScreen({
    Key? key,
    required this.email,
    required this.phone,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email: $email'),
            const SizedBox(height: 8),
            Text('Phone: $phone'),
            const SizedBox(height: 8),
            Text('Password: $password'),
          ],
        ),
      ),
    );
  }
}