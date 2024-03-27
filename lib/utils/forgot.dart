import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 25,
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


                  Container(
                    width: 900,
                    height: 60,
                    child: Center(child: Text('Send an Email', style: TextStyle(color: Colors.white),)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
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
