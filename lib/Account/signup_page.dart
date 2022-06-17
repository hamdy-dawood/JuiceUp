import 'package:flutter/material.dart';
import '../Pages/Home Page/home_page.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backGround,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Hello.',
                style: TextStyle(
                    color: textColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Create Your Account',
                style: TextStyle(
                    color: textColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have?/',
                      style: TextStyle(color: textColor, fontSize: 14)),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, CustomPageRoute(child: LoginPage()));
                    },
                    child: const Text('Login here',
                        style: TextStyle(
                            color: Color(0xFFD86660),
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  )
                ],
              ),
              SizedBox(
                height: size.height / 2.8,
                child: Image.asset(
                  "images/Profile/MainLogo.png",
                  fit: BoxFit.cover,
                ),
              ),
              Form(
                key: formkey,
                child: Container(
                  height: size.height / 2,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: textColor,
                      borderRadius: BorderRadius.circular(35.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'SignUp',
                          style: TextStyle(
                              color: Color(0xFFD86660),
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (emailController) {
                            print(emailController);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'email must be not empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: backGround,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: backGround,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 15),
                              prefixIcon: const Icon(
                                Icons.email,
                                size: 20,
                                color: Color(0xFFD86660),
                              ),
                              border: InputBorder.none),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          onChanged: (passwordController) {
                            print(passwordController);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password must be not empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: backGround,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: backGround,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 15),
                              prefixIcon: const Icon(
                                Icons.lock,
                                size: 20,
                                color: Color(0xFFD86660),
                              ),
                              border: InputBorder.none),
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value,
                                activeColor: const Color(0xFFD86660),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value!;
                                  });
                                }),
                            const Text(
                              'I accept the privacy policy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (formkey.currentState!.validate()) {
                              print(_emailController);
                              print(_passwordController);
                              Navigator.push(context,
                                  CustomPageRoute(child: const HomePage()));
                            }
                          },
                          child: Container(
                              height: 55,
                              width: size.width / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: const Color(0xFFD86660),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xFFD86660),
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                    )
                                  ]),
                              child: const Center(
                                  child: Text(
                                'SignUp',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ))),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
