import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_apps/component/button/menubutton.dart';
import 'package:travel_apps/component/colors/genColors.dart';
import 'package:travel_apps/component/text/genText.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  List items = [
    "assets/images/promo/1.jpg",
    "assets/images/promo/2.jpg",
    "assets/images/promo/3.jpg",
    "assets/images/promo/4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Get.toNamed("/pencarian");
                },
                child: Container(width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 16 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade300
                ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.search, color: Colors.grey.shade500,),
                      SizedBox(width: 10,),
                      GenText("Cari Tujuan Travel Anda", color: Colors.grey.shade500,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 150,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        items[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  pagination: new SwiperPagination(
                      builder: new DotSwiperPaginationBuilder(
                          color: Colors.white, activeColor: GenColors.primaryColor)
                  ),
                  itemCount: items.length,
                  viewportFraction: 0.92,
                  scale: 0.95,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: GenText("Pilihan Destinasi Terbaik", fontSize: 15, fontweight: FontWeight.bold, color: Colors.black,),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  MenuButton(ontap: (){Get.toNamed("/pencarian");},
                  Gambar: "assets/images/destinasi/bali.jpg",
                    Text: "Bali",
                  ),
                  SizedBox(width: 8,),
                  MenuButton(ontap: (){Get.toNamed("/pencarian");},
                    Gambar: "assets/images/destinasi/lombok.jpg",
                    Text: "Lombok",
                  ),
                  SizedBox(width: 8,),
                  MenuButton(ontap: (){Get.toNamed("/pencarian");},
                    Gambar: "assets/images/destinasi/rajaampat.jpg",
                    Text: "Raja Ampat",
                  ),
                  SizedBox(width: 8,),
                  MenuButton(ontap: (){Get.toNamed("/pencarian");},
                    Gambar: "assets/images/destinasi/jogja.jpg",
                    Text: "Jogja",
                  ),
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  MenuButton(ontap: (){
                    Get.toNamed("/pencarian");
                  },
                    Gambar: "assets/images/destinasi/solo.jpg",
                    Text: "Solo",
                  ),
                  SizedBox(width: 8,),
                  MenuButton(ontap: (){
                    Get.toNamed("/pencarian");
                  },
                    Gambar: "assets/images/destinasi/bandung.jpg",
                    Text: "Bandung",
                  ),
                  SizedBox(width: 8,),
                  MenuButton(ontap: (){
                    Get.toNamed("/pencarian");
                  },
                    Gambar: "assets/images/destinasi/medan.jpg",
                    Text: "Medan",
                  ),
                  SizedBox(width: 8,),
                  MenuButton(ontap: (){
                    Get.toNamed("/pencarian");
                  },
                    Gambar: "assets/images/destinasi/semarang.jpg",
                    Text: "Semarang",
                  ),
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: GenText("Artikel Terbaru", fontSize: 15, fontweight: FontWeight.bold, color: Colors.black,),
              ),
              SizedBox(height: 15,),
              Container(margin: EdgeInsets.symmetric(horizontal: 16), 
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        // Get.toNamed("/detail");
                      },
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/images/artikel/1.png", width: 0.3.sw, height: 0.3.sw, fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GenText("9 Tempat Ibadah Terindah di Indonesia Ini Buatmu Terkagum", fontweight: FontWeight.bold,),
                                SizedBox(height: 10,),
                                GenText("Indonesia terkenal dengan keberagaman. Baik keberagaman ras, suku, bahasa, hingga agama. Saat ini ada enam agama yang secara resmi diakui oleh negara. Keenam agama tersebut memiliki....", fontSize: 11,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    InkWell(
                        onTap: (){
                          // Get.toNamed("/detail");
                        },
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/images/artikel/2.png", width: 0.3.sw, height: 0.3.sw, fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GenText("10 Kota dengan Suhu Terdingin di Indonesia, Pakai Jaket Saja Tak Cukup", fontweight: FontWeight.bold,),
                                SizedBox(height: 10,),
                                GenText("Indonesia terkenal dengan keberagaman. Baik keberagaman ras, suku, bahasa, hingga agama. Saat ini ada enam agama yang secara resmi diakui oleh negara. Keenam agama tersebut memiliki....", fontSize: 11,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: (){
                        // Get.toNamed("/detail");
                      },
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/images/artikel/3.jpg", width: 0.3.sw, height: 0.3.sw, fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GenText("9 Pantai Terbaik", fontweight: FontWeight.bold,),
                                SizedBox(height: 10,),
                                GenText("Indonesia terkenal dengan pantainya yang sangat memanjakan mata dan ....", fontSize: 11,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
