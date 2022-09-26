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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Center(
          child: Column(
            children: const [
              Text('Hello'),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator.adaptive()
            ],
          ),
        ),
      ),
    );
  }
}
