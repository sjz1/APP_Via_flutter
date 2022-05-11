import 'package:flutter/material.dart';
import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),//앱이 처음 시작할때 보여질 페이지
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
      ),
      body: Center(
        child: Column(
          //상단에 공백을 주기(중앙정렬)
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Main Screen',
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context)
                          => const OnBoardingPage())
                  );
                },
                child: const Text('Go to onboarding Screen'),)
          ],
        ),
      ),
    );
  }
}
