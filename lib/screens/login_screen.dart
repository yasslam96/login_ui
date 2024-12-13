import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset(
                'assets/images/login.jpg',
                height: MediaQuery.of(context).size.height * .5,
              ),
              SizedBox(
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.1),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey.withOpacity(.5),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(.5)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.1),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(.5),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.grey.withOpacity(.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              UnconstrainedBox(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xffffc801))),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.grey.withOpacity(.5)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Ink(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Color(0xffffc801)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
