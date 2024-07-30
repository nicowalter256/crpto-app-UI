import 'package:crypto_app/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Constants.greenBg),
                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.dashboard),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(Constants.profileImage),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Total balance',
                style: TextStyle(color: Constants.whiteBg, fontSize: 20.0),
              ),
              const Text(
                '\$ 47,356.36',
                style: TextStyle(color: Constants.whiteBg, fontSize: 35.0),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 30),
                            child: Text(
                              "BTC",
                              style: TextStyle(
                                  color: Constants.whiteBg,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'Bitcoin',
                              style: TextStyle(color: Constants.whiteBg),
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
                                  color: Constants.secondary,
                                  shape: BoxShape.circle),
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
