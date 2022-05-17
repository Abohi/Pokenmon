import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomTextField extends HookWidget {
  final Widget textFieldLabel;final Widget? prefixIcon;
  final TextEditingController? textEditingController;
  final bool isTextFieldObscure,isPasswordField;
  final TextInputType textInputType;
  final String? errorText,hintText;
  final Color? textFieldFillColor,textfieldTextColor;
  final StateController? stateController;
  final int?maxLength,maxLines;
  final double? lineHeight;
  final String? labelText;
  final List<TextInputFormatter>? textInputFormatters;
  final TextInputAction? textInputAction;
  const CustomTextField({required this.textFieldLabel,required this.textEditingController,required this.isTextFieldObscure,
    required this.textInputType,this.errorText,this.textFieldFillColor,this.textfieldTextColor,this.stateController,this.isPasswordField=false,this.maxLength,this.prefixIcon,
    this.textInputFormatters,this.hintText,this.lineHeight,this.maxLines,this.labelText,this.textInputAction});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFieldLabel,
        SizedBox(height: 4,),
        Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: TextField(
            autofocus: false,
            maxLength:maxLength,
            maxLines:maxLines,
            inputFormatters: textInputFormatters,
            keyboardType:
            textInputType,
            obscureText: isTextFieldObscure,
            textInputAction: textInputAction,
            controller: textEditingController,
            style: TextStyle(color: textfieldTextColor??const Color(0xff5A5454),fontSize: 16,fontWeight: FontWeight.w400,height: lineHeight),
            decoration: InputDecoration(
                filled: true,
                fillColor: textFieldFillColor??const Color(0xffE5E5E5),
                prefixIcon: prefixIcon,
                labelText: labelText,
                labelStyle:TextStyle(
                    color: const Color(0xff5A5454),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                hintText: hintText,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: const Color(0xff7E7E7E)
                ),
                contentPadding:
                const EdgeInsets.only(left: 16, bottom: 12, top: 12),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xffC4C4C4),width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: const Color(0xffC4C4C4),width: 1),
                  borderRadius: BorderRadius.circular(4),
                )
            ),
          ),
        ),
        SizedBox(height: 4,),
        Text(errorText??"",style: TextStyle(
            fontWeight: FontWeight.w400,fontSize: 12,color:Colors.red
        ),)
      ],
    );
  }
}




