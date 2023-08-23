import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color color;
  
  RatingBar({this.starCount = 5, this.rating =0.0, this.color = Colors.grey});

  //create star
  Widget buildStar(BuildContext context, int index){
    IconData icName = Icons.star;
    Color isColor = color;

    if(index >= rating){
      icName = Icons.star_border;
      isColor = color.withOpacity(0.4);
      
    }else if (index > rating -1 && index < rating){
      icName = Icons.star_half;
    }
    
    return Icon(icName,size:10.0, color:isColor);
  }

  @override
  Widget build(BuildContext context){
    return Row(
      children: List.generate(starCount,(i) => buildStar(context,i)),
      );
  }
}