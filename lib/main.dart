import "package:flutter/material.dart";
import "package:login_signup/login.dart";
import "package:login_signup/register.dart";

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute : 'login',// initialroute means jo humare first screen aayege wo login ho
    routes:{'login' :(context)=>Mylogin(),
      'register' :(context)=>Register(),
    },
    // routes are used for making different pages
  ),

  );
}

