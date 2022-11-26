import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          const Text(
            "Rp.250.000",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.cart_fill_badge_plus),
            label: const Text(
              "Checkout",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                )),
          ),
        ],
      ),
    ));
  }
}
