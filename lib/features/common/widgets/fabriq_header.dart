import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqHeader extends StatelessWidget {
  const FabriqHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/sidebar.svg"),
                SizedBox(width: 44),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Bu yerdan qidiring...",
                    hintStyle: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontFamily: "Roboto",
                      fontSize: 12,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 24),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                    ),
                    constraints: BoxConstraints.tight(Size(256, 40)),
                    suffixIconConstraints: BoxConstraints.loose(
                      Size(double.infinity, double.infinity),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: SvgPicture.asset(
                        "assets/icons/search.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              spacing: 12,
              children: [
                Text(
                  "20:06",
                  style: TextStyle(color: AppColors.secondary, fontSize: 18),
                ),
                SvgPicture.asset("assets/icons/calendar.svg"),
                SvgPicture.asset("assets/icons/notifications_header.svg"),
                SvgPicture.asset("assets/icons/about.svg"),
                Text(
                  "SolihCoder",
                  style: TextStyle(color: AppColors.secondary, fontSize: 18),
                ),
                Image.asset(
                  "assets/images/profile.png",
                  width: 44,
                  height: 44,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
