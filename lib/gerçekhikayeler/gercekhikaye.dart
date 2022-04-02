import 'package:flutter/material.dart';

class gercekhikaye extends StatelessWidget {
  const gercekhikaye({Key? key}) : super(key: key);

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
        title: Text("Gerçek Hikaye"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              "Tinder Avcısı:SİMON LEVİEV",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "   Simon Leviev (ya da gerçek adıyla Shimo Yahut) 1990 yılında İsrail’in Bnei Brak kentinde Shimon Yahut olarak doğdu.15 yaşındayken aile dostları ile ABD’de New York’a taşındı ve daha sonra bu kişilerin kredi kartlarını kötüye kullanmakla suçlandı. 2011 yılında çalıntı çekleri bozdurduğu için hırsızlık , sahtecilik ve dolandırıcılık ile suçlandı. Bir ailenin çocuklarına bakıcılık yaparak başka bir ailenin evinde ise tamirci olarak çalışırken çek defterlerini çaldı. 2012 yılında İsrail mahkemesi tarafından hırsızlık ve çek sahteciliği ile suçlandı. Mordechai Nisim Tapiro adını kullanarak sahte pasaport çıkardı ve Avrupa’ya kaçtı bu yüzden mahkemeye hiç çıkmadı.  2015 yılında birkaç kadını dolandırmaktan Finlandiya’da tutuklandı ve 3 yıl hapis cezasına çarptırıldı. Cezasını erken bitirdikten sonra 2017 yılında yeniden hüküm giyilmek üzere İsrail’e döndü ve Shimon Yahut olan ismini Simon Leviev olarak değiştirip ülkeyi terk etti. Leviev soyadını kullanarak “Elmas Baronu” olarak bilinen İsrail’in önemli iş adamlarından olan Lev Avnerovich Leviev ile akrabaymış gibi gösterdi. Son yıllarda ise geçimini Tinderdan düşürdüğü kadınları dolandırarak kazanıyor(du). Ortalama bir tipi ve fiziksel özellikleri olmasına karşın yaşadığı lüks hayatıyla, daha doğrusu lüksmüş gibi gösterdiği hayatıyla dikkat çekiyor. Tinder’da eşleştiği tüm kadınlara kendini “Elmas Baronu” olan Lev Avnerovich Leviev’in oğlu olarak tanıtıp tüm hayatını başka ülkelere işi için gezen birisi olduğunu söylüyor. İlk buluşmalarda kadınları özel jetlere bindiriyor, pahalı hediyelerle etkiliyor daha sonra o kadınlara aşık olduğunu ve aile kurma gibi fikirlerinden bahsediyor. "),
            Image.asset('assets/images/simonleviev1.jpg'),
            Text(
                'Asıl olay burada başlıyor. Tanıştığı kadınlara elmas ve pırlanta sektörünün tehlikeli olduğunu, düşmanlarının çok olduğunu ve ölüm tehlikesinin olduğunu söylüyor ve ardından bir mekanda saldırıya uğradığına dair fotoğraf ve videolar gönderiyor.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/simonleviev2.jpg'),
                Image.asset('assets/images/simonleviev3.png')
              ],
            ),
            Text(
                'Bu sahte saldırıya ait fotoğraf ve videoları tanıştığı her kadına gönderiyor. Kredi kartını kullanırsa düşmanlarının onu bulacağını ve öldüreceğini söyleyip kadınlardan yüksek miktarda kredi çekmelerini istiyor. Kadınlar Leviev’in zaten zengin olduğunu ve kredileri misliyle geri ödeyeceğini düşünüp isteklerini gerçekleştiriyor. Daha sonra Leviev ortalıktan kayboluyor. İskandinav ülkelerde yüksek ihtiyaç kredisi çekebilmek kolay olduğu için özellikle İskandinav kadınlarını tercih ediyor. Bu kurduğu sisteme Ponzi Sistemi deniyor. Örnek verecek olursak bir ihtiyaç kredisi çektirdiği kadından aldığı paralarla lüks arabalar kiralayıp, flörtleştiği başka bir kadına pahalı hediyeler alıyor ama her zaman Simon Leviev kazanmış oluyor. Şu ana kadar toplam 10 milyon dolar kazandığı söyleniyor.Gelen şikayetler üzerine Yunanistan’da yakalanıyor. İsrail’de eski bir davası ve sahte pasaport bulundurduğundan dolayı 15 ay hapis cezasına çarptırılıyor. 5 ay yattıktan sonra tahliye oluyor. Kendisi için kişisel danışmanlık şirketi kurmuş ve model sevgilisiyle İsrail’de lüks bir hayat yaşamaya devam ediyor.'),
            Image.asset('assets/images/simonleviev4.jpg'),
          ]),
        ),
      ]),
    );
  }
}
