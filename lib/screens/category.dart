import 'package:flutter/material.dart';
import 'package:educationnal_app/models/category_model.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';


class Category extends StatefulWidget {
  const Category({super.key});
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {


   static List<Category_Model> main_category_list = [
     Category_Model('Web Development', 2, 'images/developpement-web.png', 50),
     Category_Model('Mobile Development', 10, 'images/developpement-dapplications.png', 40),
     Category_Model('Version Control', 5, 'images/fusionner.png', 25),
     Category_Model('OOP', 4, 'images/lordinateur.png',100),
     Category_Model('Office tools', 7, 'images/soutien-technique.png', 14),
     Category_Model('Programming concepts', 8, 'images/developpement-web.png', 60),
   ];

  List<Category_Model>displayed_list = List.from(main_category_list);

  void update_list_with_filter(a_value){
    setState(() {
      displayed_list = main_category_list.where((element)=>element.name!.toLowerCase().contains(a_value.toLowerCase())).toList();
    });
  }

  List<String> favorite_categories_list = [];

  void add_to_favorite(String value){
    favorite_categories_list.add(value);
    setState(() {});
    // fonction pour actualiser un champ en base de données. A implémnenter après
  }

   void remove_from_favorite(String value){
     favorite_categories_list.remove(value);
     setState(() {});
     // fonction pour actualiser un champ en base de données. A implémnenter après
   }

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
      body: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:
              EdgeInsets.only(top: 5, bottom: 10, right: 7),
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width / 1.2,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white12,
                  border: Border.all(color: Colors.white12),
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white, // Mettez la couleur que vous souhaitez ici
                ),
                onChanged: (value) => update_list_with_filter(value),
                cursorHeight: 19,
                onTapOutside: (PointerDownEvent) {
                  FocusScope.of(context).unfocus();
                },
                cursorColor: Colors.white,
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
            Expanded(
                child: displayed_list.length==0?Center(child: Text('No result found.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),):ListView.builder(
                  itemCount: displayed_list.length,
                  itemBuilder: (BuildContext context, int index) => Container(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Colors.transparent,
                                  ),
                                  child: Image.asset(
                                    displayed_list[index].image_link!,
                                    errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                      // Image failed to load
                                      print('Image failed to load: $error');
                                      // Perform another action here, e.g., display a placeholder or show an error message
                                      return Image.asset('images/placeholder_image.png');
                                    },
                                  )),
                              SizedBox(width: 30),
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 90,
                                        child: Text(
                                          displayed_list[index].name!,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Text(
                                        "${displayed_list[index].number_of_elements.toString()!} éléments ",
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
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(onPressed: (){
                                    favorite_categories_list.contains(displayed_list[index].name)==false?add_to_favorite(displayed_list[index].name!): remove_from_favorite(displayed_list[index].name!);
                                  },
                                      icon: favorite_categories_list.contains(displayed_list[index].name)==false?Icon(Icons.favorite_outline,color: Colors.white,):Icon(Icons.favorite,color: Colors.red,)),

                                  Container(
                                    width: 40,
                                    child: AnimatedRadialGauge(
                                      duration: const Duration(seconds: 3),
                                      curve: Curves.elasticOut,
                                      radius: 100,
                                      value: displayed_list[index].stat_value!,

                                      /// Optionally, you can configure your gauge, providing additional
                                      /// styles and transformers.
                                      axis: GaugeAxis(
                                        /// Provide the [min] and [max] value for the [value] argument.
                                          min: 0,
                                          max: 100,
                                          /// Render the gauge as a 180-degree arc.
                                          degrees: 360,

                                          /// Set the background color and axis thickness.
                                          style: const GaugeAxisStyle(
                                            cornerRadius: Radius.circular(100),
                                            thickness: 8,
                                            background: Colors.white10,
                                            segmentSpacing: 1,
                                          ),

                                          /// Define the pointer that will indicate the progress (optional).
                                          pointer: GaugePointer.triangle(color: Colors.white, width: 7, height: 12,),
                                          /// Define the progress bar (optional).
                                          progressBar: const GaugeProgressBar.rounded(
                                              gradient: GaugeAxisGradient(colors: [
                                                Color(0xFF674AEF),
                                                Colors.redAccent
                                              ],)
                                          ),
                                          /// Define axis segments (optional).
                                          segments: [
                                            const GaugeSegment(
                                              from: 0,
                                              to: 100,
                                              color: Colors.white10,
                                              cornerRadius: Radius.circular(20),
                                            ),
                                          ]
                                      )
                                      ,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                            ]
                        )
                      ),
                    )
                )
            )
            ),
            SizedBox(height: 20)
          ],
        ),
      )
    );
  }


}
