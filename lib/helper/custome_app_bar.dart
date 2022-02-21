import 'package:flutter/material.dart';
import 'constans.dart';

class CustomeAppBar extends StatelessWidget {

  final IconData leftIcon;
  final Function? leftCallBack;

  CustomeAppBar(this.leftIcon, {this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top * 0.5, left: 20, right: 20),
      child: Row(children: [
        GestureDetector(
          onTap: leftCallBack != null? () => leftCallBack!() : null,
          child: buildIcon(leftIcon),
        )
      ]),
    );
  }

  Widget buildIcon(IconData icon) {
    return Container (
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimary
      ),
      child: Icon(icon, color: Colors.white,),
    );
  }
}
