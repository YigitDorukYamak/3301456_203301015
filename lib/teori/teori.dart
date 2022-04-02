import 'package:flutter/material.dart';

class teori extends StatelessWidget {
  const teori({Key? key}) : super(key: key);

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
        title: Text("Teori"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              "Tarihin En Gizemli Deneyi-Philadelphia Deneyi",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "   Philadelphia Deneyi 28 ekim 1943 tarihinde Pensilvanya eyaletine bağlı Philadelphia şehrinin limanında yapıldığı iddia edilen deneydir. Deneyin asıl amacı Amerikan donanmasına ait savaş gemisini düşmanlardan gizlemekti. Yani görünmez yapmaktı. İddialara göre bunu başardılar. DE 173 sınıfı 1240 tonluk USS Eldrige adlı savaş gemisi 600 km uzaklığa gidip geri geldi. Evet düşüncesi bile kulağa çılgınca geliyor ama iddialara göre bu başarılı oldu. "),
            Image.asset('assets/images/deney1.webp'),
            Text(
                'Bilimsel adı Optikal Görünmezlik olan bu sistemde amaç; Jeneratörlerle çok güçlü bir manyetik alan oluşturup önce hedefi sarması, ardından radar dalgalarını kırarak hedefi radarlardan görünmez yapmaktı'),
            Text(
                'Deneyin temelinde Einstein’in Birleşik Alan Teorisi vardı. Einstein 1920 tarihinden itibaren bu teori üzerinde çalışmış ancak bu çalışmaları hiçbir zaman tamamlayamamıştır.Teori kabaca nesneler arası çekim ve Elektromanyetizma üzerine kurulmuştur.'),
            Image.asset('assets/images/deney2.webp'),
            Text(
                " İlk paragrafta bahsettiğimiz gibi Birleşik Alan Teorisi’nin deneye uygulanışı “Çok güçlü bir elektromanyetik alan oluşturup, önce gemiyi sarması ardından gemi üzerine gelen ışıkları ve radar sinyallerini bükerek veya kırarak optik görünmezlik sağlamaktı. USS Eldrige adlı savaş gemisinin ön toplarının altına iki adet 75VA gücünde dev jeneratör montelendi, bunların amacı geminin güvertesine 4 manyetik ışık yaymaktı. Güverteye ise 3 RF vericisi yerleştirildi. 3000 adet 6L6 Güç artırıcı tüp, topların altına yerleştirilen jeneratörlerin oluşturduğu gücü yayacak,diğer ekipmanlar elektromanyetik alanları kullanılırlığa indirgeyecek, kırılmış radyo dalgaları ve ışınlar gemiyi saracak ve gemi görünmez olacaktı. Ama beklemedikleri bir şey oldu ve tesadüfen maddenin ışınlanması gerçekleşti."),
            Image.asset('assets/images/deney3.webp'),
            Text(
                "Deney “Project Rainbow” ismiyle başlatıldı. Albert Einstein, Nikola Tesla ve Dr.Johnvon Neumann ve birçok önemli bilim insanları bu projede yer aldı.")
          ]),
        )
      ]),
    );
  }
}
