import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../Home Page/home_page.dart';

class CardDetails extends StatefulWidget {
  final details;

  const CardDetails({
    Key? key,
    required this.details,
  }) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGround,
      bottomSheet: Container(
        color: backGround,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: widget.details.color,
              ),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: backGround),
                ),
              )),
        ),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: size.height / 2,
            child: Stack(
              children: [
                Container(
                  height: size.height / 2.1,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: textColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.details.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: backGround,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: textColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: backGround,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: LikeButton(
                        size: 25,
                        animationDuration: const Duration(milliseconds: 1000),
                        circleColor: CircleColor(
                          start: widget.details.color,
                          end: widget.details.color,
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: widget.details.color,
                          dotSecondaryColor: widget.details.color,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.details.name,
                  style: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "\$${widget.details.price}",
                      style: const TextStyle(
                        fontSize: 25.0,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "   x $counter",
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: widget.details.color,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                counter--;
                              });
                            },
                            child: Container(
                              height: 30,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
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
                              setState(() {
                                counter++;
                              });
                            },
                            child: Container(
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                    Text(
                      " - Size: 1Liter",
                      style: TextStyle(fontSize: 18.0, color: textColor),
                    ),
                    Text(
                      " - Quantity: 1",
                      style: TextStyle(fontSize: 18.0, color: textColor),
                    ),
                    Text(
                      " - High Quality Drink",
                      style: TextStyle(fontSize: 18.0, color: textColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
