import 'package:flutter/material.dart';
import 'package:my_app/next3.dart';
import 'package:google_fonts/google_fonts.dart';

class NextPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: GoogleFonts.nanumPenScript(
            color: Color(0xFF000000),
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://2.bp.blogspot.com/-m3T2WWjhH4M/WvQG1mVq94I/AAAAAAABL2I/pF1wvl0POMYFZBdNo4ATLciCVStZbJZjwCLcBGAs/s800/animal_angora_usagi.png"),
            // アイコンの表示も可能,サイズも調整可能
            Icon(
              Icons.cached,
              size: 100,
            ),
            // Row(
            //   // ボタンを２つ横並びにする
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // 次へボタンを押した時・・・とその処理
            //     ElevatedButton(
            //       child: const Text("次へ"),
            //       onPressed: () {
            //         // ボタンを押した時に呼ばれるコードを書く
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => NextPage3(),
            //           ),
            //         );
            //       },
            //     ),
            //     // 戻るボタンを押した時・・・とその処理
            //     ElevatedButton(
            //         child: const Text("戻る"),
            //         onPressed: () {
            //           // popで前のページに戻れる
            //           // 前のページに戻ったら"どういたしまして！！！"を表示させる
            //           // どこに・・・？かが分からない
            //           Navigator.pop(context, "どういたしまして！！！");
            //         }),
            //   ],
            // ),
            // const Text("アンゴラうさぎ〜"),
            // // 前の画面で入力してるname内(ここでは”ありがとう！！！”)を表示
            // Text(name),
          ],
        ),
      ),
    );
  }
}
