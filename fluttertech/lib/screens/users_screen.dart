import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  Dio dio = Dio();

  List<Widget> userWidgetleri = [];

  getUsers() async {
    final response = await dio.get('https://reqres.in/api/users?page=1');
    List<dynamic> users = response.data['data'];
    List<Widget> usersWidgets = users.map((e) {
      return ElevatedButton(
        onPressed: () {
          context.push('/users/' + e['id'].toString());
        },
        child: Text(e['first_name'] + ' ' + e['last_name']),
      );
    }).toList();
    userWidgetleri = usersWidgets;
    setState(() {});
    // print(users);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        ElevatedButton(
          onPressed: getUsers,
          child: Text('Load Users'),
        ),
        Expanded(child: ListView(children: userWidgetleri))
      ])),
    );
  }
}
