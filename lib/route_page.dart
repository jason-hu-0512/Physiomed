import 'package:flutter/material.dart';
class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
int selected_index = 0;
static List<Widget>? Widget_options;//the question mark means that the value could be empty we dont know uet
@override
void initState() {
  //we want to override the initstate stopping is a byproduct
  super.initState(); //this runs the same function as if we didn't override it
Widget_options=[Home_page(),Injury_page(),Mental_support_page(),Profile_page()];
}

void onitemtap(int index){
  setState(() {
    selected_index=index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Widget_options!.elementAt(selected_index),//choosing from the list above, the home page is 0, and the selected index is what picks values from our "widget options"
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home")],
      )
      ,
    );
  }
}
