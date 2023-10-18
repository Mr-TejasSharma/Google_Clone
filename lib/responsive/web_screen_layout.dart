import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Gmail',
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w400),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Images',
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w400),
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/more-apps.svg',color:primaryColor,)),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                 style: TextStyle(
                    color: Colors.white
                    )),
            )
          ],
        ),
        body: Center(child: Text('Hello from web.')));
  }
}
