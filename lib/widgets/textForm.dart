 import 'package:bus_app/const/colors.dart';
import 'package:flutter/material.dart';

TextFormField myTextForm(String hintText,icon, controller) {
    return TextFormField(
            decoration:  InputDecoration(
              fillColor: MyColors.textFieldColor,
              filled: true,
              iconColor: Colors.black,
                icon: icon,
                hintText:
                    hintText,
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.black, fontStyle: FontStyle.italic),
                border:
                    const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(55))) 
                ),
            controller: controller,
          );
  }