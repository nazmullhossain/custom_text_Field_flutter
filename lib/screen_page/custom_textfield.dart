import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key, this.controller, this.hintText, this.pIcon, this.sIcon, this.validator}) : super(key: key);
 dynamic validator;
   TextEditingController? controller;
   IconData? sIcon, pIcon;
   String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,

      decoration:  InputDecoration(
        filled: true,
        fillColor: Colors.black12.withOpacity(0.2),
        prefixIcon: Icon(pIcon, color: Colors.black12,),
        suffixIcon: Icon(sIcon, color: Colors.black45,),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.amber, width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.green, width: 1)
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18, color: Colors.black26),

      ),
    );
  }
}
