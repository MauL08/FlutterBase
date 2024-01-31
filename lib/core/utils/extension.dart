//password validator
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

bool isValidPass(String value) {
  String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

//email validator
bool isValidEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

//phone number validator
bool isValidPhoneNumber(String value) {
  String pattern = r'^[0-9]{9,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

//ktp number validator
bool isValidKTPNumber(String value) {
  String pattern = r'^[0-9]{9,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

// //masking npwp
// var formatNpwp = MaskTextInputFormatter(
//   mask: '##.###.###.#-###.###',
//   filter: {'#': RegExp(r'[0-9]')},
//   type: MaskAutoCompletionType.lazy,
// );

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension ExtendedNum on num {
  String toRupiah({
    String separator = ',',
    String trailing = "",
    int decimalDigit = 0,
  }) {
    NumberFormat f = NumberFormat.currency(
        locale: 'id_ID', decimalDigits: decimalDigit, symbol: '');
    return f.format(this);
  }

  String mergeNominalUniqueCode(int uniqueCode) {
    int uniqueLength = uniqueCode.toString().length;
    String val = toRupiah();
    if (val.length >= uniqueLength) {
      String newStr = val.substring(0, val.length - uniqueLength);
      return newStr;
    }
    return toString();
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

bool isNumber(String value) {
  if (value == '') {
    return true;
  }
  final n = num.tryParse(value);
  return n != null;
}

class NumericTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight =
          newValue.text.length - newValue.selection.end;
      final f = NumberFormat("#,###");
      final number =
          int.parse(newValue.text.replaceAll(f.symbols.GROUP_SEP, ''));
      final newString = f.format(number);
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(
            offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}

void callShowSnackbar(BuildContext context, String msg) {
  final snackBar = SnackBar(content: Text(msg));

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
