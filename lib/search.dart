// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/google-logo.png',
            height: size.height * 0.12,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width*0.4,
          child: TextFormField(
              decoration: InputDecoration(
              border: const OutlineInputBorder(
              borderSide: BorderSide(
              color: searchBorder,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            prefixIcon: SvgPicture.asset(
              'assets/images/search-icon.svg',
              color: searchBorder,
              width: 1,
            ),
            suffixIcon: SvgPicture.asset('assets/images/mic-icon.svg',
            width: 1,)
          )),
        ),
      ],
    );
  }
}
