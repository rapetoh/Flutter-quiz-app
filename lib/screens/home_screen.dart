import 'package:educationnal_app/screens/favorite.dart';
import 'package:educationnal_app/screens/profile.dart';
import 'package:educationnal_app/screens/testNewFront.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'category.dart';
import 'login.dart';
import 'package:shimmer/shimmer.dart';

//void changeStatusBarColor() {
// FlutterStatusbarcolor.setNavigationBarColor(Color(0xFF464646));
//}

List<Widget> createContainers(
    int count, List<AssetImage> catIcon2, List<String> catNames) {
  List<Widget> containers = [];

  for (int index = 0; index < count; index++) {
    var container = Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xFF464646),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xFF464646)),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.only(left: 9, bottom: 8, right: 8, top: 8),
          child: Row(
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.transparent,
                  ),
                  child: Image(
                    image: catIcon2[index],
                  )),
              SizedBox(width: 20),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        catNames[index],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '2 éléments',
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.normal,
                            color: Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  //IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: Colors.white,size: 14,))
                ],
              ),
            ],
          ),
        ),
      ),
    );

    containers.add(container);
  }

  return containers;
}

List<CarouselItem> itemList = [
  CarouselItem(
    image: AssetImage('images/un.png'),
    boxDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset.bottomCenter,
        end: FractionalOffset.topCenter,
        colors: [
          Color(0xFF674AEF).withOpacity(.7),
          Colors.black.withOpacity(.3),
        ],
        stops: const [0.0, 1.0],
      ),
    ),
    title: 'Discover today AnkiQuiz !',
    titleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
    onImageTap: (i) {},
  ),
  CarouselItem(
    image: AssetImage('images/deux.png'),
    boxDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset.bottomCenter,
        end: FractionalOffset.topCenter,
        colors: [
          Color(0xFF674AEF).withOpacity(.7),
          Colors.black.withOpacity(.3),
        ],
        stops: const [0.0, 1.0],
      ),
    ),
    title: 'Learn with us',
    titleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
    onImageTap: (i) {},
  ),
  CarouselItem(
    image: AssetImage('images/trois.png'),
    boxDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset.bottomCenter,
        end: FractionalOffset.topCenter,
        colors: [
          Color(0xFF674AEF).withOpacity(.7),
          Colors.black.withOpacity(.3),
        ],
        stops: const [0.0, 1.0],
      ),
    ),
    title: 'Le savais-tu ?',
    titleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
    onImageTap: (i) {},
  ),
  CarouselItem(
    image: AssetImage('images/quatre.png'),
    boxDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset.bottomCenter,
        end: FractionalOffset.topCenter,
        colors: [
          Color(0xFF674AEF).withOpacity(.7),
          Colors.black.withOpacity(.3),
        ],
        stops: const [0.0, 1.0],
      ),
    ),
    title: 'Parfait tes connaissances avec AnkiQuiz! ',
    titleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
    onImageTap: (i) {},
  ),
];


List<Color> optionsColor = [
  Colors.blue,
  Colors.blue,
  Colors.blue,
  Colors.deepPurpleAccent,
  Colors.blue,
  Colors.blue
];

List options = [
  'Categories',
  'Favorites',
  'Evolution',
  'Help',
  'Notebook',
  'Alert',
];

List<String> catNames = [
  'Web Development',
  'Mobile Development',
  'Version Control',
  'OOP',
  'Office tools',
  'Programming concepts',
];

List<Icon> optionsIcon = [
  Icon(Icons.category, color: Colors.white, size: 30, weight: 20),
  Icon(Icons.favorite, color: Colors.white, size: 30),
  Icon(Icons.align_vertical_bottom, color: Colors.white, size: 30),
  Icon(Icons.help, color: Colors.white, size: 30, weight: 20),
  Icon(Icons.book, color: Colors.white, size: 30),
  Icon(Icons.crisis_alert_rounded, color: Colors.red, size: 30),
];

