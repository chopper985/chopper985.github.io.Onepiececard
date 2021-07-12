import 'dart:convert';

class ReCart {
  final String name;
  final String birth;
  final String height;
  final String bonus;
  final String descripe;
  final String image;
  final String imageChibi;
  ReCart({
    required this.name,
    required this.birth,
    required this.height,
    required this.bonus,
    required this.descripe,
    required this.image,
    required this.imageChibi,
  });


  ReCart copyWith({
    String? name,
    String? birth,
    String? height,
    String? bonus,
    String? descripe,
    String? image,
    String? imageChibi,
  }) {
    return ReCart(
      name: name ?? this.name,
      birth: birth ?? this.birth,
      height: height ?? this.height,
      bonus: bonus ?? this.bonus,
      descripe: descripe ?? this.descripe,
      image: image ?? this.image,
      imageChibi: imageChibi ?? this.imageChibi,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'birth': birth,
      'height': height,
      'bonus': bonus,
      'descripe': descripe,
      'image': image,
      'imageChibi': imageChibi,
    };
  }

  factory ReCart.fromMap(Map<String, dynamic> map) {
    return ReCart(
      name: map['name'],
      birth: map['birth'],
      height: map['height'],
      bonus: map['bonus'],
      descripe: map['descripe'],
      image: map['image'],
      imageChibi: map['imageChibi'],
    );
  }
  factory ReCart.fromFirestore(dynamic map) {
    return ReCart(
      name: map['name'],
      birth: map['birth'],
      height: map['height'],
      bonus: map['bonus'],
      descripe: map['descripe'],
      image: map['image'],
      imageChibi: map['imageChibi'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ReCart.fromJson(String source) => ReCart.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ReCart(name: $name, birth: $birth, height: $height, bonus: $bonus, descripe: $descripe, image: $image, imageChibi: $imageChibi)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ReCart &&
      other.name == name &&
      other.birth == birth &&
      other.height == height &&
      other.bonus == bonus &&
      other.descripe == descripe &&
      other.image == image &&
      other.imageChibi == imageChibi;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      birth.hashCode ^
      height.hashCode ^
      bonus.hashCode ^
      descripe.hashCode ^
      image.hashCode ^
      imageChibi.hashCode;
  }
}
