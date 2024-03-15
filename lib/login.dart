import 'package:flutter/material.dart';
import 'package:hostonwer/dasbord.dart';
import 'package:hostonwer/signup.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/casu.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _header(context),
                _inputField(context),
                _forgotPassword(context),
                _signup(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_header(context) {
  return Column(
    children: [
      SizedBox(height: 20),
      Image.asset(
        'assets/images/logokecil.png', // Ganti dengan path gambar Anda
        width: 100, // Sesuaikan ukuran gambar sesuai kebutuhan
        height: 100,
      ),
      Text(
        "Welcome Back",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Enter your credential to login",
          style: TextStyle(color: Color.fromARGB(255, 211, 204, 211))),
      SizedBox(height: 10),
    ],
  );
}

_inputField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Username",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Color.fromARGB(255, 243, 243, 243).withOpacity(0.2),
          filled: true,
          prefixIcon: Transform.scale(
            scale: 0.5, // Sesuaikan nilai skala sesuai keinginan Anda
            child: Iconify(Zondicons.user,
            color: Color.fromARGB(255, 59, 55, 59),),
          ),
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Color.fromARGB(255, 243, 243, 243).withOpacity(0.2),
          filled: true,
          prefixIcon: Transform.scale(
            scale: 0.5, // Sesuaikan nilai skala sesuai keinginan Anda
            child: Iconify(Zondicons.lock_closed,
            color: Color.fromARGB(255, 59, 55, 59),),
          ),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dasboard()),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Color.fromARGB(255, 59, 55, 59),
        ),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20),
        ),
      )
    ],
  );
}

_forgotPassword(context) {
  return TextButton(
    onPressed: () {},
    child: const Text(
      "Forgot password?",
      style: TextStyle(color: Color.fromARGB(255, 211, 204, 211)),
    ),
  );
}

_signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Dont have an account? "),
      TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Color.fromARGB(255, 211, 204, 211)),
          ))
    ],
  );
}
