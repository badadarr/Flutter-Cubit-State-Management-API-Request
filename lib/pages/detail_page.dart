import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_button.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu_rounded),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 315,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8)),
                        AppLargeText(
                          text: "\$ 250",
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(height: 10),
                        AppText(
                            text: "USA, California",
                            color: AppColors.textColor1),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.textColor2,
                            );
                          }),
                        ),
                        SizedBox(width: 10),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    AppText(
                      text: "Number of people in your group",
                      color: AppColors.mainTextColor,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: AppButton(
                            size: 50,
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            backgroundColor: selectedIndex == index
                                ? Colors.black
                                : AppColors.buttonBackground,
                            borderColor: selectedIndex == index
                                ? Colors.black
                                : AppColors.buttonBackground,
                            text: (index + 1).toString(),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 30),
                    AppLargeText(
                        text: "Description",
                        size: 25,
                        color: Colors.black.withOpacity(0.8)),
                    SizedBox(height: 5),
                    AppText(
                        text:
                            "You must go for a travel. Travelling helps get rid of pressure. Go to the mountains to the nature.",
                        color: AppColors.mainTextColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
