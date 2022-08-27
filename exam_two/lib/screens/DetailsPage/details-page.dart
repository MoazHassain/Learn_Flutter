import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../theme/theme.dart';
import '../../widgets/custom-button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/images/headphone1.png",
                          height: MediaQuery.of(context).size.height * 0.50,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_checkout_rounded,
                              color: clrPrimary,
                              size: 18,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Shopping",
                              style: myfont(14, FontWeight.w500, clrPrimary),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "AKG N700NCM2 Wireless Headphones",
                                    style: myfont(
                                      20,
                                      FontWeight.w700,
                                      clrBlack000,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Hi-Fi Shop and Service Rustaveli Ave 57, This shop offers both Products and Services",
                                    style: myfont(
                                      14,
                                      FontWeight.w400,
                                      clrBlack100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            CircleAvatar(
                              backgroundColor: clrPrimary.withOpacity(0.1),
                              child: Icon(
                                Icons.link,
                                color: clrPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: clrPrimary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: clrPrimary,
                          ),
                        ),
                        horizontalTitleGap: 20,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rustaveli Ave 57,",
                              style: myfont(
                                14,
                                FontWeight.w400,
                                clrBlack100,
                              ),
                            ),
                            Text(
                              "17-0001 batumi",
                              style: myfont(
                                14,
                                FontWeight.w400,
                                clrBlack100,
                              ),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                          color: clrWhite100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        width: double.infinity,
                        height: 0.5,
                        color: clrWhite100,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "\$ 199.00",
                              style: myfont(
                                20,
                                FontWeight.w700,
                                clrBlack000,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Tax rate 2% - \$ 4.00",
                              style: myfont(
                                14,
                                FontWeight.w500,
                                clrWhite100,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        child: CustomButtom(
                          OnPressed: () {},
                          ButtonWidth: double.infinity,
                          ButtonElevation: 0,
                          BgColor: clrPrimary,
                          BorderColor: Colors.transparent,
                          ButtonInlinePadd: 0,
                          borderRadius: 12,
                          TextAlignment: Alignment.center,
                          ButtonText: "ADD TO CART",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 26,
              left: 16,
              child: CustomButtom(
                OnPressed: () {},
                ButtonWidth: 38,
                ButtonElevation: 0,
                BgColor: clrWhite000,
                BorderColor: Colors.transparent,
                ButtonInlinePadd: 0,
                borderRadius: 12,
                ButtonText: "",
                ButtonIcon: Icons.arrow_back_ios_new_rounded,
                ButtonIconSize: 18,
                IconAlignment: Alignment.center,
                IconColor: clrBlack100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
