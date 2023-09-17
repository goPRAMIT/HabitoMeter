//import 'dart:html';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
//import 'package:habito_meter/generated_routes.dart';
//import 'package:habito_meter/pages/home_page.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? settingsTapped;
  final Function(BuildContext)? deleteTapped;

  //final GlobalKey key1;
  //final GlobalKey key2;

  const HabitTile({
    super.key,
    required this.habitName,
    required this.habitCompleted,
    required this.onChanged,
    required this.settingsTapped,
    required this.deleteTapped,
    //required this.key1,
    //required this.key2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: settingsTapped,
            backgroundColor: Colors.grey.shade700,
            icon: EvaIcons.editOutline,
            borderRadius: BorderRadius.circular(12),
          ),
          SlidableAction(
            onPressed: deleteTapped,
            backgroundColor: Colors.red.shade300,
            icon: EvaIcons.trashOutline,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
          decoration: BoxDecoration(
              color: habitCompleted == true
                  ? Color.fromARGB(186, 253, 211, 84)
                  : Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(12)),
          child: SizedBox(
            //height: 35,
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              contentPadding: EdgeInsets.all(0),
              //hoverColor: Colors.green[200],
              horizontalTitleGap: 0,
              //minVerticalPadding: 0,
              leading: Checkbox(
                value: habitCompleted,
                onChanged: onChanged,
                //onChanged: ColorSwatch: isSelected ? Colors.amber[200] : null,
                //activeColor: Colors.white,
                //checkColor: Colors.amber[200],
              ),

              title: Flexible(
                child: Text(
                  habitName,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: Icon(
                EvaIcons.chevronLeftOutline,
                //Align: Alignment.centerRight,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
