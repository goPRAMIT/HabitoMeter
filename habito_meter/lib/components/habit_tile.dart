//import 'dart:html';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? settingsTapped;
  final Function(BuildContext)? deleteTapped;

  const HabitTile({
    super.key,
    required this.habitName,
    required this.habitCompleted,
    required this.onChanged,
    required this.settingsTapped,
    required this.deleteTapped,
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
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: habitCompleted == true
                  ? Color.fromARGB(186, 253, 211, 84)
                  : Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Checkbox(
                value: habitCompleted,
                onChanged: onChanged,
                //onChanged: ColorSwatch: isSelected ? Colors.amber[200] : null,
                //activeColor: Colors.white,
                //checkColor: Colors.amber[200],
              ),
              Text(habitName),
              Spacer(),
              Icon(
                EvaIcons.chevronLeftOutline,
                color: Colors.grey[800],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
