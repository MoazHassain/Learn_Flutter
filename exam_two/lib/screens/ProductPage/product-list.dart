import 'package:exam_two/data/data.dart';
import 'package:exam_two/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductListPart extends StatelessWidget {
  const ProductListPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          var productList = ProductList[index];
          return Container(
            width: MediaQuery.of(context).size.width * 0.5 - 28,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "${productList.imgURL}",
                    fit: BoxFit.cover,
                    height: 130,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "${productList.name}",
                  style: myfont(
                    15,
                    FontWeight.w700,
                    clrBlack000,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "\$${productList.price}",
                  style: myfont(
                    14,
                    FontWeight.w700,
                    clrBlack100,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
