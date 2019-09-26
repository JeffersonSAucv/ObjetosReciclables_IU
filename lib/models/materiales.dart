import 'package:flutter/material.dart';
//Aqui en materialR es la clase que contiene los atributos que llamaremos 
//a nuestra pagina : materiales widget y material pagina detalle
class MaterialR{
  final String name; //nombre del material a reciclar
  final String imagePath; //imagen del material
  final String description; //descripcion del material
  final List<Color> colors; //colores de la tarjeta
  final TextStyle stilo; //stilo diferente de titulo de la tarjeta para que sea personalizada
  final TextStyle stilosubhead; //stilo diferente del susbitulo y descripcionpara que sea personalizado
  MaterialR({this.name,this.imagePath,this.description,this.colors,this.stilo,this.stilosubhead});
}
List materiales = [
//hola
//jola
  MaterialR(
    name: "Plasticos",
    imagePath: "assets/img_et/botella_plastico.png",
    description: 
    "La botella de plástico es un envase muy utilizado en la comercialización de líquidos en productos como lácteos, bebidas o limpia hogares. Sus ventajas respecto al vidrio son básicamente su menor precio y su gran versatilidad de formas. Se comenzaron a desarrollar en la década de 1950.",
    colors: [Colors.white70, Colors.white70],
    //como la tarjeta es blanca llama al estilo personalizado como titulo en color negro
    stilo: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w900,fontSize: 34,color: Colors.black.withOpacity(1),letterSpacing: 1.2,),
    //como la tarjeta es blanca llama al estilo personalizado como subtitulo en color negro
    stilosubhead: TextStyle( inherit: true,fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 24,color: Colors.black.withOpacity(0.8),),
    //Colors.lightBlue.shade200, Colors.blue.shade400
  ),
  MaterialR(
    name: "Papel",
    imagePath: "assets/img_et/bola_papel.png",
    description: "El papel es un material constituido por una delgada lámina elaborada a partir de pulpa de celulosa,1​ elaborada con una pasta de fibras vegetales molidas suspendidas en agua, generalmente blanqueada, y posteriormente secada y endurecida",
    colors: [Colors.lightBlue.shade200, Colors.blue.shade400],
    stilo: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w900,fontSize: 34,color: Colors.white.withOpacity(1),letterSpacing: 1.2,),
    stilosubhead: TextStyle( inherit: true,fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white.withOpacity(0.8),),
  ),
  MaterialR(
    name: "Metales",
    imagePath: "assets/img_et/lata_metal.png",
    description: "La chatarra de metales como aluminio, plomo, hierro, acero, cobre, plata y oro son reciclados fácilmente cuando no están mezclados con otras sustancias, porque pueden ser fundidos y cambiar de forma o adoptar la misma anterior.",
    colors: [Colors.yellow.shade200, Colors.yellow.shade600],
    stilo: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w900,fontSize: 34,color: Colors.white.withOpacity(1),letterSpacing: 1.2,),
    stilosubhead: TextStyle( inherit: true,fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white.withOpacity(0.8),),
  ),
  MaterialR(
    name: "Vidrio",
    imagePath: "assets/img_et/botella_vidrio.png",
    description: "El Reciclaje de vidrio es uno de los materiales que permiten reutilizar una gran parte del material desechado, de ahí su importancia. La forma ideal para recilar vidrio, consiste en almacenar en nuestros hogares, todo tipo de tarros, botellas o envases de vidrio, para después depositarlos en los contenedores o iglús, de color verde. Es importante tener en cuenta que deberemos retirar cualquier otro material de estos productos, como tapones, anillas, y si es posible, el papel de las etiquetas. De esta forma, facilitaremos en gran medida el proceso de reciclaje del vidrio, siendo este mucho más rápido y económico.",
    colors: [Colors.grey.shade300, Colors.grey.shade700],
    stilo: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w900,fontSize: 34,color: Colors.white.withOpacity(1),letterSpacing: 1.2,),
    stilosubhead: TextStyle( inherit: true,fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white.withOpacity(0.8),),
  )


];