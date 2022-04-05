import 'package:flutter/material.dart';
import 'package:flutter_code/LayoutDemo.dart';
class Form_Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Login',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Login'),
        ),
        body: Center(
          child: FormDemo(),
        ),
      ),
    );
  }
}

class FormDemo extends StatefulWidget{
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FormDemo();
  }
}
class _FormDemo extends State<FormDemo>{
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: SizedBox(
        width: 500,
        height: 700,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: usernameController,
              validator: (value){
                if(value == null || value.isEmpty ){
                  return 'Nhập tên đăng nhập';
                } return null;
              },
              decoration: const InputDecoration(
                icon: const Icon(Icons.account_circle),
                labelText: 'Username',
                hintText: 'admin',
              ),
            ),

            TextFormField(
              controller: passwordController,
              obscureText: true,
              validator: (value){
                if(value == null || value.isEmpty ){
                  return 'Nhập password';
                } return null;
              },
              decoration: const InputDecoration(
                icon: const Icon(Icons.vpn_key),
                hintText: 'admin',
                labelText: 'Name',
              ),
            ),

            Padding(padding: EdgeInsets.all(26),
              child: ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  if(usernameController.text=='admin'&&passwordController.text=='admin'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LayoutDemo())
                    );
                  }
                  else{
                    usernameController.text="";
                    passwordController.text="";
                  }
                }
              }, child: const Text('submit'),
              ),
            )
          ],
        ),
      ),

    );
  }
}