import 'package:flutter/material.dart';



//mis paginas importadas
import 'package:reciclar_page/models/materiales.dart';
import 'package:reciclar_page/pages/material_pagina_detalle.dart' ;
import 'package:reciclar_page/styleguide.dart';

class MaterialWidget extends StatelessWidget {
  final MaterialR material;

  const MaterialWidget({Key key, this.material}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.of(context).size.height;
    final screenWidth= MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        Navigator.push(context, PageRouteBuilder(
          transitionDuration:  const Duration( milliseconds: 350),
          pageBuilder: (context, _, __) => MaterialPaginaDetalle(material: material) ));
      },
      child: Stack(
        
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: MaterialCardBackgroundClipper() ,
              child: Hero(
                tag: "background-${material.name}",
                    child: Container(  
                    
                    height: 0.6 * screenHeight,
                    width: 0.9   * screenWidth,
                    decoration: BoxDecoration(
              
                      gradient: LinearGradient(
                        colors: material.colors,
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                      ),
                      // shape: BoxShape.circle,
                     /*  boxShadow: [
                        BoxShadow(
                          color: Colors.black87,
                          blurRadius: 30.0
                        )
                      ] */
                    ),
                  ),
                ),
              ),
            
          ),
          Align(
            alignment: Alignment(0,-0.5),
            child: Hero(
              tag:  "image-${material.name}",
              child: Image.asset(
                material.imagePath,
                height: screenHeight * 0.55,
              ),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(left: 32.0, right: 32,bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[ 
                Hero(
                  tag:"name-${material.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          material.name,
                          style: material.stilo,
                        ),
                      ),
                    ),
                ),
                Text(
                  "Click para leer mas",
                   style:  material.stilosubhead,
                   ),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}

class MaterialCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(
        size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(
        size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}