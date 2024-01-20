import 'package:educationnal_app/screens/home_screen.dart';
import 'package:flutter/material.dart';



class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
          },
        ),
        title: Text('Choose Category'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(8, (index) {
          // Replace with your category data
          return CategoryCard(
            icon: Icons.category, // replace with category-specific icon
            title: 'Category $index',
            questionCount: '$index Questions',
          );
        }),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle next action
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String questionCount;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.questionCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Handle category tap
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 48.0),
            Text(title),
            Text(questionCount),
          ],
        ),
      ),
    );
  }
}
