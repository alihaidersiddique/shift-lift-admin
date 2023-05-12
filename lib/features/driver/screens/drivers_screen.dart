import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../commons/app_sidebar_widget.dart';
import 'new_driver_request_details_screen.dart';

class DriversScreen extends ConsumerStatefulWidget {
  DriversScreen({super.key});

  @override
  ConsumerState<DriversScreen> createState() => _DriversScreenState();
}

class _DriversScreenState extends ConsumerState<DriversScreen>
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

  void showDriverDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          backgroundColor: Colors.white,
          contentPadding: const EdgeInsets.all(25.0),
          insetPadding: const EdgeInsets.symmetric(horizontal: 500),
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffE8E8E8),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppIconButton(
                        icon: Icons.edit,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10.0),
                      AppIconButton(
                        icon: Icons.delete,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10.0),
                      AppIconButton(
                        icon: Icons.volume_mute,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const AppTextField(name: "Ali Haider", label: "Name"),
                  const SizedBox(height: 20.0),
                  const AppTextField(
                    name: "03363359047",
                    label: "Phone",
                  ),
                  const SizedBox(height: 20.0),
                  const AppTextField(
                    name: "25 Jan 2022",
                    label: "Joining Date",
                  ),
                  const SizedBox(height: 20.0),
                  const AppTextField(name: "Activity", label: "Activity"),
                ],
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // sidebar
          const AppSiebarWidget(),
          //content area
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'Registered Drivers'),
                      Tab(text: 'New Requests'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      // registered drivers
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

                      // new requests
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
}

class AppPageButton extends StatelessWidget {
  const AppPageButton({
    super.key,
    required this.page,
    required this.onPressed,
  });

  final String page;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      child: Text(page),
    );
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.name,
    required this.label,
  });

  final String name;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(5.0),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
          hintText: name,
          hintStyle: const TextStyle(color: Colors.white),
          contentPadding: const EdgeInsets.only(left: 20.0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.onPress,
    this.tileColor,
  });

  final VoidCallback onPress;
  final Color? tileColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: tileColor ?? Colors.grey[300],
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.all(10.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1170154554/photo/young-handsome-business-man-dressed-in-casual-denim-shirt-with-smartwatch-on-wrist-isolated.jpg?b=1&s=170667a&w=0&k=20&c=052s1HznJzfIRRSCOFSRdjSTdA_4gb48mUbOfY-gngo=",
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                "Ali Haider",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
