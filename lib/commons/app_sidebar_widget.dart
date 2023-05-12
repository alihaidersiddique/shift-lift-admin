import 'package:flutter/material.dart';
import 'package:shift_lift_admin_app/features/driver/screens/drivers_screen.dart';
import 'package:shift_lift_admin_app/features/home/screens/dashboard_screen.dart';

class AppSiebarWidget extends StatelessWidget {
  const AppSiebarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 60.0),
          const Text(
            "Shift Lift",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Admin Panel",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 60.0),
          buildMenuButton("Dashboard", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboarScreen(),
              ),
            );
          }),
          buildMenuButton("Drivers", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DriversScreen(),
              ),
            );
          }),
          buildMenuButton("Passengers", () {}),
          buildMenuButton("Vehicles", () {}),
          // buildMenuButton(
          //   "On Going Rides",
          //   () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const OnGoingRidesScreen(),
          //       ),
          //     );
          //   },
          // )
        ],
      ),
    );
  }

  Padding buildMenuButton(String name, VoidCallback onPress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          alignment: Alignment.centerLeft,
          fixedSize: const Size(140, 35),
        ),
        onPressed: onPress,
        child: Text(
          name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
