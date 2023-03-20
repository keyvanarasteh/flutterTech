// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  final String userId;

  const UserScreen({super.key, required this.userId});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  Dio dio = Dio();

  bool loading = true;
  String email = '';
  String name = '';
  String avatarUrl = '';

  loadUser() async {
    final response =
        await dio.get('https://reqres.in/api/users/' + widget.userId);
    print(response.data);
    loading = false;
    email = response.data['data']['email'];
    name = response.data['data']['first_name'] +
        " " +
        response.data['data']['last_name'];
    avatarUrl = response.data['data']['avatar'];
    setState(() {});
  }

  @override
  void initState() {
    loadUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loading ? CircularProgressIndicator() : SizedBox(),
          Text('User Screen'),
          Text('User ID: ' + widget.userId),
          Text(email),
          Text(name),
          avatarUrl != "" ? Image.network(avatarUrl) : SizedBox(),
        ],
      )),
    );
  }
}
