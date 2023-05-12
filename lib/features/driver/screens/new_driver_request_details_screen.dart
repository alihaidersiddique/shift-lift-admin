import "package:flutter/material.dart";
import '../../../commons/app_sidebar_widget.dart';

class NewDiverRequestDetailsScreen extends StatelessWidget {
  const NewDiverRequestDetailsScreen({super.key});

  void showPictureDialog(BuildContext context, String pic) => showDialog(
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

  void showConfirmationDialog(BuildContext context, String text) => showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          backgroundColor: Colors.white,
          contentPadding: const EdgeInsets.all(25.0),
          insetPadding: const EdgeInsets.symmetric(horizontal: 500),
          children: [
            Text(text),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("No"),
                ),
                const SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Yes"),
                ),
              ],
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //sidebar
          const AppSiebarWidget(),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    Center(
                      child: Text(
                        "Driver details",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 10.0),
                    //selected vehicle
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Selected Vehicle",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () {
                        showPictureDialog(
                            context, 'assets/images/loadingcar.jpg');
                      },
                      child: Image.asset(
                        'assets/images/loadingcar.jpg',
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 10.0),
                    //basic info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Basic Info",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showPictureDialog(context, 'assets/images/001.png');
                          },
                          child: Image.asset(
                            'assets/images/001.png',
                            height: 65.0,
                            width: 75.0,
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            NameWidget(
                              text: 'First Name:',
                              label: 'Mamoon',
                            ),
                            SizedBox(height: 20.0),
                            NameWidget(
                              text: 'Last Name:',
                              label: 'Ahmed',
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 10.0),
                    //Id confirmation
                    Row(
                      children: const [
                        Text(
                          "ID Confirmation",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    GestureDetector(
                      onTap: () {
                        showPictureDialog(context, 'assets/images/001.png');
                      },
                      child: Image.asset(
                        'assets/images/001.png',
                        height: 200.0,
                        width: 200.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 10.0),
                    //Driver licence
                    Row(
                      children: const [
                        Text(
                          "Driver licence",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Text("Front-Side"),
                            const SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                showPictureDialog(
                                    context, 'assets/images/004.jpg');
                              },
                              child: Image.asset(
                                'assets/images/004.jpg',
                                height: 130.0,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 130,
                          child: const VerticalDivider(color: Colors.black),
                        ),
                        Column(
                          children: [
                            const Text("Back-Side"),
                            const SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                showPictureDialog(
                                    context, 'assets/images/004.jpg');
                              },
                              child: Image.asset(
                                'assets/images/004.jpg',
                                height: 130.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 10.0),
                    //Cnic
                    Row(
                      children: const [
                        Text(
                          "CNIC",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Text("Front-Side"),
                            const SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                showPictureDialog(
                                    context, 'assets/images/cnic-demo.jpg');
                              },
                              child: Image.asset(
                                'assets/images/cnic-demo.jpg',
                                height: 130.0,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 130,
                          child: const VerticalDivider(color: Colors.black),
                        ),
                        Column(
                          children: [
                            const Text("Back-Side"),
                            const SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                showPictureDialog(
                                    context, 'assets/images/cnic-demo.jpg');
                              },
                              child: Image.asset(
                                'assets/images/cnic-demo.jpg',
                                height: 130.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 10.0),
                    //Vehicle Registratio
                    Row(
                      children: const [
                        Text(
                          "Vehicle Registration",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Text("Photo of Vehicle"),
                            const SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                showPictureDialog(
                                    context, 'assets/images/loadingcar.jpg');
                              },
                              child: Image.asset(
                                'assets/images/loadingcar.jpg',
                                height: 130.0,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 130,
                          child: const VerticalDivider(color: Colors.black),
                        ),
                        Column(
                          children: [
                            const Text("Certificate of Vehicle Registration"),
                            const SizedBox(height: 15.0),
                            GestureDetector(
                              onTap: () {
                                showPictureDialog(
                                    context, 'assets/images/vrc.demo.jpg');
                              },
                              child: Image.asset(
                                'assets/images/vrc.demo.jpg',
                                height: 130.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Divider(
                      color: Colors.grey,
                      height: 30.0,
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showConfirmationDialog(context,
                                "Do you want to reject this registration?");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Reject"),
                        ),
                        const SizedBox(width: 30.0),
                        ElevatedButton(
                          onPressed: () {
                            showConfirmationDialog(
                              context,
                              "Are you sure to confirm this registration?",
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Accept"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.text,
    required this.label,
  });
  final String text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10.0),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
