import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_cloud_test/call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 42, 73),
        title: const Text(
          'LIVE CONSULTATION DEMO',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 42, 73),
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: const Center(
                    child: Text(
                  'Click the Below Button to join Live Consulation!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: GestureDetector(
              onTap: () {
                Get.to(
                  const CallPage(callID: '123456789'),
                );
              },
              child: Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icon.png')),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
