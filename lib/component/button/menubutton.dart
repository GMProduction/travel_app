import 'package:flutter/material.dart';

import '../text/genText.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuButton extends StatelessWidget {


  final String Gambar;
  final String Text;
  final Function() ontap;

  const MenuButton(
      {Key? key,
        this.Gambar = "assets/images/destinasi/bandung.jpg",
        this.Text = "",
        required this.ontap

      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        child: Column(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(Gambar, height: 0.2.sw, width: 0.2.sw, fit: BoxFit.cover)),
            SizedBox(height: 5,),
            GenText(Text)
          ],
        ),
      ),
    );
  }
}
