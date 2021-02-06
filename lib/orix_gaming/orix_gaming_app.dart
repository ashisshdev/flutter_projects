import 'package:flutter/material.dart';
import 'file:///C:/Users/kevin/Documents/Projects/flutter/flutter_projects/lib/orix_gaming/ui/orix_gaming_home_page.dart';
import 'file:///C:/Users/kevin/Documents/Projects/flutter/flutter_projects/lib/orix_gaming/ui/widgets/orix_navigation_bar.dart';

class OrixGamingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorLight: Colors.orange[700],
        primaryColorDark: Colors.deepOrange[700],
      ),
      home: _MainPage(),
    );
  }
}

class _MainPage extends StatefulWidget {
  const _MainPage({
    Key key,
  }) : super(key: key);

  @override
  __MainPageState createState() => __MainPageState();
}

class __MainPageState extends State<_MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: kThemeChangeDuration,
        child: [
          OrixGamingHomePage(),
          Scaffold(body: Center(child: Text('Games'))),
          Scaffold(body: Center(child: Text('Favorites'))),
          Scaffold(body: Center(child: Text('Profile'))),
        ][index],
      ),
      bottomNavigationBar: OrixNavigationBar(
        currentIndex: index,
        onTapItem: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          OrixNavigationBarItem(
            label: 'Home',
            iconData: Icons.home,
            unselectedIconData: Icons.home_outlined,
          ),
          OrixNavigationBarItem(
            label: 'Games',
            iconData: Icons.videogame_asset,
            unselectedIconData: Icons.videogame_asset_outlined,
          ),
          OrixNavigationBarItem(
            label: 'Favorite',
            iconData: Icons.favorite,
            unselectedIconData: Icons.favorite_border,
          ),
          OrixNavigationBarItem(
            label: 'Profile',
            iconData: Icons.person,
            unselectedIconData: Icons.person_outline,
          ),
        ],
      ),
    );
  }
}
