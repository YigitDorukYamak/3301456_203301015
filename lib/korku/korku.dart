import 'package:flutter/material.dart';

class korku extends StatelessWidget {
  const korku({Key? key}) : super(key: key);

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
        title: Text("Korku"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              "İki Yüzlü Adam:Edward Mordrake",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "  İki yüzlü olarak doğan Edward Mordrake 19.yy’da ingiltere’de yaşadığı söyleniyor. Edward’ı diğer insanlardan ayıran şey ise “iki yüzlü olmasıydı. Karakteristik olan İki yüzlülük değil gerçekten kafasının önünde ve arkasında yüzü vardı..."),
            Image.asset('assets/images/resim3.webp'),
            Text(
                'Kafasının arkasına bulunan yüzü, ön yüzünün sadece daha küçük haliydi. Küçükken henüz hiçbir şeyin farkında olmayan Edward, büyüdükçe insanların ondan kaçtığını,arkadaşlarının onun yanına korkudan yaklaşamadığının yavaş yavaş farkına vardı.'),
            Image.asset('assets/images/ikiyuzluadam2.jpg'),
            Text(
                'Ensesindeki şeyi korkutucu kılan şey ise Edward gülerken ağlaması, ağlarken gülmesiydi. Gündüzleri hep somurtan bu yüz geceleri garip sesler çıkartarak Edward’a korkutucu şeyler anlatıyordu.Tedavi için şehirdeki tüm doktorlara giden Edward’ı, lanetli olduğunu düşündükleri için hiçbir doktor tedavi etmek istemedi. Bu Edward’ın toplumdan iyice dışlanmasına sebep oldu.Buna daha fazla dayanamayan Edward 23 yaşında kendisini asarak intihar etti.  '),
          ]),
        )
      ]),
    );
  }
}
