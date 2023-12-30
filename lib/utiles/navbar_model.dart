import 'package:ecom_admin_panel_web/utiles/render_model.dart';

class NavBarModel {
  var leadingicon, title, actionicon;
  List<RenderWidgetModel> dropDownList=[];

  NavBarModel(
    this.leadingicon,
    this.title,
    this.actionicon,
     this.dropDownList,
  );
}
