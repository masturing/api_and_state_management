import 'img_model.dart';

/// [*] Membuat model untuk cabang
/// TODO: Buat model untuk cabang, sesuai dengan data model yang diberikan
class Cabang {
  final int? id;
  final String? nama;
  final String? address;
  final String? telp;
  final String? description;
  final double? rating;
  final Img? img_url;

  Cabang({
    this.id,
    this.nama,
    this.address,
    this.telp,
    this.description,
    this.rating,
    this.img_url,
  });

  factory Cabang.fromJson(Map<String, dynamic> json) {
    return Cabang(
      id: json['id'],
      nama: json['nama'],
      address: json['address'],
      telp: json['telp'],
      description: json['description'],
      rating: json['rating'],
      img_url: json['img_url'] != null ? Img.fromJson(json['img_url']) : Img(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'address': address,
      'telp': telp,
      'description': description,
      'rating': rating,
      'img_url': img_url!.toJson(),
    };
  }
}
