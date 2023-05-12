import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../commons/app_sidebar_widget.dart';
import '../../driver/screens/drivers_screen.dart';
import '../../driver/screens/new_driver_request_details_screen.dart';

class DashboarScreen extends ConsumerStatefulWidget {
  const DashboarScreen({super.key});

  @override
  ConsumerState<DashboarScreen> createState() => _DashboarScreenState();
}

class _DashboarScreenState extends ConsumerState<DashboarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // sidebar
          const AppSiebarWidget(),

          // stats bar
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xffF9F7F2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // stats text
                  buildHeading("Statistics"),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        _buildStatCard(
                          'Total Rides',
                          '1234',
                          Colors.orange,
                          Icons.directions_car,
                        ),
                        const SizedBox(width: 20.0),
                        _buildStatCard(
                          'Active Drivers',
                          '432',
                          Colors.blue,
                          Icons.person,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        _buildStatCard(
                          'Total Revenue',
                          '\$123,456',
                          Colors.green,
                          Icons.attach_money,
                        ),
                        const SizedBox(width: 20.0),
                        _buildStatCard(
                          'Pending Payments',
                          '\$10,000',
                          Colors.red,
                          Icons.payment,
                        ),
                      ],
                    ),
                  ),

                  // // performance bar
                  // Container(
                  //   margin: const EdgeInsets.symmetric(horizontal: 45.0),
                  //   height: 25.0,
                  //   decoration: const BoxDecoration(
                  //     color: Color(0xffFFFFFF),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const [
                  //       Icon(Icons.graphic_eq_rounded),
                  //       SizedBox(
                  //         width: 15.0,
                  //       ),
                  //       Text(
                  //         "20% better performance",
                  //         style: TextStyle(
                  //           fontSize: 12.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // const SizedBox(height: 40.0),

                  // //
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       // trendings text
                  //       Column(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: const [
                  //           IconTextWidget(
                  //             icon: Icons.trending_up,
                  //             label: "Expenses",
                  //             text: "+25%",
                  //             iconColor: Colors.green,
                  //             textColor: Colors.green,
                  //           ),
                  //           SizedBox(height: 20.0),
                  //           PriceWidget(
                  //             label: "Total Price",
                  //             price: "\$7500",
                  //           ),
                  //           SizedBox(height: 40.0),
                  //           Text(
                  //             "Middle price",
                  //             style: TextStyle(
                  //               color: Colors.black,
                  //               fontSize: 18.0,
                  //             ),
                  //           ),
                  //           SizedBox(height: 20.0),
                  //           PriceWidget(
                  //             label: "Amount per mile",
                  //             price: "\$7500",
                  //           ),
                  //         ],
                  //       ),

                  //       //
                  //       Column(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: const [
                  //           IconTextWidget(
                  //             icon: Icons.trending_up,
                  //             label: "Income",
                  //             text: "+25%",
                  //             iconColor: Colors.red,
                  //             textColor: Colors.red,
                  //           ),
                  //           SizedBox(height: 20.0),
                  //           PriceWidget(
                  //             label: "Total Price",
                  //             price: "\$7500",
                  //           ),
                  //           SizedBox(height: 40.0),
                  //           Text(
                  //             "Park load",
                  //             style: TextStyle(
                  //               color: Colors.black,
                  //               fontSize: 18.0,
                  //             ),
                  //           ),
                  //           SizedBox(height: 20.0),
                  //           PriceWidget(
                  //             label: "Number of Cars",
                  //             price: "56 / 78",
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 30.0),
                  // // line
                  // const Divider(
                  //   color: Colors.grey,
                  //   height: 25.0,
                  // ),
                  // const SizedBox(height: 40.0),

                  // // Orders Graph Portion

                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 45.0),
                  //   child: Text(
                  //     "Receiving orders",
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 25.0,
                  //     ),
                  //   ),
                  // ),

                  // const SizedBox(height: 50.0),

                  // Expanded(
                  //   child: Container(
                  //     height: 400, // Set the height to 100 pixels
                  //     color: const Color(0xffF1EEE3),

                  //     //
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: const [
                  //           Text(
                  //             "Total income",
                  //             style: TextStyle(
                  //               color: Colors.black,
                  //               fontSize: 20.0,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //           SizedBox(width: 5.0),
                  //           Padding(
                  //             padding: EdgeInsets.symmetric(horizontal: 48.0),
                  //             child: Text(
                  //               "\$ 30,000",
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontSize: 20.0,
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // )
                  // // prices text
                ],
              ),
            ),
          ),

          // rides

          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'Completed Rides'),
                      Tab(text: 'On-Going Rides'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      // completed rides
                      ListView.separated(
                        padding: const EdgeInsets.all(20.0),
                        itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20.0,
                        ),
                        itemBuilder: (context, index) => AppListTile(
                          onPress: () {},
                        ),
                      ),

                      // on-going rides
                      ListView.separated(
                        padding: const EdgeInsets.all(20.0),
                        itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20.0,
                        ),
                        itemBuilder: (context, index) => AppListTile(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NewDiverRequestDetailsScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildHeading(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 45.0,
        vertical: 40.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
      String title, String value, Color color, IconData icon) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              color: color,
              size: 32.0,
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              value,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PicNameWidget extends StatelessWidget {
  const PicNameWidget({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.text,
    required this.number,
  });

  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        RichText(
          text: TextSpan(
            text: text,
            children: [
              TextSpan(
                text: " $number",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BuildCarInfoWidget extends StatelessWidget {
  const BuildCarInfoWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.Count,
  });

  final IconData icon;
  final String label;
  final String Count;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        const SizedBox(
          height: 2.0,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          Count,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.label,
    required this.price,
  });

  final String label;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          price,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.textColor,
  });

  final String text;
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            icon,
            color: iconColor,
          ),
          label: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        )
      ],
    );
  }
}
