import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Set the number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1E1E1E),
          leading: InkWell(
            onTap: () {
              // Action when the image is clicked
              print('Image clicked!');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets_img/hamburger.png',
                height: 24.0,
                width: 24.0,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Action when the search button is pressed
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Action when the search button is pressed
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Tech',
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              Tab(
                child: Text(
                  'Science',
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              Tab(
                child: Text(
                  'Education',
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              Tab(
                child: Text(
                  'Business',
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Widget for Tab 1
            Center(
              child: Text('Tab 1 Content'),
            ),
            // Widget for Tab 2
            Center(
              child: Text('Tab 2 Content'),
            ),
            Center(
              child: Text('Tab 2 Content'),
            ),
            Center(
              child: Text('Tab 2 Content'),
            ),
          ],
        ),
      ),
    );
  }
}
