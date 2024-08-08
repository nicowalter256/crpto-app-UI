import 'package:crypto_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color firstColor, secondColor, thirdColor;
  final String value, description, price, name;

  const CardWidget({
    super.key,
    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,
    required this.name,
    required this.value,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [firstColor, secondColor, thirdColor],
          ),
        ),
        child: Stack(
          children: [
            const SizedBox(
              height: 300,
              width: 200,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Text(
                    name,
                    style: const TextStyle(
                        color: Constants.whiteBg,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    description,
                    style: const TextStyle(color: Constants.whiteBg),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Container(
                    height: 35,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Constants.whiteBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        value,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              left: 20,
              bottom: 40,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Constants.secondary, shape: BoxShape.circle),
                    child: const Center(
                      child: Icon(
                        Icons.currency_bitcoin,
                        color: Constants.whiteBg,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    // '\$15,325.00',
                    price,
                    style: const TextStyle(
                      color: Constants.whiteBg,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
