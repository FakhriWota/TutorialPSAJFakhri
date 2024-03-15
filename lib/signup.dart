import 'package:flutter/material.dart';
import 'package:hostonwer/login.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bgfx.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height - 0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 40.0),
                    Image.asset(
                      'assets/images/logokecil.png', 
                      width: 100, 
                      height: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create your account",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 211, 204, 211)),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor:
                            Color.fromARGB(255, 243, 243, 243).withOpacity(0.2),
                        filled: true,
                        prefixIcon: Transform.scale(
                          scale:
                              0.5, 
                          child: Iconify(
                            Zondicons.user,
                            color: Color.fromARGB(255, 59, 55, 59),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Color.fromARGB(255, 243, 243, 243)
                              .withOpacity(0.2),
                          filled: true,
                          prefixIcon: Transform.scale(
                          scale:
                              0.5, 
                          child: Iconify(
                            Zondicons.inbox,
                            color: Color.fromARGB(255, 59, 55, 59),
                          ),
                        ),),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor:
                            Color.fromARGB(255, 243, 243, 243).withOpacity(0.2),
                        filled: true,
                        prefixIcon: Transform.scale(
                          scale:
                              0.5, 
                          child: Iconify(
                            Zondicons.lock_closed,
                            color: Color.fromARGB(255, 59, 55, 59),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor:
                            Color.fromARGB(255, 243, 243, 243).withOpacity(0.2),
                        filled: true,
                        prefixIcon: Transform.scale(
                          scale:
                              0.5, 
                          child: Iconify(
                            Zondicons.lock_closed,
                            color: Color.fromARGB(255, 59, 55, 59),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Color.fromARGB(255, 59, 55, 59),
                      ),
                    )),
                const SizedBox(height: 10),
                const Center(child: Text("Or")),
                const SizedBox(height: 10),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color.fromARGB(255, 211, 204, 211),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/google.png'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Text(
                          "Sign In with Google",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 211, 204, 211)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
