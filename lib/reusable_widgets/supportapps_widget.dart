import 'package:ecom_admin_panel_web/utiles/constants.dart';
import 'package:ecom_admin_panel_web/utiles/render_model.dart';
import 'package:flutter/material.dart';

class SupportAppsWidget extends StatefulWidget {
  RenderWidgetModel renderWidgetModel;
  VoidCallback onPressed;

  SupportAppsWidget(
      {super.key, required this.renderWidgetModel, required this.onPressed});

  @override

  State<SupportAppsWidget> createState() => _SupportAppsWidgetState();
}

class _SupportAppsWidgetState extends State<SupportAppsWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hovering) {
        setState(() => isHovered = hovering);
      },
      onTap: widget.onPressed,
      child: Container(
        height: 30,
        width: double.infinity,
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(bottom: 10, right: 20, left: 35),
        child: Text(
          widget.renderWidgetModel.title,
          style: TextStyle(
              color: isHovered ? Colors.blue : null,
              fontSize: 12,
              fontFamily: abeatByKaiRegularFont),
        ),
      ),
    );
  }
}
