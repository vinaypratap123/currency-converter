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
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Currency Converter",
          )),
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "0",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
           const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextFormField(
                controller: null,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.monetization_on,color: Colors.black,),
                    hintText: "Enter the currency",
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                       borderSide: const BorderSide(
                        color: Colors.white
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Colors.white
                      )
                    ),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.97,
            child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.black,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Convert",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )),
          ),
        ],
      )),
    );
  }
}
