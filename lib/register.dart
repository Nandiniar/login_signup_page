import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration :BoxDecoration(
          image : DecorationImage(
            image :AssetImage('assets/register.jpeg'),fit :BoxFit.cover,
          )
      ),
      child : Scaffold(

          appBar:AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,// elevation se app bar dekte ha issliye usse 0 kar diya take wo dikhe na
          ),
          backgroundColor: Colors.transparent,
          body : Stack(
            children:[
              Container(
                  padding:EdgeInsets.only(left:35,top:30),
                  child: Text("Create\nAccount",style:TextStyle(color:Colors.white,fontSize:33),)
              ),
              SingleChildScrollView(
                  child:Container(
                    padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.28),

                    child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Container(
                              margin:EdgeInsets.only(left:35,right:35),
                              child:Column(
                                  children :[
                                    TextField(
                                        decoration:InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:BorderRadius.circular(10) ,
                                                borderSide: BorderSide(color:Colors.black)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:BorderRadius.circular(10) ,
                                                borderSide: BorderSide(color:Colors.white)),
                                            hintText:'Name',
                                            hintStyle: TextStyle(color: Colors.white),
                                            border:OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            )
                                        )
                                    ),
                                    SizedBox(
                                      height:30,
                                    ),
                                    TextField(
                                        decoration:InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:BorderRadius.circular(10) ,
                                              borderSide: BorderSide(color:Colors.black)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:BorderRadius.circular(10) ,
                                              borderSide: BorderSide(color:Colors.white)),

                                          hintText:'Email',
                                          hintStyle: TextStyle(color: Colors.white),
                                          border:OutlineInputBorder(
                                            borderRadius:BorderRadius.circular(10),

                                          ),
                                        )

                                    ),
                                    SizedBox(
                                      height:30,
                                    ),
                                    TextField(
                                        obscureText: true,

                                        decoration:InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:BorderRadius.circular(10) ,
                                                borderSide: BorderSide(color:Colors.black)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:BorderRadius.circular(10) ,
                                                borderSide: BorderSide(color:Colors.white)),
                                            hintText : 'Password',
                                            hintStyle: TextStyle(color: Colors.white),
                                            border:OutlineInputBorder(
                                              borderRadius:BorderRadius.circular(10),
                                            )
                                        )

                                    ),


                                    SizedBox(
                                      height :30,
                                    ),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          Text('Sign Up',style:TextStyle(
                                            color: Colors.white,
                                            fontSize:27,fontWeight:FontWeight.w700,
                                          ),),
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor : Color(0xff4c505b),
                                            child:IconButton(
                                              color:Colors.white,
                                              onPressed:(){

                                              },
                                              icon:Icon(Icons.arrow_forward),

                                            ),
                                          ),
                                        ]
                                    ),
                                    SizedBox(
                                      height:40,
                                    ),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          TextButton(onPressed: () {
                                            Navigator.pushNamed(context,'Register');
                                          }, child: Text("Sign In" ,style:TextStyle(decoration :TextDecoration.underline,
                                              color:Colors.white,fontSize: 18.0))),



                                        ]
                                    ),
                                  ]
                              )
                          ),


                        ]
                    ),
                  )
              ),
            ],
          )
      ),
    );
  }
}
