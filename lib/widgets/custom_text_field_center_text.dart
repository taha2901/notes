import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextFieldCenterlable extends StatefulWidget {
  const CustomTextFieldCenterlable({
    Key? key,
    this.hint,
    this.onChange,
    this.obscure = false,
    this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    this.ispassword,
    bool? isPassword,
    TextInputType? type,
    this.fillColor,
    this.showBorder = true,
    this.prefixText,
    this.onSubmitted,
    this.controller, 
  }) : super(key: key);

  final bool showBorder;
  final Color? fillColor;
  final String? hint;
  final String? prefixText;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final bool? obscure;
  final TextInputType? inputType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixPressed;
  final bool? ispassword;
  final TextEditingController? controller; 

  @override
  State<CustomTextFieldCenterlable> createState() => _CustomTextFieldCenterlableState();
}

class _CustomTextFieldCenterlableState extends State<CustomTextFieldCenterlable> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      controller: widget.controller,
      cursorColor: kPrimaryColor,
      onTap: widget.suffixPressed,
      obscureText: widget.obscure!,
      keyboardType: widget.inputType,
      validator: (data) {
        if (data!.isEmpty) {
          return "Value Is Wrong";
        }
      },
      
      onChanged: widget.onChange,
      onFieldSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        
        filled: true,
        fillColor: widget.fillColor,
        hintText: widget.hint,
        hintStyle:const TextStyle(color: kPrimaryColor),
        prefixText: widget.prefixText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kPrimaryColor),
        border: widget.showBorder
            ? BuildBorder()
            : InputBorder.none,
            
        prefixIcon:
            widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon:
            widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            );
  }
}
