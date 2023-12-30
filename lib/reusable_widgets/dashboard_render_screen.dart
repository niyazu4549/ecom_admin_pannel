import 'package:ecom_admin_panel_web/utiles/colors.dart';
import 'package:flutter/material.dart';

class DashboardRenderScreen extends StatefulWidget {
  const DashboardRenderScreen({super.key});

  @override
  State<DashboardRenderScreen> createState() => _DashboardRenderScreenState();
}

class _DashboardRenderScreenState extends State<DashboardRenderScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: pinkAccent, width: 0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 10),
                          child: const Text(
                            "Activity Overview",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          height: 135,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: pinkAccent, width: 0.1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 290,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: pinkAccent, width: 0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: const Text(
                                  "Activity Overview",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Icon(
                                    Icons.more_horiz_outlined,
                                    size: 18,
                                    color: black,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          height: 240,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: pinkAccent, width: 0.1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 290,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: pinkAccent, width: 0.1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 15, right: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                child: const Text(
                                  "Activity Overview",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(right: 5),
                                        child: const Icon(
                                          Icons.dashboard_outlined,
                                          size: 18,
                                          color: black,
                                        )),
                                    Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: grey.withOpacity(0.2),
                                          border: Border.all(
                                              color: black, width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: const Center(
                                            child: Icon(
                                          Icons.menu,
                                          size: 16,
                                          color: black,
                                        ))),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          height: 240,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: pinkAccent, width: 0.1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 20, top: 10, bottom: 15),
                      height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: black.withOpacity(0.2), width: 0.4),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 20, bottom: 15),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: black.withOpacity(0.2), width: 0.4),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 20, bottom: 25),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: black.withOpacity(0.2), width: 0.4),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 20, bottom: 25),
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: black.withOpacity(0.2), width: 0.4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
