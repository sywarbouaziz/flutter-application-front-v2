import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/models/user.dart';
import 'package:flutter_application_7/Fournisseur/screens/client_page.dart';


final List<User> users = [
  User(
    username: 'User 1',
    email: 'user1@example.com',
    urlAvatar: 'https://picsum.photos/250?image=9',
  ),
  User(
    username: 'User 2',
    email: 'user2@example.com',
    urlAvatar: 'https://picsum.photos/250?image=10',
  ),
  User(
    username: 'User 3',
    email: 'user3@example.com',
    urlAvatar: 'https://picsum.photos/250?image=11',
  ),
];

class ClientList extends StatelessWidget {
  const ClientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        centerTitle: true,
        title: Text(
          'Client List',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.urlAvatar),
              ),
              title: Text(user.username),
              subtitle: Text(user.email),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(user: user),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
