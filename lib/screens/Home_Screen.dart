import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:hal_aur_ham/screens/Crop_Scan.dart';
import 'package:hal_aur_ham/widgets/Main_Drawer.dart';
import '../screens/profile_screen.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


//Navigation to CropScan screen
Future navigateToCropScanPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CropScan()));
}

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FFF9),
      appBar: AppBar(
        title: const Text(
          'Hal Aur Ham',
          textScaleFactor: 1.30,
        ),
        //User Profile
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(Profile.routeName),
          )
        ],
      ),
      //Drawer
      drawer: MainDrawer(),
      //Body
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 26.0),
              //First Row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        child: Icon(
                          CupertinoIcons.wind,
                          size: 50,
                        ),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        "95km/h",
                        textScaleFactor: 1,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        child: Icon(
                          CupertinoIcons.cloud_bolt_rain,
                          size: 50,
                        ),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        "98%",
                        textScaleFactor: 1.20,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        child: Icon(
                          CupertinoIcons.thermometer,
                          size: 50,
                        ),
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        "33°c",
                        textScaleFactor: 1.20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Second Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFDAECD9),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextButton(
                    onPressed: () {},
                    child: const FittedBox(
                      child: Icon(
                        Icons.auto_graph_rounded,
                        size: 50,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 70.0,
                  height: 60.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFDAECD9),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextButton(
                    onPressed: () {},
                    child: const FittedBox(
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 50,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 70.0,
                  height: 60.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFDAECD9),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      navigateToCropScanPage(context);
                    },
                    child: const FittedBox(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 70.0,
                  height: 60.0,
                ),
              ],
            ),
            //Drone
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: FittedBox(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          'assets/images/Drone.png',
                        ),
                      ),
                      fit: BoxFit.fill,
                    ),
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: MediaQuery.of(context).size.height * 0.20,
                  ),
                  //Drone Status
                  SizedBox(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Battery Status"),
                              IconButton(
                                  icon: Icon(Icons.volume_up_rounded),
                                  onPressed: () {
                                    AssetsAudioPlayer audioplayer =
                                        AssetsAudioPlayer();
                                    audioplayer.open(Audio(
                                        'assets/audio/batterystatus.mp3'));
                                  })
                            ],
                          ),
                          const Icon(Icons.battery_full_outlined),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Connection Status"),
                              IconButton(
                                  icon: Icon(Icons.volume_up_rounded),
                                  onPressed: () {
                                    AssetsAudioPlayer audioplayer =
                                        AssetsAudioPlayer();
                                    audioplayer.open(Audio(
                                        'assets/audio/connectionstatus.mp3'));
                                  })
                            ],
                          ),
                          const Icon(Icons.wifi),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Emergency Alert"),
                              IconButton(
                                  icon: Icon(Icons.volume_up_rounded),
                                  onPressed: () {
                                    AssetsAudioPlayer audioplayer =
                                        AssetsAudioPlayer();
                                    audioplayer.open(Audio(
                                        'assets/audio/emergencyalert.mp3'));
                                  })
                            ],
                          ),
                          const Icon(Icons.add_alert_outlined)
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.50,
                  ),
                ],
              ),
            ),
            //Latest News
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFDAECD9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Text(
                  "Latest News",
                  textAlign: TextAlign.center,
                  textScaleFactor: 2,
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.33,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
