import 'package:flutter/material.dart';
import '../../Categories/categories_list.dart';
import '../Home Page/home_page.dart';

class BuildCartItem extends StatefulWidget {
  const BuildCartItem(
      {Key? key,
      required this.popular,
      required this.quantity,
      required this.drinks})
      : super(key: key);
  final Drinks drinks;
  final Popular popular;
  final int quantity;

  @override
  State<BuildCartItem> createState() => _BuildCartItemState();
}

class _BuildCartItemState extends State<BuildCartItem> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height / 4.4,
          width: size.width / 2.5,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.drinks.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                widget.drinks.name,
                style: const TextStyle(
                    color: textColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                '\$ ${widget.drinks.price}',
                style: const TextStyle(
                    color: textColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState((){
                        counter--;
                      });
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: textColor)),
                      child: const Center(
                          child: Icon(
                        Icons.remove,
                        color: textColor,
                        size: 25,
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '$counter',
                      // '$widget.quantity',
                      style: const TextStyle(
                          color: textColor,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState((){
                        counter++;
                      });
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: textColor)),
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        color: textColor,
                        size: 25,
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}