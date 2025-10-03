import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(lebel) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
    border: OutlineInputBorder(),
    labelText: lebel
  );
}


ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
   padding: EdgeInsets.all(10),
   backgroundColor: Colors.blue,
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(4),
   ),
  );
}


SizedBox SizeBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}