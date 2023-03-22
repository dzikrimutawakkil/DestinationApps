import 'package:flutter/material.dart';
import 'package:percobaan4/provider/done_tourism_provider.dart';
import 'package:percobaan4/tugas2.dart';
import 'package:provider/provider.dart';
import 'list_item.dart';
import 'model/tourism_place.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();

}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      deskripsi: 'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/kelenteng.jpg',
      deskripsi: 'Klenteng Sanggar Agung juga dikenal dengan sebutan KLenteng Hong San Tang. Didirikan pada tahun 1999 dan berfungsi sebagai tempat ibadah umat Tri Dharma.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/submarine.jpg',
      deskripsi: 'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun pada 1862 dan sekarang menjadi situs sejarah.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun - alun Contong',
      imageAsset: 'assets/images/submarine.jpg',
      deskripsi: 'Museum Sepuluh November Surabaya adalah salah satu museum yang terletak di Kota Surabaya, dibangun pada tahun 1945. Museum ini dibangun dengan tujuan untuk mempelajari dan memperdalam peristiwa Pertempuran Sepuluh November 1945, Museum Sepuluh November beralamat di Jalan Pahlawan, Surabaya.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/submarine.jpg',
      deskripsi: 'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/submarine.jpg',
      deskripsi: 'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/submarine.jpg',
      deskripsi: 'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
      tanggal_buka: 'Setiap Hari',
      waktu_buka: '08.00 - 16.00',
      harga_tiket: 'Rp. 10.000,-',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Tugas2(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                    place: place,
                    isDone: data.doneTourismPlaceList.contains(place),
                    onCheckboxClick: (bool? value) {
                      data.complete(place, value!);
                    }
                );
              }
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}