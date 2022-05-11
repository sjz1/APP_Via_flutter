import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jj_connect/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      //여러 페이지이기 때문에 리스트로 불러옴
      pages: [
        //first page
        PageViewModel(
          title: 'Welcome to JJ_CONNECT app',
            body: '핸드폰으로 배달을 \n시켜 보신 적이 있나요???',
            image: Image.asset('image/solo.jpg'),
          decoration: getPageDecoration()
        ),
        //Second page
        PageViewModel(
            title: '나는 혼자 사는데',
            body:
                  '배달료는 비싸지고\n'
                  '최소 주문 금액을 \n'
                  '혼자 시키기엔 많고',
            image: Image.asset('image/poor.jpg'),
            decoration: getPageDecoration()
        ),
        //third page
        PageViewModel(
            title: '주변 사람들과 주문',
            body: '배달료는 아끼고 \n'
            '최소 주문 금액도 맞추고 \n',
            image: Image.asset('image/group.jpg'),
            decoration: getPageDecoration()
        ),
        //fourth page
        PageViewModel(
            title: '안전한 거래',
            body: '모두가 입금을 완료하면\n'
            '결제를 진행',
            image: Image.asset('image/phone.png'),
            decoration: getPageDecoration()
        ),
        //five page
        PageViewModel(
            title: 'JJ_connect',
            body: ' 주변 사람들과 함께\n'
                '돈을 절약해요',
            image: Image.asset('image/save.jpg'),
            decoration: getPageDecoration()
        ),

      ],
      //마지막 페이지 봤을때 수행할거
      done: const Text('start'),
      onDone: (){
        //페이지 이동 구현
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => const MyPage())
        );
      },
      //skip 버튼 구현
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('Skip'),
      //페이지 이동 점 디자인
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        size: const Size(10,10),
        activeSize: const Size(15,15),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration(){
    return const PageDecoration(
      //제목
      titleTextStyle: TextStyle(fontFamily: 'HSSantokki',
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),
      bodyTextStyle: TextStyle(
        fontFamily: 'HSSantokki',
        fontSize: 35,
        color: Colors.blue,

      ),
      imagePadding: EdgeInsets.only(top: 40),
        //배경색
      pageColor: Color(0xff6768ABFF)
    );
  }
}
