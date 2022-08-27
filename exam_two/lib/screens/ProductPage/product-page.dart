import 'package:exam_two/data/data.dart';
import 'package:exam_two/screens/ProductPage/accessories-list.dart';
import 'package:exam_two/screens/ProductPage/header.dart';
import 'package:exam_two/screens/ProductPage/product-list.dart';
import 'package:exam_two/theme/theme.dart';
import 'package:exam_two/widgets/custom-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 26,
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header part
                  Header(),

                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    "Hi-Fi Shop & Service",
                    style: myfont(
                      22,
                      FontWeight.w600,
                      clrBlack000,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Audio shop on Rustaveli Ave 57\nThis shop offers both Products and Services",
                    style: myfont(
                      15,
                      FontWeight.w500,
                      clrWhite100,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Products",
                            style: myfont(
                              18,
                              FontWeight.w700,
                              clrBlack000,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "40",
                            style: myfont(
                              14,
                              FontWeight.w500,
                              clrWhite100,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Show all",
                          style: myfont(
                            14,
                            FontWeight.w600,
                            clrPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ProductListPart(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Accessories",
                            style: myfont(
                              18,
                              FontWeight.w700,
                              clrBlack000,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "19",
                            style: myfont(
                              14,
                              FontWeight.w500,
                              clrWhite100,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Show all",
                          style: myfont(
                            14,
                            FontWeight.w600,
                            clrPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  AccessoriesListPart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
