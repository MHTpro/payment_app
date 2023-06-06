import 'package:flutter/material.dart';
import 'package:payment_app/const_var.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.share_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    r"Send $1,200",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 45.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white30,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text(
                        "Fullname, tag, phonenumber, email ",
                        style: TextStyle(
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 100.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        color: Colors.transparent,
                        border: Border.all(
                          color: ConstColor.yellow,
                          width: 1.0,
                        ),
                      ),
                      child: const Text(
                        "All contacts",
                        style: TextStyle(
                          color: ConstColor.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    const Text(
                      "Favorites",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                      "New contact",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "A",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                contacts(
                  name: "Adam Johnson",
                  number: "70 2300 4123 5541 15439 35000 0001",
                  icon: const Text(
                    "VISA",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                contacts(
                  name: "Ashely Noriss",
                  number: "10 2300 4123 5541 15439 12347 0001",
                  icon: const Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "B",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                contacts(
                  name: "Ben Taylor",
                  number: "23 1765 4123 5541 15439 35000 0001",
                  icon: const Text(
                    "VISA",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                contacts(
                  name: "Brooke Martinez",
                  number: "90 1765 4123 5541 15439 99999 0001",
                  icon: const Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                contacts(
                  name: "Bianca Marlon",
                  number: "23 1765 4123 5541 15439 35000 0001",
                  icon: const Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                contacts(
                  name: "Bruce Etinson",
                  number: "23 1765 4123 5541 15439 35000 0001",
                  icon: const Text(
                    "VISA",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile contacts({
    required String name,
    required String number,
    required Widget icon,
  }) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: <Widget>[
          icon,
          const SizedBox(
            width: 6.0,
          ),
          Text(
            number,
            style: const TextStyle(
              color: Colors.white30,
              fontWeight: FontWeight.bold,
              fontSize: 11.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.favorite_border,
        color: Colors.white30,
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.person,
          color: Colors.black,
        ),
      ),
    );
  }
}
