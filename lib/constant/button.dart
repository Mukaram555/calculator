import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String value = '' ;
  Color ButtonColor;
  final VoidCallback callBackFunction;
  MyButton({Key? key, required this.value,this.ButtonColor=Colors.grey,required this.callBackFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: ButtonColor,
            shape: BoxShape.circle,
          ),
          child: InkWell(
            onTap: callBackFunction,
            child: Center(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ),
      ),
    );
  }

}
