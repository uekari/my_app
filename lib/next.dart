import 'package:flutter/material.dart';
import 'package:my_app/next2.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 211, 101, 1),
        title: Text("Home"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(246, 211, 101, 1),
              Color.fromRGBO(253, 160, 133, 1),
            ],
                stops: const [
              0.0,
              1.0,
            ])),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset("img/icon2.png"),
              // Text(
              //   "あやかり隊",
              //   // 文字のスタイル変更
              //   style: TextStyle(
              //     fontSize: 30,
              //     color: Color.fromARGB(255, 226, 185, 182),
              //   ),
              // ),
              // Text("目指せ優勝！"),
              // Row(
              //   // ボタンを２つ横並びにする
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //       child: const Text("次へ"),
              //       onPressed: () async {
              //         // ボタンを押した時に呼ばれるコードを書く
              //         final result = await Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => NextPage2("ありがとう！！！"),
              //           ),
              //         );
              //       },
              //     ),
              //     ElevatedButton(child: const Text("戻る"), onPressed: () {}),
              //   ],
              // ),
              // const Text("アンゴラうさぎ"),
            ],
          ),
        ),
      ),
    );
  }
}
