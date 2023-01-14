import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_apps/component/button/menubutton.dart';
import 'package:travel_apps/component/button/roundedButton.dart';
import 'package:travel_apps/component/colors/genColors.dart';
import 'package:travel_apps/component/etc/JustHelper.dart';
import 'package:travel_apps/component/text/genText.dart';
import 'package:card_swiper/card_swiper.dart';

import '../component/etc/commonPadding.dart';
import '../component/etc/genDimen.dart';
import '../component/etc/genRow.dart';
import '../component/textField/textField.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {

  final args = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container( width: double.infinity,
                      child: Image.network(args["url_gambar"], width: double.infinity, fit: BoxFit.fitWidth,),
                    ),
                    SizedBox(height: GenDimen.spaceDetail,),
                    CommonPadding(child: GenText(args["namapaket"], fontSize: 14, fontweight: FontWeight.bold)),
                    SizedBox(height: 3,),
                    CommonPadding(child: GenText(formatRupiahUseprefik(args["harga"]), fontweight: FontWeight.bold, fontSize: 18, color: GenColors.primaryColor)),
                    SizedBox(height: GenDimen.spaceDetail,),
                    CommonPadding(child: GenText(args["deskripsi"], color: Colors.black45,)),
                    SizedBox(height: GenDimen.spaceDetail,),
                    RowDetails(iconleft: Icons.history, titleText: "Durasi",text: args["durasi"]),
                    RowDetails(iconleft: Icons.pin_drop_outlined,titleText: "Lokasi" ,text: args["lokasi"]),
                    RowDetails(iconleft: Icons.calendar_month, titleText: "Daftar Tour", text: args["daftartour"]),
                    SizedBox(height: GenDimen.bottomButton,),
                  ],
                ),
              ),
            ),
            CommonPadding(child: RoundedButton(text: "Pesan Sekarang", textColor: Colors.white, ontap: (){
              Get.toNamed("/history");
            }, width: Size(double.infinity, 50,),  ))
          ],
        ),
      ),
    );
  }
}
