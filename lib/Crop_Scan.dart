import 'package:flutter/material.dart';

class CropScan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FFF9),
      appBar: AppBar(
        title: const Text(
          'Hal Aur Ham',
          textScaleFactor: 1.30,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.black54),
                height: MediaQuery.of(context).size.height * 0.32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFBAD7C7),
                    borderRadius: BorderRadius.circular(20)),
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 70,
                    ),
                    Text("Take Photo"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("OR"),
            TextButton(
              onPressed: () {},
              child: Text("Select Image From Gallery"),
            )
          ],
        ),
      ),
    );
  }
}
