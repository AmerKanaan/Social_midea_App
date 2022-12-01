import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MenuePosts extends StatelessWidget {
   final String? type;

  const MenuePosts({this.type});

  @override
  Widget build(BuildContext context) {
   MyLocalController controller=Get.find();
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: DropdownButtonFormField<String>(
              hint: Text('${type}'),
              onChanged: (value) {},
              items: [
                DropdownMenuItem(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      ("Math".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  value: ("Math".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ('Sciences'.tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Sciences".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("Geography".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Geography".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("History".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("History".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("Arabic".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Arabic".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("English".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("English".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("Franch".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Franch".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("Physics".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Physics".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("Chemistry".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Chemistry".tr),
                ),
                DropdownMenuItem(
                  child: InkWell(
                    child: Text(
                      ("Arts".tr),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  value: ("Arts".tr),
                ),
              ],
            ),
            // child: ExpansionTile(
            //   children: [
            //     Container(
            //
            //       child: InkWell(
            //         child: Text(
            //           'Math',
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         onTap: () {},
            //       ),
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Religion',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Sciences',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Geography',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'History',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Arabic',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'English',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'French',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Physics',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Chemistry',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //     InkWell(
            //       child: Text(
            //         'Arts',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       onTap: () {},
            //     ),
            //   ],
            //   title: Text(
            //     "Choose to sort",
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
