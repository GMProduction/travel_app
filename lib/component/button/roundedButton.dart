import 'package:flutter/material.dart';

import '../colors/genColors.dart';
import '../text/genText.dart';


class RoundedButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final Size width;
  final String text;
  final Function() ontap;

  const RoundedButton(
      {Key? key,
      this.bgColor = GenColors.primaryColor,
      this.textColor = Colors.black,
        this.width = const Size(88, 36),
        this.text = "",
        required this.ontap

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          minimumSize: width,
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        onPressed: ontap,
        child: GenText(
          text,
          color: textColor,
          fontSize: 15,
          fontweight: FontWeight.bold,
        ));
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final IconData? iconData;
  final double? size;

  const CircleButton({Key? key, this.onTap, this.iconData, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 30.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: GenColors.primaryColor,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.white,
          size: 16,
        ),
      ),
    );
  }
}
