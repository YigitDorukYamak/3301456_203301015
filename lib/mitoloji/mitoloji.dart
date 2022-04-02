import 'package:flutter/material.dart';

class mitoloji extends StatelessWidget {
  const mitoloji({Key? key}) : super(key: key);

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
        title: Text("Mitoloji"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              "12 Olimposlu",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "   Yunan mitolojisinde Dünya’yı yöneten tanrılar grubudur. Kendilerinden önceki tanrı grubu olan Titanları, Titanlar Savaşı’nda yenerek yönetimi ele geçirmişlerdir. “Tanrıların Kralı” sıfatıyla Zeus, Olimposluların lideridir. Kraliçe sıfatı ise Zeus’un eşi Hera’ya aittir. Olimpos adı Yunanistan’ın en yüksek dağı olan Olimpos Dağı’ndan gelir. Tanrıların dağın zirvesinde bulutların arasında sarayları olduğuna inanılır. On iki sayısı ise karşımıza birçok mitte çıkan bir sayıdır; Yahudilikte On iki İsrail kabilesi, Çerkeslerde 12 büyük kabile, Hristiyanlıkta İsa’nın 12 Havarisi; Şiilikte On İki İmam, Zodyak’taki 12 burç gibi. Sayıya yüklenen bu bakış açısından dolayı Yunan tanrıları da 12 tanedir ve 13 sayısının uğursuzluğuna inanılır. Zeus Kronos’un karnından daha önce Kronos tarafından tek lokmada yutulmuş olan Poseidon, Hades, Demeter, Hera, Hestia’yı çıkartır. Hekatonheirler ve kykloplar Zeus’a minnettar kalırlar ve ona yakıcı şimşekleri ve ateşi hediye ederler. Böylece Zeus gücüne güç katmıştır. Kronos’u yenmiştir. Ateşe sahip olan ilk eril tanrıdır.Zeus büyüyüp güçlenerek babası Kronos’la dünya hakimiyeti için savaşa girer. Bu savaşı Zeus kazanır.İlk 4 Tanrı Birinci kuşak Olimposludur (Zeus, Poseidon, Hades, Hera). Diğer maddedeki Tanrılar 2. Kuşak yani 1. Kuşak tanrılardan meydana gelmiş tanrılardır.Bazı kaynaklarda 12 Olimposlu değil de 14 Olimposlu olarak anlatılır. Çünkü Hestia ve Hades’ de bu gruba dahil olduğu söylenir.Hestia Olimpos’taki yerini Dionysos’a bırakarak insanlar arasında yaşamaya başlamıştır. Hades ise yer altı dünyası Tartaros’ta yaşadığı için 12 olarak kabul edilir. "),
            Image.asset('assets/images/12olimposlu1.webp'),
            Text(
                'ZEUS : “Tanrıların ve İnsanların Babası” Yunan Mitolojisinde en güçlü ve önemli tanrıdır. Roma’da Jüpiter olarak da bilinir. Göklerin, şimşeklerin ve gök gürültülerinin tanrısıdır. Çoğu zaman elinde bir şimşek ile resmedilmiştir. Şimşeğin yanında kartal ile de simgelenmiştir. Çapkınlığı ile Yunan mitolojisinde meşhurdur.'),
            Image.asset('assets/images/12olimposlu2.webp'),
            Text(
                'HERA : Zeus’un eşi olarak bilinir. Olimpos’un tanrıları arasında kraliçe unvanına sahiptir. Aynı zamanda evlilik tanrısı olarak bilinir. Eski inanca göre doğum sırasında kadınların ve evliliklerin koruyucusudur. Mitolojide en güçlü kadın olarak ifade edilir. Simgesi tavus kuşudur.'),
            Image.asset('assets/images/12olimposlu3.webp'),
            Text(
                'POSEIDON : Yunan mitolojisinde denizlerin ve depremin tanrısıdır. En önemli simgesi elinde tuttuğu üç dişli bir yabandır. Adı ise Trident’tir. Aynı zamanda hırsı ve gücü temsil eder. Roma mitolojisinde Neptün olarak bilinir.'),
            Image.asset('assets/images/12olimposlu4.webp'),
          ]),
        )
      ]),
    );
  }
}
