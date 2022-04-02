import 'package:flutter/material.dart';

class gizem extends StatelessWidget {
  const gizem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        title: Text("Gizem"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              "Uyuyan Güzel:Rosalia Lombardo",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "  1918 yılında doğan Rosalia Lombardo, İspanyol gribi nedeniyle 6 aralık 1920 tarihinde vefat etti. Acısını hafifletmek isteyen babası kızını mumyalayarak ölümsüzleştirmek istedi. Bu işi yapacak kişiyi Sicilya’da buldu. Ünlü kimyager ve mumya ustası Dr. Alfredo Salafia küçük kızı mumyalayarak camdan bir mezarın içine koydu. "),
            Image.asset('assets/images/uyuyanguzel1.jpg'),
            Text(
                'Mumyalanan Rosalia Lombardo tam 90 yıldır cesedi hiç bozulmadan bir bebek gibi uyuyordu. Bu sırrı çözmek için bilim insanları 90 yıl boyunca uğraştı. Dr. Alfredo Salafia mumyalarken nasıl bir yöntem kullandığını hiç kimseye söylemedi ve bu sırrı onunla beraber mezara gitti. Yıllardır süren araştırmalar Palermo Üniversitesi’nde çalışan arkeolog Piombino Mascali ile son buldu.Uzun yıllardır Salafia’nın sırrı üzerinde çalışan Mascali tesadüfen el yazması bir eser buldu.Salafia küçük kızı nasıl mumyaladığını detaylı bir şekilde bu esere yazmıştı. Salafia küçük kızın damarlarına glicerine, çinko, klor ve salisil karışımı bir sıvı enjekte ederek küçük kızın cesedinin bozulmamasını sağlamıştı.'),
            Image.asset('assets/images/uyuyanguzel2.webp'),
            Text(
                'Cam tabutun içinde yaklaşık 101 yıldır gözlerini açıp kapatması mumyayı gizemli kılmıştı.Bir iddiaya göre Rosalia Lombardo’nun göz kırpması sadece görsel bir hileden ibaret. Tabutun bulunduğu yerdeki ışık oyunu sebebiyle mumyanın gözleri açılıp kapanıyor gibi görünüyor.Aslında küçük kızın gözleri hiçbir zaman tamamen kapalı  olmadı.İçeri sızan ışık sayesinde böyle bir göz yanılması gerçekleşiyor.'),
          ]),
        )
      ]),
    );
  }
}
