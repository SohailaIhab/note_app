

import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 42,
      height: 42,
      decoration:  BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(18),),
      child: const Center(
      child:Icon(Icons.search,
      size: 28,),),
      
      
    );
  }
}