List<FaIcon> catIcon = [
  FaIcon(FontAwesomeIcons.code, color: Color(0xFF674AEF)),
  FaIcon(FontAwesomeIcons.android, color: Color(0xFF674AEF)),
  FaIcon(
    FontAwesomeIcons.codeBranch,
    color: Color(0xFF674AEF),
  ),
  FaIcon(
    FontAwesomeIcons.diagramProject,
    color: Color(0xFF674AEF),
  ),
  FaIcon(FontAwesomeIcons.fileLines, color: Color(0xFF674AEF)),
  FaIcon(
    FontAwesomeIcons.terminal,
    color: Color(0xFF674AEF),
  )
];

List<AssetImage> catIcon2 = [
  AssetImage('images/developpement-web.png'),
  AssetImage('images/developpement-dapplications.png'),
  AssetImage('images/fusionner.png'),
  AssetImage('images/lordinateur.png'),
  AssetImage('images/soutien-technique.png'),
  AssetImage('images/developpement-web.png'),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FocusNode focusNode;
  late double searchbar_width;
  Color searchbar_color = Colors.white12;

  PageController _pageController = PageController();
  int _currentPage = 0;

  List<Color> bottomAppBarButtons = [
  Color(0xFF674AEF),
    Colors.white,
    Colors.white,
    Colors.white,
  ];



  @override
  void initState() {
    super.initState();


    _pageController.addListener(() {
      int currentPage = _pageController.page!.round();
      if (_currentPage != currentPage) {
        setState(() {
          _currentPage = currentPage;
          switch(_currentPage){
            case 0:
              bottomAppBarButtons[0] = Color(0xFF674AEF);
              bottomAppBarButtons[1] = Colors.white;
              bottomAppBarButtons[2] = Colors.white;
              bottomAppBarButtons[3] = Colors.white;
              break;
            case 1:
              bottomAppBarButtons[1] = Color(0xFF674AEF);
              bottomAppBarButtons[0] = Colors.white;
              bottomAppBarButtons[2] = Colors.white;
              bottomAppBarButtons[3] = Colors.white;
              break;
            case 2:
              bottomAppBarButtons[2] = Color(0xFF674AEF);
              bottomAppBarButtons[0] = Colors.white;
              bottomAppBarButtons[1] = Colors.white;
              bottomAppBarButtons[3] = Colors.white;
              break;
            case 3:
              bottomAppBarButtons[3] = Color(0xFF674AEF);
              bottomAppBarButtons[0] = Colors.white;
              bottomAppBarButtons[2] = Colors.white;
              bottomAppBarButtons[1] = Colors.white;
              break;
          }
        });
        // Mettez à jour l'état de la route ici si nécessaire
      }
    });

    focusNode = FocusNode();
    searchbar_width = 100; // Largeur initiale
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() => {
              searchbar_width = 170,
              searchbar_color = Colors.white
            }); // Elargir quand en focus
      } else {
        setState(() => {
              searchbar_width = 100,
              searchbar_color = Colors.white12
            }); // Rétrécir après la saisie
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //changeStatusBarColor();
    return Scaffold(
      backgroundColor: Color(0xFF333333),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                    child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFF674AEF),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(14),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.transparent,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Hi Roch ! ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),

                                          Text(
                                            '${DateTime.now().day},${DateTime.now().month},${DateTime.now().year}',
                                            style: TextStyle(
                                              color: Colors.white38,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          //Icon(Icons.incomplete_circle, color: Color(0xFF674AEF),)
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        width: 50,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white12,
                                        ),
                                        child: Icon(
                                          Icons.notifications,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Container(
                                margin:
                                EdgeInsets.only(top: 5, bottom: 10, right: 7),
                                padding: EdgeInsets.only(left: 10),
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white12,
                                    border: Border.all(color: searchbar_color),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.white, // Mettez la couleur que vous souhaitez ici
                                  ),
                                  cursorHeight: 19,
                                  onTapOutside: (PointerDownEvent) {
                                    FocusScope.of(context).unfocus();
                                  },
                                  cursorColor: Colors.white,
                                  focusNode: focusNode,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 21,
                                      color: Colors.white,
                                    ),
                                    hintText: "Search here...",
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: CustomCarouselSlider(
                              items: itemList,
                              animationCurve: Curves.easeOut,
                              height: 177,
                              subHeight: 50,
                              autoplay: true,
                              showText: false,
                              showSubBackground: true,
                              indicatorShape: BoxShape.circle,
                              selectedDotColor: Color(0xFF333333),
                              unselectedDotColor: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                          child: Column(
                            children: [
                              GridView.builder(
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 1.1,
                                  ),
                                  itemCount: catNames.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              gradient: LinearGradient(
                                                colors: [
                                                  optionsColor[index],
                                                  Color(0xFF674AEF)
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                            ),
                                            child: Center(
                                              child: optionsIcon[index],
                                            )),
                                        SizedBox(height: 10),
                                        Text(
                                          options[index],
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white.withOpacity(0.7)),
                                        )
                                      ],
                                    );
                                  })
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin:
                                EdgeInsets.only(left: 20, right: 5, top: 40),
                                child: Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white.withOpacity(0.7)),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 12, top: 40),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "See all",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF674AEF)),
                                    ),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Color(0xFF674AEF), size: 11)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                            margin:
                            EdgeInsets.only(left: 15, right: 15, bottom: 40),
                            padding: EdgeInsets.only(top: 25, bottom: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                                children: createContainers(
                                    catNames.length, catIcon2, catNames)))
                      ],
                    ),
                  ),
              Category(),
              Favorite(),
              Profile()
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    border:
                    Border(top: BorderSide(color: Colors.white.withOpacity(0.2))),
                  ),
                  child: Container(
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.home_outlined,
                                  size: 18,
                                  color: bottomAppBarButtons[0]),
                              onPressed: () {
                                _pageController.animateToPage(
                                  0, // Index de la page cible
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.category_outlined,
                                size: 18,
                                color: bottomAppBarButtons[1]
                              ),
                              onPressed: () {
                                _pageController.animateToPage(
                                  1, // Index de la page cible
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.easeInOut,
                                );
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.favorite_outline,
                                size: 18,
                                color: bottomAppBarButtons[2]
                              ),
                              onPressed: () {
                                _pageController.animateToPage(
                                  2, // Index de la page cible
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.easeInOut,
                                );
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.person_2_outlined,
                                size: 18,
                                color: bottomAppBarButtons[3]
                              ),
                              onPressed: () {
                                _pageController.animateToPage(
                                  3, // Index de la page cible
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.easeInOut,
                                );
                              }),
                          // Ajoutez d'autres icônes si nécessaire
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}

class GlassmorphicBottomBar extends StatefulWidget {


  @override
  State<GlassmorphicBottomBar> createState() => _GlassmorphicBottomBarState();
}

class _GlassmorphicBottomBarState extends State<GlassmorphicBottomBar> {
  bool isIconClicked = false;



  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '/second';
    debugPrint(currentRoute);
    debugPrint(currentRoute);
    debugPrint(currentRoute);
    debugPrint(currentRoute);
    debugPrint(currentRoute);
    debugPrint(currentRoute);
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            border:
                Border(top: BorderSide(color: Colors.white.withOpacity(0.2))),
          ),
          child: Container(
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.home_outlined,
                          color: currentRoute == '/'
                              ? Color(0xFF674AEF)
                              : Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/',
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.category_outlined,
                        size: 18,
                        color: currentRoute == '/category'
                            ? Color(0xFF674AEF)
                            : Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/category',
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        size: 18,
                        color: currentRoute == '/favorite'
                            ? Color(0xFF674AEF)
                            : Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/favorite',
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.person_2_outlined,
                        size: 18,
                        color: currentRoute == '/profile'
                            ? Color(0xFF674AEF)
                            : Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/profile',
                        );
                      }),
                  // Ajoutez d'autres icônes si nécessaire
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
