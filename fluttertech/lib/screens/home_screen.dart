// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:k1_splash_screen/screen1.dart';
import 'package:k1_splash_screen/screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              // context.go('/about');
              // context.push('/about');
              GoRouter.of(context).push('/about');
              // Navigator.of(context).pushNamed('/about');
            },
            child: Text('About Screen')),
        ElevatedButton(
            onPressed: () {
              context.push('/contact');
              // Navigator.of(context).pushNamed('/contact');
            },
            child: Text('Contact Screen')),
        ElevatedButton(
            onPressed: () {
              context.push('/product/14');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('Ayakkabi')),
        ElevatedButton(
            onPressed: () {
              context.push('/product/19');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('Mont')),
        ElevatedButton(
            onPressed: () {
              context.push('/users/1');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('Yunus Emre')),
        ElevatedButton(
            onPressed: () {
              context.push('/users/2');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('Alperen Keskin')),
        ElevatedButton(
            onPressed: () {
              context.push('/users/Yagmur');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('X')),
        ElevatedButton(
            onPressed: () {
              context.push('/ogrenciler');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('Wrong Address Testing')),
        ElevatedButton(
            onPressed: () {
              context.push('/users');
              // Navigator.of(context).pushNamed('/product');
            },
            child: Text('Kullanicilar')),
        Screen1(),
        Screen2(),
      ],
    )));
  }
}
