import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(
  //   title:'Latihan flutter',
  //   debugShowMaterialGrid: false,

  //   debugShowCheckedModeBanner: false,
  //   home:Scaffold(body: Center(child: Text('Hello word',style: TextStyle(color: Colors.blue),)),)
  // ));
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MYAPPUMAM',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: myhome(),
    );
  }
}

class myhome extends StatelessWidget {
  const myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MYAPPUMAM')),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 24, color: Colors.blue),
            ),
            SizedBox(height: 20),
            MyContainer(),
            SpacingTextWidget(),
            OverflowTextWidget(),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('umam king', style: TextStyle(fontSize: 20, letterSpacing: 5)),
      ],
    );
  }
}
class OverflowTextWidget extends StatelessWidget {
  const OverflowTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all()
      ),
      child: const Text(
        'aku adalah seorang engineering yang handal'
        'saya berpengalaman selama 10 tahun',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      )
    );
  }
}
