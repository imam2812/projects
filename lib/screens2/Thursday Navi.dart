import 'package:flutter/material.dart';

import 'Navi2.dart';

class visible extends StatefulWidget {
  const visible({Key? key}) : super(key: key);

  @override
  State<visible> createState() => _visibleState();
}

class _visibleState extends State<visible> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  final _key = GlobalKey<FormState>();
  bool _imam = false;
  void imam() {
    setState(() {
      _imam = name.text.isNotEmpty && password.text.isNotEmpty && _key.currentState?.validate()==true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 300),
            TextFormField(
              onChanged: (_) {
                imam();
              },
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Valid Name";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (_) {
                imam();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Valid Password";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                icon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Visibility(
              visible: _imam,
              child: ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tntj()),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
