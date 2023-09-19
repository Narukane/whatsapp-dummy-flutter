import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double tabwidth = width / 4;
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              tabs: [
                const Tab(
                  icon: Icon(Icons.groups_3),
                ),
                Tab(
                  child: SizedBox(
                    width: tabwidth,
                    child: const Center(child: Text('Chat')),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: tabwidth,
                    child: const Center(child: Text('Status')),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: tabwidth,
                    child: const Center(child: Text('Call')),
                  ),
                ),
              ],
            ),
            title: const Text('Whatsapp Dummy'),
            centerTitle: false,
          ),
          body: const TabBarView(children: [
            Text('Community'),
            Text('Chat'),
            Text('Status'),
            Text('Call'),
          ]),
        ),
      ),
    );
  }
}
