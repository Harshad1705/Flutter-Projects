import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_discover_yt/cubit/app_cubit_logics.dart';
import 'package:trip_discover_yt/cubit/app_cubits.dart';
import 'package:trip_discover_yt/pages/detail_page.dart';
import 'package:trip_discover_yt/pages/navpages/main_page.dart';
import 'package:trip_discover_yt/pages/welcome_page.dart';
import 'package:trip_discover_yt/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 1 : Before Start

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(
          data:DataServices(),
        ),
        child: AppCubitLogics(),
      )
    );
  }
}
