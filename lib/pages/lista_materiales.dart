import 'package:flutter/material.dart';


//mis paginas importadas
import 'package:reciclar_page/models/materiales.dart';
import 'package:reciclar_page/styleguide.dart';
import 'package:reciclar_page/widgets/materiales_widget.dart';
class MaterialesListingScreen extends StatefulWidget {
  @override
  _MaterialesListingScreenState createState() => _MaterialesListingScreenState();
}

class _MaterialesListingScreenState extends State<MaterialesListingScreen> {
  PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
            icon: Icon(Icons.search), 
            onPressed: (){}
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Materiales Reciclables", style:AppTheme.display1 ),
                      TextSpan(text: "\n"),
                      TextSpan(text: "Estos son algunos:", style:AppTheme.display2),
                    ]
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  children:<Widget>[
                      for (var i=0; i< materiales.length; i++) 
                         MaterialWidget(material : materiales[i])
                                    

                  ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}