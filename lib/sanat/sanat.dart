import 'package:flutter/material.dart';

class sanat extends StatelessWidget {
  const sanat({Key? key}) : super(key: key);

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
        title: Text("Sanat"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              "Vincent Van Gogh- Tutuklular Çemberi",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                " 1888’de ruhsal hastalıklarla boğuşan Van Gogh, kendi isteğiyle St. Paul Akıl Hastanesi‘ne yatırıldı. Bu Dönemde kardeşi Theo ona Gustave Doré‘nin bir gravürünü yolladı. Bundan çok etkilenen Van Gogh, kendi ruh halini anlatan tutuklular çemberini yaptı"),
            Image.asset('assets/images/vangogh1.webp'),
            Text(
                'Tabloda avluda dönen maphuslar çizilmiştir. Mavi-yeşil tonları hakimdir.  Tablonun üst bölümünde, yukarı doğru yükselmekte olan iki beyaz kelebek vardır. Bunlar, özgürlüğün olduğu kadar, kaybedilmiş saflığın da sembolüdür. Kendisini ise resmin tam merkezine yerleştirmiştir. Bir kısırdöngünün ortasında her şeyi anlayan, ancak hiçbir şeyi değiştiremeyen yalnız ve üzgün bir mahkum.Tabloda, Van Gogh’un intihar edeceği yaşa eşit biçimde 37 insan figürü yer almıştır. Tabloyu çizdikten kısa bir süre sonra göğsüne sıkarak yaşamına son vermiştir.O, şu an dünyada en çok bilinen ressamlardan biri olsa da, yaşamı boyunca sadece bir tablosunu satabilmişti.1890 tarihli tablo günümüzde Moskova Puşkin Müzesi‘ndedir.'),
          ]),
        )
      ]),
    );
  }
}
