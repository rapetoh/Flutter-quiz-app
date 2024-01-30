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
              'Profile',
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image.network('',
                    errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                      // Image failed to load
                      print('Image failed to load: $error');
                      // Perform another action here, e.g., display a placeholder or show an error message
                      return Image.asset('images/user.png');
                    },
                  ),
                ),
              ),

              Text('\nRoch Apetoh\n',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              Text('rapetohsenyo@gmail.com\n', style: TextStyle(color: Colors.white30),),
              Container(
                width: MediaQuery.of(context).size.width/1.6,
                height: 45,
                child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                      backgroundColor: MaterialStatePropertyAll(Color(0xFF674AEF)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Edit Profile  '),
                        Icon(Icons.edit, color: Colors.white,size: 17,)
                      ],
                    )),
              ),
              SizedBox(height: 40,),
              Divider(),

              List_tile_widget(the_first_icon: Icon(Icons.notifications, color: Colors.white, size: 17,),the_scd_icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),title: Text('Notification', style: TextStyle(color: Colors.white,fontSize: 14),)),
              SizedBox(height: 10,),
              List_tile_widget(the_first_icon: Icon(Icons.info, color: Colors.white, size: 17,),the_scd_icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 10,),title: Text('About', style: TextStyle(color: Colors.white,fontSize: 14),)),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              List_tile_widget(the_first_icon: Icon(Icons.login_outlined, color: Colors.red, size: 17,),the_scd_icon: Icon(Icons.arrow_forward_ios_outlined, color: Colors.red,size: 10,),title: Text('Log out', style: TextStyle(color: Colors.red,fontSize: 14),)),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

class List_tile_widget extends StatelessWidget {
  List_tile_widget({
    super.key,
    required this.title,
    required this.the_first_icon,
    required this.the_scd_icon,
  });

  Text title;
  Icon the_first_icon;
  Icon the_scd_icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 17,right: 17,),
      child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          tileColor: Colors.white10,
          leading: Container(
              margin: EdgeInsets.all(10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white12
              ),
              child: the_first_icon
          ),
          title: title,
          trailing: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent
            ),
            child: the_scd_icon,
          )
      ),
    );
  }
}