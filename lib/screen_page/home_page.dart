import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String? email;
  final GlobalKey<FormState> _formKey=GlobalKey <FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  bool _isObsecure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return "please enter your email";
                  }
                  if (!value.contains("@")){
                    return "your email is not coreect";
                  }
                },
                controller: emailController,

                decoration:  InputDecoration(
                  filled: true,
                  fillColor: Colors.black12.withOpacity(0.2),
                  prefixIcon: Icon(Icons.email, color: Colors.black12,),
                  suffixIcon: Icon(Icons.visibility, color: Colors.black45,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.amber, width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.green, width: 1)
                  ),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(fontSize: 18, color: Colors.black26),

                ),
              ),
              SizedBox(height: 10,),
              // TextFormField(
              //   validator: (value){
              //     if(value!.isEmpty){
              //       return "please enter your email";
              //     }
              //     if (value.length<5){
              //       return"your password short";
              //     }
              //     if (value.length>8){
              //       return"your password long";
              //     }
              //   },
              //   controller: passwordController,
              //   obscureText: _isObsecure,
              //
              //   decoration:  InputDecoration(
              //     filled: true,
              //     fillColor: Colors.black12.withOpacity(0.2),
              //     prefixIcon: IconButton(onPressed: (){
              //       setState((){
              //         _isObsecure=!_isObsecure;
              //       });
              //     }, icon: Icon(
              //         _isObsecure==true?  Icons.visibility :Icons.visibility_off)),
              //
              //
              //
              //     suffixIcon: Icon(Icons.password, color: Colors.black,),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(12),
              //       borderSide: BorderSide(color: Colors.amber, width: 1)
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: BorderSide(color: Colors.green, width: 1)
              //     ),
              //     hintText: 'Enter your name',
              //     hintStyle: TextStyle(fontSize: 18, color: Colors.black38),
              //
              //   ),
              // ),

            const SizedBox(height: 20,),
            Text('$email'),
            SizedBox(height: 10,),
            ElevatedButton.icon(onPressed: (){
              setState((){
                 email= emailController.text;
              });
              if(_formKey.currentState!.validate()){
                print("sucess");
              }
              else{
                print("wring");
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage(
                  password: passwordController.text,
                email: emailController.text,
              )));
            }, icon: Icon(Icons.login), label: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }

}

// (value){
// if(value!.isEmpty){
// return "please enter your email";
// }
// if (!value.contains("@")){
// return "your email is not coreect";
// }
// },