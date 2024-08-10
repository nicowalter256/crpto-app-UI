import 'package:crypto_app/constants/constants.dart';
import 'package:crypto_app/data.dart';
import 'package:crypto_app/widgets/card_widgets.dart';
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
                'Total balances',
                style: TextStyle(color: Constants.whiteBg, fontSize: 20.0),
              ),
              const Text(
                '\$ 47,356.36',
                style: TextStyle(color: Constants.whiteBg, fontSize: 35.0),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 320,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cryptoData.length,
                    itemBuilder: (context, index) {
                      var data = cryptoData[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CardWidget(
                          firstColor: Constants.secondary,
                          secondColor: Constants.blackBg,
                          thirdColor: Constants.tertially,
                          value: data.value,
                          price: "\$${data.price}",
                          description: data.name,
                          name: data.description,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
