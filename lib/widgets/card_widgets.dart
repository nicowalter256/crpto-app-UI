import 'package:crypto_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Constants.secondary,
              Constants.blackBg,
              Constants.tertially
            ],
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
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 25),
                  child: Text(
                    "BTC",
                    style: TextStyle(
                        color: Constants.whiteBg,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Bitcoin',
                    style: TextStyle(color: Constants.whiteBg),
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
                    child: const Center(
                      child: Text(
                        '+5.36%',
                        style: TextStyle(
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
                  const Text(
                    '\$15,325.00',
                    style: TextStyle(
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
