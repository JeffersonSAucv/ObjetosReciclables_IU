import 'package:flutter/material.dart';



import 'package:reciclar_page/models/materiales.dart';
import 'package:reciclar_page/styleguide.dart';

class MaterialPaginaDetalle extends StatefulWidget {
  
  final   MaterialR  material;

  const MaterialPaginaDetalle({Key key, this.material}) : super(key: key);
  

  @override
  _MaterialPaginaDetalleState createState() => _MaterialPaginaDetalleState();
}

class _MaterialPaginaDetalleState extends State<MaterialPaginaDetalle> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: "background-${widget.material.name}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: widget.material.colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                   )

              ),
            ),
          ),
           SingleChildScrollView(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: IconButton(
                  icon: Icon(
                    Icons.close,color: Colors.white.withOpacity(0.9),
                    size: 40),
                  onPressed: (){Navigator.pop(context);} 
                  ),
                ),
                //le pongo padding para que se vea la animacion de transicion
                Align(
                  //con esto lo alejo a la izquierda para ayudar a la animacion
                  //padding : const EdgeInsets.only( left: 0),
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag:  "image-${widget.material.name}",
                    child: Image.asset(
                      widget.material.imagePath,
                      height: screenHeight* 0.25,
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                  child: Hero(
                    tag: "name-${widget.material.name}",
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            child: Text(widget.material.name,
                            style: widget.material.stilo),
                          ),
                        )
                        ),   
                  ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(32.0  , 0.0,  8.0,  32.0),
                  child: Text(
                  widget.material.description,
                  style: widget.material.stilosubhead),
                ),
              ],
             ),
           ),   
        ],
      )
    );
  }
}