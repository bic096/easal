import 'package:easal/presentation/colors/colors.dart';
import 'package:flutter/material.dart';

extension TextFormFieldEx on TextFormField {
  SizedBox mainEx() {
    return SizedBox(
      width: 420,
      child: Container(
        padding: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: kcTextFieldsAndButtonsBackground,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(children: [
          const SizedBox(
            height: 24,
          ),
          this,
        ]),
      ),
    );
  }
}

extension DecoratedContaierX on Widget {
  SizedBox textFieldDeco({double topSpace = 24}) {
    return SizedBox(
      width: 420,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: kcTextFieldsAndButtonsBackground,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: topSpace,
            ),
            this,
          ],
        ),
      ),
    );
  }
}

extension InputDecorationEx on InputDecoration {
  InputDecoration deco() => InputDecoration(
      labelText: labelText,
      errorText: errorText,
      labelStyle: const TextStyle(
          color: kcBodyText, fontSize: 16, fontWeight: FontWeight.bold),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none));
}

extension NumX on num {
  SizedBox get veri => SizedBox(
        height: toDouble(),
      );
  SizedBox get hori => SizedBox(
        width: toDouble(),
      );
}
