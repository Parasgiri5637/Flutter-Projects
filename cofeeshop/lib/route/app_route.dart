// ignore_for_file: prefer_const_constructors

import 'package:cofeeshop/pages/details.dart';
import 'package:cofeeshop/pages/front.dart';
import 'package:cofeeshop/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRoute {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          name: "front",
          pageBuilder: (context, state) => MaterialPage(child: MyFront())),
      GoRoute(
        name: 'home',
        path: '/home',
        pageBuilder: (context, state) => MaterialPage(child: MyHome()),
      ),
      GoRoute(
        name: 'details',
        path: '/details/:type/:wiith/:img/:price/:rating',
        pageBuilder: (context, state) {
          final type = Uri.decodeComponent(state.pathParameters['type']!);
          final wiith = Uri.decodeComponent(state.pathParameters['wiith']!);
          final img = Uri.decodeComponent(state.pathParameters['img']!);
          final price = state.pathParameters['price']!;
          final rating = state.pathParameters['rating']!;
          return MaterialPage(
            child: Details(
              type: type,
              wiith: wiith,
              img: img,
              price: price,
              rating: rating,
            ),
          );
        },
      ),
    ],
  );
}
