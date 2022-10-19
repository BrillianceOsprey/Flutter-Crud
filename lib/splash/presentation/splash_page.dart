import 'package:auto_route/auto_route.dart';
import 'package:crud_flutter/routes/app_router.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> nextPage() async {
    Future.delayed(const Duration(seconds: 2));
    AutoRouter.of(context).push(const EmptyAuthRoute());
  }

  @override
  void initState() {
    nextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // child: Image(
        //   image: AssetImage('assets/images/color.png'),
        // ),
        child: Icon(
          Icons.anchor,
          size: 200,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
