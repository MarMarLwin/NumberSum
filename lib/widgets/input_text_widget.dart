import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

text(String text, {var style, var align, overflow, var maxLine, var height}) {
  return Text(
    text,
    overflow: overflow,
    textAlign: align,
    maxLines: maxLine,
    style: TextStyle(fontStyle: style),
    //style: GoogleFonts.poppins(textStyle: style, height: height),
  );
}

textField({
  var key,
  var hintText,
  var labelText,
  var prefixIconData,
  var suffixIconData,
  var obscureText,
  var maxLength,
  var style,
  var keyBoard,
  var controller,
  var errorMessage,
  var readOnly = false,
  var onChanged,
  var onTap,
  var onVisibility,
  var inputFormatter,
  var validatorMsg,
  var maxLine=1,
  var textInputAction=TextInputAction.next,
  var focusBorderColor}) {
  return TextFormField(
    key: key,
    enabled: !readOnly,
    readOnly: readOnly,
    controller: controller,
    keyboardType: keyBoard,
    onChanged: onChanged,
    obscureText: obscureText,
    cursorColor: Colors.blueGrey,
    textInputAction: textInputAction,
    maxLines: maxLine,
    style: TextStyle(fontFamily: 'Lexend', fontSize: dimen14),
    decoration: InputDecoration(
      focusColor: primaryColor,
      filled: true,
      disabledBorder: const UnderlineInputBorder(
        //borderRadius: BorderRadius.circular(dimen10),
        borderSide: BorderSide(color: Color(0xFFEEEEEE)),
      ),
      enabledBorder: OutlineInputBorder(
        // borderRadius: BorderRadius.circular(dimen10),
          borderSide: BorderSide(color: focusBorderColor) //BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        //borderRadius: BorderRadius.circular(dimen10),
        borderSide: BorderSide(color: focusBorderColor),
      ),
      errorBorder:const OutlineInputBorder(
        //borderRadius: BorderRadius.circular(dimen10),
        borderSide:  BorderSide(color: Colors.red, width: 1),
      ),
      focusedErrorBorder:const OutlineInputBorder(
        //  borderRadius: BorderRadius.circular(dimen10),
          borderSide:  BorderSide(color: Colors.red, width: 1)
      ),
      hintText: hintText,
      hintStyle: const TextStyle(color: greyColor),
      labelText: labelText,
      labelStyle: TextStyle(
          color: readOnly ? const Color(0xFF7E7E7E) : primaryColor,
          fontSize: dimen16),
      errorText: errorMessage,
      contentPadding:
      EdgeInsets.only(top: dimen15, bottom: dimen10, left: dimen10),
      prefixIcon: prefixIconData != null
          ? Icon(
        prefixIconData,
        size: dimen20,
        color: readOnly ? const Color(0xFF7E7E7E) : primaryColor,
      )
          : null,
      suffixIcon: suffixIconData == null
          ? null
          : GestureDetector(
        onTap: () {
          onVisibility();
        },
        child: Container(
          padding: const EdgeInsets.all(6),
          child: Icon(
            suffixIconData,
            size: dimen20,
            color: primaryColor,
          ),
        ),
      ),
    ),
    inputFormatters: inputFormatter,
    onTap: () =>onTap,
    validator: (value) {
      if (value!.isEmpty) {
        return validatorMsg;
      }
      else{
        return null;
      }
    },
  );
}
