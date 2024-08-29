import 'package:flutter/material.dart';
import 'package:flutter_play/components/my_button.dart';
import 'package:flutter_play/components/my_textfield.dart';
import 'package:flutter_play/pages/home_page.dart';

class LoginPge extends StatefulWidget {

  final void Function()? onTap;


const LoginPge({
  super.key,
  required this.onTap
  });

  @override
  State<LoginPge> createState() => _LoginPgeState();
}

class _LoginPgeState extends State<LoginPge> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login ()
{
  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),
  ),
  );
}  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25,),

            Text("Stephie's Cuisine",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
            
            const SizedBox(height: 25),

            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height:10),

            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height:10),

           MyButton(text: "Sign In", 
           onTap: login,
           ),

           const SizedBox(height:10),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member?", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register Now", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ],
            ),
          ],
          ),
      ),
    );
  }
}