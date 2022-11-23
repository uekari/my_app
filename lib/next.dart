import 'package:flutter/material.dart';
import 'package:my_app/next2.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
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
    );
  }
}
