import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/product_cell.dart';
import 'package:flutter_application_1/common_widget/section_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusiveOfferArr = [
    {
      "name": "Fresh Apple",
      "icon": "assets/images/apple.png",
      "qty": "12",
      "unit": "pcs , Prices",
      "price": "\$2.0"
    },
    {
      "name": "Organic Bananas",
      "icon": "assets/images/banana.png",
      "qty": "7",
      "unit": "pcs , Prices",
      "price": "\$3.0"
    },
  ];
  List bestSellingArr = [
    {
      "name": "Fresh Chicken",
      "icon": "assets/images/broiler_chicken.png",
      "qty": "1",
      "unit": "pcs , Prices",
      "price": "\$5.0"
    },
    {
      "name": "Fresh Eggs",
      "icon": "assets/images/egg_chicken_red.png",
      "qty": "12",
      "unit": "pcs , Prices",
      "price": "\$3.0"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/splash_screenlogo1.png",
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/location.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Nepal,Kathmandu",
                      style: TextStyle(
                          color: TColor.darkGray,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F3F2),
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: TextField(
                      controller: txtSearch,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Image.asset("assets/images/search.png",
                                width: 20, height: 20)),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Store",
                        hintStyle: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.maxFinite,
                      height: 114,
                      decoration: BoxDecoration(
                          color: const Color(0xffF2F3F2),
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/banner_top.png",
                          fit: BoxFit.cover)),
                ),
                SectionView(
                    title: "Exclusive Offer",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    onPressed: () {}),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: exclusiveOfferArr.length,
                      itemBuilder: (context, index) {
                        var pObj = exclusiveOfferArr[index] ;
                         print('Item at index $index: $pObj');
                        return ProductCell(
                          pObj: pObj,
                          onPressed: () {},
                          onCart: () {},
                        );
                      }),
                ),
                SectionView(
                    title: "Best Selling",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    onPressed: () {}),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      itemCount: bestSellingArr.length,
                      itemBuilder: (context, index) {
                        var pObj = bestSellingArr[index];
                        print('Item at index $index: $pObj');
                        return ProductCell(
                          pObj: pObj,
                          onPressed: () {},
                          onCart: () {},
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
