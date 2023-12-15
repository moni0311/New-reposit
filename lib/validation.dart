import 'package:flutter/material.dart';
class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
final _formGlobalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: "User id"
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password)
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login"))

        ],
      ),
    );
  }
}
