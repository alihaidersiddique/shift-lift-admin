import "package:flutter/material.dart";
import '../../../commons/app_sidebar_widget.dart';

class OnGoingRidesScreen extends StatelessWidget {
  const OnGoingRidesScreen({super.key});
  void showImageDialog(BuildContext context, String pic) => showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          backgroundColor: Colors.white,
          contentPadding: const EdgeInsets.all(25.0),
          insetPadding: const EdgeInsets.symmetric(horizontal: 500),
          children: [
            Image.asset(
              pic,
              fit: BoxFit.cover,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const AppSiebarWidget(),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "On Going Rides",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Count = 0",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    //
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 218, 213, 213),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      // container bar1
                      child: Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 15.0),
                            GestureDetector(
                              onTap: () {
                                showImageDialog(
                                    context, 'assets/images/loadingcar.jpg');
                              },
                              child: Image.asset(
                                'assets/images/loadingcar.jpg',
                                height: 45,
                                width: 50,
                              ),
                            ),
                            const SizedBox(width: 40.0),

                            // destinations box
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.gps_fixed,
                                        size: 15,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        "Pick up location",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.pin_drop,
                                        size: 15,
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        "Drop off location",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //

                            const Spacer(),

                            const Text(
                              "Estimation time: 3min",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            GestureDetector(
                              onTap: () {
                                showImageDialog(
                                    context, 'assets/images/002.png');
                              },
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/002.png',
                                ),
                              ),
                            ),
                            const SizedBox(width: 15.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
