import 'dart:typed_data';
import 'package:ecom_admin_panel_web/main.dart';
import 'package:ecom_admin_panel_web/reusable_widgets/dropdown_widget.dart';
import 'package:ecom_admin_panel_web/reusable_widgets/salesproductmanager_widget.dart';
import 'package:ecom_admin_panel_web/utiles/colors.dart';
import 'package:ecom_admin_panel_web/utiles/constants.dart';
import 'package:ecom_admin_panel_web/utiles/main_model.dart';
import 'package:ecom_admin_panel_web/utiles/navbar_model.dart';
import 'package:ecom_admin_panel_web/utiles/render_model.dart';
import 'package:ecom_admin_panel_web/views/responsive_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../reusable_widgets/dashboard_render_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<mainModel> mainList = [];
  List<NavBarModel> salesProductManager = [];
  List<NavBarModel> supportApps = [];
  List<NavBarModel> allPages = [];
  List<NavBarModel> userInterface = [];

  // screen rendering for orderWidgetList
  List<RenderWidgetModel> orderWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(
              child: Text(
            "Order1",
            style: TextStyle(fontSize: 26),
          )),
        ),
        "Order1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Order2")),
        ),
        "Order2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Order3")),
        ),
        "Order3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Order4")),
        ),
        "Order4",),
  ];

  // screen rendering for productWidgetList
  List<RenderWidgetModel> productWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Product1")),
        ),
        "Product1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Product2")),
        ),
        "Product2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Product3")),
        ),
        "Product3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Product4")),
        ),
        "Product4",),
  ];

  // screen rendering for customerWidgetList
  List<RenderWidgetModel> customerWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Customer1")),
        ),
        "Customer1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Customer2")),
        ),
        "Customer2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Customer3")),
        ),
        "Customer3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Customer4")),
        ),
        "Customer4",),
  ];

  // screen rendering for buyerWidgetList
  List<RenderWidgetModel> buyerWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Buyer1")),
        ),
        "Buyer1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Buyer2")),
        ),
        "Buyer2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Buyer3")),
        ),
        "Buyer3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Buyer4")),
        ),
        "Buyer4",),
  ];

  // screen rendering for invoiceWidgetList
  List<RenderWidgetModel> invoiceWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Invoice1")),
        ),
        "Invoice1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Invoice2")),
        ),
        "Invoice2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Invoice3")),
        ),
        "Invoice3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Invoice4")),
        ),
        "Invoice4",),
  ];

  // screen rendering for chatsWidgetList
  List<RenderWidgetModel> chatsWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Chats1")),
        ),
        "Chats1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Chats2")),
        ),
        "Chats2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Chats3")),
        ),
        "Chats3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Chats4")),
        ),
        "Chats4",),
  ];

  // screen rendering for emailWidgetList
  List<RenderWidgetModel> emailWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("email1")),
        ),
        "email1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("email2")),
        ),
        "email2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("email3")),
        ),
        "email3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("email4")),
        ),
        "email4",),
  ];

  // screen rendering for todoAppWidgetList
  List<RenderWidgetModel> todoAppWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("todoApp1")),
        ),
        "todoApp1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("todoApp2")),
        ),
        "todoApp2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("todoApp3")),
        ),
        "todoApp3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("todoApp4")),
        ),
        "todoApp4",),
  ];

  // screen rendering for profileWidgetList
  List<RenderWidgetModel> profileWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Profile1")),
        ),
        "Profile1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Profile2")),
        ),
        "Profile2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Profile3")),
        ),
        "Profile3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Profile4")),
        ),
        "Profile4",),
  ];

  // screen rendering for userWidgetList
  List<RenderWidgetModel> userWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("User1")),
        ),
        "User1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("User2")),
        ),
        "User2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("User3")),
        ),
        "User3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("User4")),
        ),
        "User4",),
  ];

  // screen rendering for authenticationWidgetList
  List<RenderWidgetModel> authenticationWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Authentication1")),
        ),
        "Authentication1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Authentication2")),
        ),
        "Authentication2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Authentication3")),
        ),
        "Authentication3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Authentication4")),
        ),
        "Authentication4",),
  ];

  // screen rendering for errorPagesWidgetList
  List<RenderWidgetModel> errorPagesWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("errorPages1")),
        ),
        "errorPages1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("errorPages2")),
        ),
        "errorPages2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("errorPages3")),
        ),
        "errorPages3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("errorPages4")),
        ),
        "errorPages4",),
  ];

  // screen rendering for settingWidgetList
  List<RenderWidgetModel> settingWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Setting1")),
        ),
        "Setting1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Setting2")),
        ),
        "Setting2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Setting3")),
        ),
        "Setting3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Setting4")),
        ),
        "Setting4",),
  ];

  // screen rendering for FAQWidgetList
  List<RenderWidgetModel> faQWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("FAQ1")),
        ),
        "FAQ1",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("FAQ2")),
        ),
        "FAQ2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("FAQ3")),
        ),
        "FAQ3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("FAQ4")),
        ),
        "FAQ4",),
  ];

  // screen rendering for componentsWidgetList
  List<RenderWidgetModel> componentsWidgetList = [
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Components1")),
        ),
        "Components",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Components2")),
        ),
        "Components2",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Components3")),
        ),
        "Components3",),
    RenderWidgetModel(
        Container(
          child: const Center(child: Text("Components4")),
        ),
        "Components4",),
  ];
  bool isHovered = false;
  bool isSelected = false;
  bool isPress = false;
  Widget bodyWidget = Container();
  bool isClicked = false;

  // Variable to hold the selected image file
  PlatformFile? _imageFile;

  // Method to pick and display an image file
  Future<void> _pickImage() async {
    try {
      // Pick an image file using file_picker package
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      // If user cancels the picker, do nothing
      if (result == null) return;

      // If user picks an image, update the state with the new image file
      setState(() {
        _imageFile = result.files.first;
      });
    } catch (e) {
      // If there is an error, show a snackbar with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  void initState() {
    super.initState();

    // adding navbar items

    //salesProductManager
    salesProductManager.add(NavBarModel(
        "assets/images/ordericon.png",
        "Order",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        orderWidgetList));
    salesProductManager.add(NavBarModel(
        "assets/images/productsicon.png",
        'Products',
        const Icon(Icons.keyboard_arrow_down_sharp),
        productWidgetList));
    salesProductManager.add(NavBarModel(
      "assets/images/customericon.png",
      'Customer',
      const Icon(Icons.keyboard_arrow_down_sharp),
      customerWidgetList,
    ));
    salesProductManager.add(NavBarModel(
      "assets/images/buyericon.png",
      'Buyer',
      const Icon(Icons.keyboard_arrow_down_sharp),
      buyerWidgetList,
    ));
    salesProductManager.add(NavBarModel(
      "assets/images/invoicesicon.png",
      'Invoices',
      const Icon(Icons.keyboard_arrow_down_sharp),
      invoiceWidgetList,
    ));

    //supportApps
    supportApps.add(NavBarModel(
        "assets/images/chatsicon.png",
        "Chats",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        chatsWidgetList));
    supportApps.add(NavBarModel(
        "assets/images/emailicon.png",
        "Email",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        emailWidgetList));
    supportApps.add(NavBarModel(
        "assets/images/todoappicon.png",
        "Todo App",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        todoAppWidgetList));

    //allPages
    allPages.add(NavBarModel(
        "assets/images/profileicon.png",
        "Profile",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        profileWidgetList));
    allPages.add(NavBarModel(
        "assets/images/usericon.png",
        "User",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        userWidgetList));
    allPages.add(NavBarModel(
        "assets/images/authenticationicon.png",
        "Authentication",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        authenticationWidgetList));
    allPages.add(NavBarModel(
        "assets/images/errorpagesicon.png",
        "Error Pages",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        errorPagesWidgetList));
    allPages.add(NavBarModel(
        "assets/images/settingicon.png",
        "Setting",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        settingWidgetList));
    allPages.add(NavBarModel(
        "assets/images/faqicon.png",
        "FAQ",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        faQWidgetList));

    //userInterface
    userInterface.add(NavBarModel(
        "assets/images/componentsicon.png",
        "Components",
        const Icon(Icons.keyboard_arrow_down_sharp, color: grey),
        componentsWidgetList));

    //mainList
    // mainList.add(mainModel('salesProductManager',getNavBarList(salesProductManager)));
    mainList.add(mainModel('Support Apps', getNavBarList(supportApps)));
    mainList.add(mainModel('All Pages', getNavBarList(allPages)));
    mainList.add(mainModel('User Interface', getNavBarList(userInterface)));
  }

//by using this function we will able to render the screen navbar to same body

  List<Widget> getNavBarList(List<NavBarModel> list) {
    List<Widget> navWidgetList = [];
    list.forEach((element) {
      navWidgetList.add(
        OrderWidget(
          niyazmodel: element,
          onPressed: (RenderWidgetModel value) {
            bodyWidget = value.bodyWidget;
            setState(() {});
          },
        ),
      );
    });
    return navWidgetList;
  }

  //by using this widget we will able to add dropdown list

  List<Widget> getMainList() {
    List<Widget> mainWidgetList = [];
    mainList.forEach((element) {
      mainWidgetList.add(
        DropdownWidget(
          myMainModel: element,
        ),
      );
    });
    return mainWidgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ResponsiveWidget.isComputerScreen(context: context)
        // by using this widget we will able to display Web screen
            ? Column(
                children: [
                  //by using this widget we will able to display MainMenu
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: pinkAccent.withOpacity(0.4),
                                width: 0.5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //by using this widget we will able to know profile logo and details
                        Container(
                            child: Row(
                          children: [
                            //by using this widget we will able to know profile logo
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Stack(
                                children: [
                                  Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: greenAccent, width: 1.9),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: _imageFile != null
                                            ? Image.memory(
                                                Uint8List.fromList(
                                                    _imageFile!.bytes!),
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                      )),
                                  Positioned(
                                    left: 28,
                                    top: 25,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: black, width: 0.5),
                                      ),
                                      child: Center(
                                          child: InkWell(
                                        onTap: _pickImage,
                                        child: const Icon(
                                          Icons.edit,
                                          size: 9,
                                          color: black,
                                          // color: Theme.of(context).colorScheme.onPrimary,
                                        ),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //by using this widget we will able to know profile details
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      "Shafiya Khan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          fontFamily: abeatByKaiRegularFont),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Sales product manager",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: abeatByKaiRegularFont),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                        //by using this widget we will able to know right side of the icons
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {

                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPress? black.withOpacity(0.4):white,
                                  radius: 14,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 17,
                                    color: isPress? white: black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: (){
                                  setState(() {

                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPress? black.withOpacity(0.4):white,
                                  radius: 14,
                                  child: Icon(
                                    Icons.chat,
                                    size: 17,
                                    color: isPress? white: black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 30,
                                width: 1.0,
                                color: grey,
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: (){
                                  setState(() {

                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPress? black.withOpacity(0.4):white,
                                  radius: 14,
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    size: 17,
                                    color: isPress? white: black,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 70,
                                child: Card(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)),
                                  color: Colors.white60,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            EcomWebApp.themeNotifier.value =
                                                EcomWebApp.themeNotifier
                                                            .value ==
                                                        ThemeMode.light
                                                    ? ThemeMode.dark
                                                    : ThemeMode.light;
                                            setState(() {
                                              isPress = !isPress;
                                            });
                                          },
                                          child: Container(
                                            height: 24,
                                            width: 27,
                                            decoration: BoxDecoration(
                                                color: isPress == false
                                                    ? Colors.white
                                                    : Colors.transparent,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: isPress
                                                      ? Colors.white70
                                                          .withOpacity(0.3)
                                                      : Colors.transparent,
                                                )),
                                            child: const Icon(
                                              Icons.light_mode_outlined,
                                              size: 24,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            EcomWebApp.themeNotifier.value =
                                                EcomWebApp.themeNotifier
                                                            .value ==
                                                        ThemeMode.light
                                                    ? ThemeMode.dark
                                                    : ThemeMode.light;
                                            setState(() {
                                              isPress = !isPress;
                                            });
                                          },
                                          child: Container(
                                            height: 25,
                                            width: 28,
                                            decoration: BoxDecoration(
                                              color: !isPress == false
                                                  ? Colors.white
                                                  : Colors.transparent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: isPress
                                                    ? Colors.white70
                                                        .withOpacity(0.3)
                                                    : Colors.transparent,
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.dark_mode_outlined,
                                              size: 24,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //by using this widget we will able to display navbar and body screen
                  Expanded(
                    child: Row(
                      children: [
                        //by using this widget we will able to display the navbar list and dropdown list
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          height: MediaQuery.of(context).size.height,
                          width: 195,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      color: pinkAccent.withOpacity(0.2),
                                      width: 0.8))),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  child: Text(
                                    "Sales product manager",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: abeatByKaiRegularFont),
                                  ),
                                ),
                                InkWell(
                                  onHover: (hovering) {
                                    setState(() => isHovered = hovering);
                                  },
                                  onTap: () {
                                    setState(() {
                                      bodyWidget =
                                          const DashboardRenderScreen();
                                    });
                                  },
                                  child: Container(
                                    height: 45,
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(
                                         left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          color: white,
                                          margin: const EdgeInsets.only(
                                              right: 10),
                                          child: Image.asset(
                                              "assets/images/dashboardicon.png"),
                                        ),
                                        Container(
                                          child: Text(
                                            "Dashboard",
                                            style: TextStyle(
                                                color: isHovered ? Colors.blue : null,
                                                fontSize: 14,
                                                fontFamily:
                                                    abeatByKaiRegularFont),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ...getNavBarList(salesProductManager),
                                ...getMainList(),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 20, bottom: 15),
                                  height: 20,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    style:
                                        ElevatedButton.styleFrom(primary: white
                                            // Background color
                                            ),
                                    child: Text(
                                      "View All",
                                      style: TextStyle(
                                          color: black,
                                          fontSize: 8,
                                          fontFamily: abeatByKaiRegularFont),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //by using this widget we will able to display right side of the body same screen
                        Expanded(
                          flex: 8,
                          child: bodyWidget,
                        ),
                      ],
                    ),
                  ),
                ],
              )
        // by using this widget we will able to display Mobile screen
            : Container(),
      ),
    );
  }
}
