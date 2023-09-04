import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration : BoxDecoration(
        image : DecorationImage(
          image : AssetImage( 'assets/login.jpeg') ,fit :BoxFit.cover// here Box fit is used so that it covers the whole page
        )
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack( // hum chahte ha ke jo bhi likhe wo organised me rahe issliye body ke saath ya hum column
          // use kar sakte ha and yaha stack
          children:[
            // text me margin nhi hote ha container me hote ha
            Container(
              padding : EdgeInsets.only(left : 35,top: 130),
              child:Text(
                'Welcome \n Back' ,style : TextStyle(color : Colors.white,fontSize : 33)
              ),
            ),
            SingleChildScrollView(// by using the SingleChildScrollView the problem of render flow was solved

           child: Container(
              padding: EdgeInsets.only(top : MediaQuery.of(context).size.height*0.5),//media query ka use karne
              // se humare phone ke size milta ha jiske help se phir wo sara manage hota ha
              child:Column(
children:[
  TextField(
    decoration : InputDecoration(
      fillColor:Colors.grey.shade100,
      filled:true,
      hintText:'Email',

border:OutlineInputBorder(

borderRadius: BorderRadius.circular(10)
)
    )
  ),

  SizedBox(
    height:30,
  ),// we have added sizedBox so that there will be some gap between the two textfield
  TextField(
    obscureText:true,// it is used in case of password
    decoration: InputDecoration(
      fillColor:Colors.grey.shade100,

      filled:true,
      hintText:'Password',
      border:OutlineInputBorder(
        borderRadius:BorderRadius.circular(10),
      )
    )
  ),
  SizedBox(
    height:30,
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
     Text(
       "Sign In" , style:TextStyle(
       fontSize:32,fontWeight:FontWeight.w700
     ),
     ),
      CircleAvatar(
radius:30,
        backgroundColor:Color(0xff4c505b),
        child:IconButton(
          onPressed:(){

          },
icon:Icon(Icons.arrow_forward),
        )
      )
    ],
  ),
  SizedBox(
    height:40,
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
      TextButton(onPressed: () {
        Navigator.pushNamed(context,'register');
      }, child: Text('Sign Up',style:TextStyle(decoration :TextDecoration.underline
          ,fontSize : 18,color:Color(0xff4c505b)
      ))),
      TextButton(onPressed: () {}, child: Text("Forgot PassWord",style :TextStyle(decoration:TextDecoration.underline,fontSize:18,
      color:Color(0xff4c505b))))
    ]
  ),
],
              ),
           ),
            )
          ],

        ),
      ),
    );
  }
}
