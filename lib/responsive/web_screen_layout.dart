// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/widgets/colors.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                icon: SvgPicture.asset(
                  'assets/images/more-apps.svg',
                  color: primaryColor,
                )),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0)
                  .copyWith(right: 10),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff1A73EB),
                child: Text('Sign in', style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
        
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        const Search(),
                        const SizedBox(
                          height: 20,
                          ),
                        SearchButtons()
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
