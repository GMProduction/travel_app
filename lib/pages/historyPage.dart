import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_apps/component/button/menubutton.dart';
import 'package:travel_apps/component/colors/genColors.dart';
import 'package:travel_apps/component/text/genText.dart';
import 'package:card_swiper/card_swiper.dart';

import '../component/textField/textField.dart';
import '../dataTravel.dart';
import 'package:get/get.dart';

class HistoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: GenText("Riwayat Pesananmu", fontSize: 15, fontweight: FontWeight.bold, color: Colors.black,),
                  ),
                  SizedBox(height: 15,),
                  Column(children: DataTravel.data.map<Widget>((e) {
                    return InkWell(
                      onTap: (){

                      },
                      child: Container(margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network(e["url_gambar"], width: 0.3.sw, height: 0.3.sw, fit: BoxFit.cover,)),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              GenText(e["namapaket"], fontweight: FontWeight.bold,),
                                              GenText(e["lokasi"], fontSize: 10,),
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          GenText(e["deskripsi"], fontSize: 11,),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          GenText(e["durasi"], fontSize: 10, ),
                                          GenText(e["tanggalpergi"], fontSize: 12, fontweight: FontWeight.bold, color: GenColors.primaryColor,),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(),

                          ],
                        ),
                      ),
                    );
                  }).toList(),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
