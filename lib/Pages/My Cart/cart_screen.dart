import 'package:flutter/material.dart';
import '../../Categories/categories_list.dart';
import '../Home Page/home_page.dart';
import 'cart_product_card.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  Map productQuantity(popular) {
    var quantity = Map();
    popular.forEach((popular) {
      if (!quantity.containsKey(popular)) {
        quantity[popular] = 1;
      } else {
        quantity[popular] += 1;
      }
    });
    return quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B455E),
      bottomSheet: Container(
        height: 80.0,
        color: backGround,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: secColor,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '\$ ${28.55}',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'PAY',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B455E),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: textColor,
              size: 25,
            )),
        title: const Text(
          'MY CART',
          style: TextStyle(
              color: textColor, fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: backGround,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.35,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, int index) => BuildCartItem(
                          drinks: drinks[index],
                              popular: productQuantity(popular)
                                  .keys
                                  .elementAt(index),
                              quantity: productQuantity(popular)
                                  .values
                                  .elementAt(index),
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20.0,
                            ),
                        // itemCount: popular.length
                        itemCount: productQuantity(drinks).keys.length),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
