import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo,
                Colors.blueAccent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  25.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Icon(Icons.local_fire_department, size: 60, color: Colors.white,),

                  //textfields
                  SizedBox(height: 30,),

                  TextField(
                    decoration: InputDecoration(
                      label: Text('Email'),
                      labelStyle: TextStyle(color: Colors.white,),
                      prefixIcon: Icon(Icons.email, color: Colors.white,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 25 ,),

                  TextField(
                    decoration: InputDecoration(
                      label: Text('Password'),
                      labelStyle: TextStyle(color: Colors.white,),
                      prefixIcon: Icon(Icons.security, color: Colors.white,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    obscureText: true,
                  ),

                  SizedBox(height: 10,),
                  //forgot password option
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/forgot');
                        },
                        child: Text('Forgot Password?'),
                      ),
                    ],
                  ),

                  SizedBox(height: 25 ,),

                  Container(
                    width: 900,
                    height: 60,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/home');
                        print('Wlecome to home page');
                      },
                        child: Center(child: Text('Sign In', style: TextStyle(color: Colors.white),

                          )
                        )
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 25 ,),
                  //account options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Need an account?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),

                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text('Register Now',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  //login option
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:  8.0),
                        child: Text('Or continue with'),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25,),

                  Column(
                    children: [
                      MouseRegion(
                        onHover: (event){
                          setState(() {
                            _isHovered = true;
                          });
                        },
                        onExit: (event){
                          setState(() {
                            _isHovered = false;
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 900,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _isHovered ? Colors.grey.shade300 : Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.system_security_update_good_outlined),
                              SizedBox(width: 10,),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        //TODO: remove later
        floatingActionButton: FloatingActionButton(
          child: Text('intro'),
          onPressed: (){
            Navigator.pushNamed(context, '/');
          },
        ),
      ),


    );
  }
}
