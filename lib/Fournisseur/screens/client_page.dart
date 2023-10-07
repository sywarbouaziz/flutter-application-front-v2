import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/models/user.dart';


class UserPage extends StatefulWidget {
  final User user;
  const UserPage({Key? key,
  required this.user,}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.username),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network(widget.user.urlAvatar,
            height: 400,
            width: double.infinity,
            fit:BoxFit.cover,
            ),
            const SizedBox(height: 16,),
            Text(
              widget.user.username,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
