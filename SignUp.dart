import 'package:animepic/main.dart';
import 'package:animepic/widgets/LogInUi.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sign up",
      home:SafeArea(
        child:Scaffold(
          body: ListView(
            children:[ Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10,left: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimeApp()));
                    },
                        child:const Icon(
                      Icons.arrow_back_ios,color: Colors.black,
                    )),
                  ),
                ),                     //back button
                Container(
                  padding: const  EdgeInsets.only(left: 30, right:30,top: 25,bottom:10),
                  child:const Text('Hello! register to get started', style: TextStyle(
                    fontSize: 45, fontWeight: FontWeight.bold
                  ),),
                ),                   //hello
                const Padding(
                  padding: EdgeInsets.only(right:30,left:30,top:10,bottom: 20),
                  child: TextField(
                    decoration:InputDecoration(
                      hintText:'Username',
                      border: OutlineInputBorder(),
                    ) ,
                  ),
                ),               //username
                const Padding(
                  padding: EdgeInsets.only(left: 30,right:30,top:10,bottom: 15),
                  child: TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     hintText: 'Email'
                   ),
                  ),
                ),              // email
                const Padding(
                  padding: EdgeInsets.only(left: 30,right:30,top:10,bottom: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "password"
                    ),
                  ),
                ),             //password
                const Padding(
                  padding: EdgeInsets.only(left: 30,right:30,top:10,bottom: 15),
                  child: TextField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'confirm password'
                    )
                  ),
                ),             //confirm password
                const SizedBox(height: 10,),
                Container(
                  height: 50,width:340 ,decoration: BoxDecoration(
                  color:Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                  child: TextButton(onPressed: (){},
                      child: const Text("Register" ,style:TextStyle(
                        color: Colors.white,

                      ))),
                )   ,             // button register
                const SizedBox(height: 20,),
                const Center(
                    child:Text('---Or Register with---')
                ),             //or register with
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:TextButton(
                        onPressed: (){},
                        child:const Icon(
                          Icons.facebook,size: 55,
                        )
                      )
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color:Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:TextButton(
                        onPressed: (){},
                        child:const Icon(
                          Icons.g_mobiledata_rounded,size: 55,color: Colors.red,
                        )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:TextButton(
                            onPressed: (){},
                            child:const Icon(
                              Icons.apple,size: 55,color: Colors.black,
                            )
                        )
                    )
                  ],
                ),                      //icons
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Do yoy have account? "),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInUi()));
                    }, child: Text('Log in'))
                  ],
                )                       //do you have log in
              ],
            ),
            ]
          ),
        )
      )
    );
  }
}

