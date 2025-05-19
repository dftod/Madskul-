// ekskul_controller.dart

class EkskulController {
  static final EkskulController _instance = EkskulController._internal();

  factory EkskulController() {
    return _instance;
  }

  EkskulController._internal();

  final List<Map<String, dynamic>> ekskulList = [
    {
      'name': 'Pramuka',
      'image': 'assets/pramuka.png',
    },
    {
      'name': 'Bulu Tangkis',
      'image': 'assets/bulutangkis.png',
    },
    {
      'name': 'Bola Basket',
      'image': 'assets/bolabasket.png',
    },
    {
      'name': 'Bola Voli',
      'image': 'assets/bolavoli.png',
    },
    {
      'name': 'Futsal',
      'image': 'assets/futsal.png',
      'description': 'Latihan rutin futsal setiap Sabtu sore.',
    'schedule': 'Sabtu, 16.00 - 18.00',
    'location': 'Lapangan Indoor',
    'memberCount': '25 Anggota',
    'coachName': 'Pak Andi'
    },
    {
      'name': 'Tapak Suci',
      'image': 'assets/tapaksuci.png',
    },
    {
      'name': 'Tenis Meja',
      'image': 'assets/tenismeja.png',
    },
    {
      'name': 'Tata Boga',
      'image': 'assets/tataboga.png',
    },
    {
      'name': 'Olimpiade Bahasa Inggris',
      'image': 'assets/olimpiadeinggris.png',
    },
    {
      'name': 'Desain Grafis',
      'image': 'assets/desaingrafis.png',
    },
    {
      'name': 'Qiro\'ah',
      'image': 'assets/qiroah.png',
    },
    {
      'name': 'Karya Ilmiah Remaja',
      'image': 'assets/kir.png',
    },
    {
      'name': 'Karate',
      'image': 'assets/karate.png',
    },
  ];
}