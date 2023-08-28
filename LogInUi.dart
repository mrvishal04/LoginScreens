import 'package:animepic/main.dart';
import 'package:animepic/widgets/forgot_password.dart';
import 'package:flutter/material.dart';

class LogInUi extends StatefulWidget {
  const LogInUi({super.key});


  @override
  State<LogInUi> createState() => _LogInUiState();
}

class _LogInUiState extends State<LogInUi> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child:Scaffold(
            body: ListView(
              children:[ Column(
                  children:[const SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimeApp()));
                      },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color:Colors.black,
                          )),
                    ),      //back button
                    const SizedBox(height: 35,),
                    const Padding(
                      padding: EdgeInsets.only(left: 30,right: 30),
                      child: Text("Welcome back!Glad to see you ,Again!",style:TextStyle(
                          color:Colors.black,fontSize: 40,fontWeight: FontWeight.bold
                      )),
                    )  ,   //welcome
                    const SizedBox(height:20),
                    const Padding(
                      padding: EdgeInsets.only(right: 30,left: 30,top: 30,bottom: 10),
                      child: Center(
                          child:TextField(
                            decoration:InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your Username '
                            )
                          )
                      ),

                    ),        //user input
                    const Padding(
                      padding:  EdgeInsets.only(right:30,left:30,top:20,bottom: 10),
                      child: Center(
                        child:TextField(
                          decoration:InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter your password"
                          ),
                        )
                      ),
                    ),        //password input
                    Padding(
                      padding: const EdgeInsets.only(left:232,right:30),
                      child: TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>const ForgotPassword())
                        );
                      },
                          child:const Text('Forgot password?',style:TextStyle(
                            color:Colors.black
                          ))),
                    ),
                    const SizedBox(height:30),
                    Center(
                      child: Container(
                        width: 340,
                        padding: const EdgeInsets.only(top:10,bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextButton(
                            onPressed: (){
                            },
                            child:const Text('Login',style: TextStyle(
                              color: Colors.white,
                            ),)
                        ),
                      ),
                    ) ,            //login
                    const SizedBox(height:25),
                    const Center(
                      child:Text('------- or Login with ------',style:TextStyle(
                          fontSize: 10,color:Colors.black
                      )),
                    ),
                    const SizedBox(height: 20,),//or text
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
                    ),      //icons

                  ]
              ),
              ],),
          )
      ),
    );
  }
}
