import 'package:flutter/material.dart';
import 'package:note_app1/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16)
      ),
      child:Row(
      children: const[
        
        Text("Notes", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
         )
         ),
        Spacer(),
        SearchIcon()
      ],
    )
    );
  }
}