import 'package:ecom_admin_panel_web/reusable_widgets/supportapps_widget.dart';
import 'package:ecom_admin_panel_web/utiles/colors.dart';
import 'package:ecom_admin_panel_web/utiles/constants.dart';
import 'package:ecom_admin_panel_web/utiles/navbar_model.dart';
import 'package:ecom_admin_panel_web/utiles/render_model.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatefulWidget {
  NavBarModel niyazmodel;
  ValueSetter<RenderWidgetModel> onPressed;

  OrderWidget({super.key, required this.niyazmodel, required this.onPressed});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  bool isClicking = false;
  bool isHovered = false;

  List<Widget> getDropdownList() {
    List<Widget> dropWidgetList = [];
    widget.niyazmodel.dropDownList.forEach((element) {
      dropWidgetList.add(SupportAppsWidget(
        renderWidgetModel: element,
        onPressed: () {
          widget.onPressed(element);
        },
      ));
    });
    return dropWidgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onHover: (hovering) {
            setState(() => isHovered = hovering);
          },
          onTap: () {
            isClicking = !isClicking;
            setState(() {});
          },
          child: Container(
            height: 35,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10, right: 20,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 15,
                      width: 15,
                      color: white,
                      child: Image.asset(
                        widget.niyazmodel.leadingicon,
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.niyazmodel.title,
                        style: TextStyle(
                            color: isHovered ? Colors.blue : null,
                            fontSize: 13,
                            fontFamily: abeatByKaiRegularFont),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: !isClicking
                      ? Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: isHovered ? blue : null,
                          size: 17,
                        )
                      : Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: isHovered ? blue : null,
                          size: 17,
                        ),
                ),
              ],
            ),
          ),
        ),
        if (isClicking) ...getDropdownList()
      ],
    );
  }
}
