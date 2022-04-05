import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  //title section
  Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'ảnh số 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              ' tells the framework that the image should be as small as possible but cover its entire render box.',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),

      checkb(),
    ],
  ),
);
  //Text section
  Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
        'TPO - Ngày 3/4, Tổng thống Ukraine Volodymyr Zelensky vừa có bài phát biểu bất ngờ tại lễ trao giải Grammy để kêu gọi ủng hộ, và đề nghị các nghệ sĩ hàng đầu nước này dùng âm nhạc để “lấp đầy sự im lặng” mà cuộc xung đột gây ra.'
            'Ông Zelensky có bài phát biểu ghi hình trước, được phát trước màn biểu diễn của John Legend với bài hát “Tự do” cùng ca sĩ người Ukraine Mika Newton, nhạc sĩ Siuzanna Iglidan và nhà thơ Lyuba Yakimchuk.',
      softWrap: true,
    ),
  );
  //build button
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  //build
  @override
  Widget build(BuildContext context) {
    // button section
    Color color = Colors.deepPurple;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.call, 'CALL'),
      ],
    );

    // TODO: implement build
    return MaterialApp(
      title: 'LayoutDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout demo', style: TextStyle( color: Colors.pink),),
        ),
        body: ListView(
          children: [
            Image.asset('image/wall.jpg', width: 400, height: 200,),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

class checkb extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _checkb();
  }
}
class _checkb extends State<checkb>{
  int _favoriteCount  = 52;
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
    return Row(
      children: [
        Checkbox(// Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value){
            setState(() {
              isChecked = value!;
              if(isChecked){
                _favoriteCount++;
              }
              else
                {
                  _favoriteCount--;
                }

            });
          },
        ),
        Text(_favoriteCount.toString()),
      ],
    );
  }
}