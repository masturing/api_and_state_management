import 'package:api_and_state_management/domain/enum/enum.dart';
import 'package:flutter/material.dart';

void showToast(BuildContext context, String msg,
    {States state = States.success, bool isMargin = false}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(seconds: 1),
    dismissDirection: DismissDirection.down,

    content: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
          color: (state == States.success)
              ? Colors.green
              : (state == States.error)
                  ? Colors.red
                  : Colors.orange,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Center(
        child: Text(
          msg,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    animation: const AlwaysStoppedAnimation(1),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 150),
    elevation: 0,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(100),
    // ),
  ));
}
