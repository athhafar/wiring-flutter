// import 'package:atha_wearing/pages/controller/home_controller.dart';
// import 'package:atha_wearing/pages/utilities/colors.dart';
// import 'package:atha_wearing/pages/widgets/appbar_default.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'widgets/card_news.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   HomeController controller = Get.put(HomeController());

//   @overridep

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kColorNeutral1,
//       body: Column(
//         children: [
//           const AppBarDefault(
//             title: "Azmi Wiring",
//             withLeading: false,
//           ),
//           Obx(
//             () => controller.loadingNews.value
//                 ? const Center(child: CircularProgressIndicator())
//                 : Expanded(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         //  physics: const NeverScrollableScrollPhysics(),
//                         itemCount: 5,
//                         itemBuilder: (BuildContext context, int index) {
//                         //  var data = controller.listNewsEverything[index];
//                           return CardNews(
//                             image: controller.listNewsEverything[index].urlToImage ?? '',
//                             jobTitle: controller.listNewsEverything[index].title ?? '',
//                             company: controller.listNewsEverything[index].description ?? '',
//                             location: controller.listNewsEverything[index].publishedAt ?? '',
//                             workSettings: controller.listNewsEverything[index].content ?? '',
//                             time: controller.listNewsEverything[index].author ?? '',
//                             jobTypes: controller.listNewsEverything[index].description ?? '',
//                             onTap: () {},
//                           );
//                         },
//                       ),
//                     ),
//                   ), 
//           )
//         ],
//       ),
//     );
//   }
// }
