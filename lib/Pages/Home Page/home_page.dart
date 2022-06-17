import 'package:flutter/material.dart';
import '../../Categories/categories_list.dart';
import '../Details Screen/card_details.dart';
import '../My Cart/cart_screen.dart';
import '../Profile Page/profile_page.dart';

const Color backGround = Color(0xFF1F2944);
const Color textColor = Color(0xFFFFFFFF);
const Color secColor = Color(0xFFF58B95);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      appBar: AppBar(
        backgroundColor: backGround,
        centerTitle: true,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'images/Profile/MainLogo2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text(
          'JuiceUp',
          style: TextStyle(
              color: textColor, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),

      ),
      bottomSheet: Container(
        height: 100.0,
        color: backGround,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.widgets_outlined,
                  color: secColor,
                  size: 25,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, CustomPageRoute(child: const MyCart()));
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: textColor,
                  size: 25,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: secColor, shape: BoxShape.circle),
                child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: textColor,
                        size: 25,
                      )),
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.signal_cellular_alt,
                  color: textColor,
                  size: 25,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, CustomPageRoute(child: const Profile()));
                },
                icon: const Icon(
                  Icons.person,
                  color: textColor,
                  size: 25,
                )),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, top: 15),
                  child: SizedBox(
                    height: 100,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      itemBuilder: (context, index) => BuildStoryItem(
                        category: category[index],
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10.0,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'Most Popular',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 2.2,
                          child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => BuildPopularItem(
                                    popular: popular[index],
                                    press: () {
                                      Navigator.push(
                                          context,
                                          CustomPageRoute(
                                            child: CardDetails(
                                              details: popular[index],
                                            ),
                                          ));
                                    },
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                              itemCount: popular.length),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'New Drinks',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3.5,
                          child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => BuildNewItem(
                                    drinks: drinks[index],
                                    press: () {
                                      Navigator.push(
                                          context,
                                          CustomPageRoute(
                                            child: CardDetails(
                                              details: drinks[index],
                                            ),
                                          ));
                                    },
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                              itemCount: drinks.length),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'Best Seller',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3.5,
                          child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => BuildSellerItem(
                                    seller: seller[index],
                                    press: () {
                                      Navigator.push(
                                          context,
                                          CustomPageRoute(
                                            child: CardDetails(
                                              details: seller[index],
                                            ),
                                          ));
                                    },
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                              itemCount: seller.length),
                        ),
                      ),
                      Container(
                        height: 120.0,
                        color: backGround,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({
    required this.child,
    this.direction = AxisDirection.right,
  }) : super(
            transitionDuration: const Duration(milliseconds: 500),
            reverseTransitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}

class BuildStoryItem extends StatelessWidget {
  const BuildStoryItem({Key? key, required this.category}) : super(key: key);
  final Categories category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: category.color,
          radius: 35.0,
          child: CircleAvatar(
            backgroundColor: backGround,
            radius: 33.0,
            child: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                child: SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: Image.asset(category.image),
                )),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          category.name,
          style: const TextStyle(
            color: textColor,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}

class BuildPopularItem extends StatelessWidget {
  const BuildPopularItem({Key? key, required this.popular, required this.press})
      : super(key: key);
  final Popular popular;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.2,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                popular.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    popular.name,
                    style: const TextStyle(
                        color: backGround,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${popular.price}',
                    style: const TextStyle(
                        color: backGround,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: backGround,
                      size: 25,
                    )),
              ))
        ],
      ),
    );
  }
}

class BuildNewItem extends StatelessWidget {
  const BuildNewItem({Key? key, required this.drinks, required this.press})
      : super(key: key);
  final Drinks drinks;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 2,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            drinks.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class BuildSellerItem extends StatelessWidget {
  const BuildSellerItem({Key? key, required this.seller, required this.press})
      : super(key: key);
  final Seller seller;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 2,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            seller.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
