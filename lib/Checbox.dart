import 'package:flutter/material.dart';

class Checbox extends StatelessWidget{
  const Checbox({Key?key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('checkbox', style: TextStyle( color: Colors.yellowAccent),),
          
        ),
        body: const Center(
          child: checkb(),
        ),
      ),
    );
  }
}
class checkb extends StatefulWidget{
  const checkb({Key?key}): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _checkb();
  }
}
class _checkb extends State<checkb>{
  bool isChecked =false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states){
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if(states.any(interactiveStates.contains)){
        return Colors.blue;
      }
      return Colors.red;
    }
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value){
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}