import 'package:flutter/material.dart';

import 'home_screen.dart';


class Category extends StatefulWidget {
  const Category({super.key});
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // ici, vous pouvez ajuster la hauteur de l'AppBar
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15), // ajuster le rayon pour contrôler la courbure
          ),
          child: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF674AEF),
            title: Text(
                'Category',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            // autres propriétés de l'AppBar comme backgroundColor, actions, etc.
          ),
        ),
      ),
      backgroundColor: Color(0xFF333333),
      body: Stack(
        children: [
          Text('catttttttttttt'),
          Align(
            alignment: Alignment.bottomCenter,
            child: GlassmorphicBottomBar(),
          ),
        ],
      ),
    );
  }
}
