import 'package:ecom_admin_panel_web/utiles/constants.dart';
import 'package:ecom_admin_panel_web/utiles/main_model.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  mainModel myMainModel;

  DropdownWidget({super.key, required this.myMainModel});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 15),
            child: Text(
              widget.myMainModel.title,
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: abeatByKaiRegularFont),
            ),
          ),
          ...widget.myMainModel.mainList
        ],
      ),
    );
  }
}
