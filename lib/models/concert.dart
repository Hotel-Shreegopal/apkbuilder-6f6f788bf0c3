class Concert {
  final String concert_name;
  final DateTime concert_date;
  final String? id;

  Concert({
    this.id,
    required this.concert_name,
    required this.concert_date,
  });

  factory Concert.fromMap(Map<String, dynamic> map, {String? id}) {
    return Concert(
      id: id ?? map['id'] as String?,
      concert_name: map['concert_name'] as String,
      concert_date: map['concert_date'] as DateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'concert_name': concert_name,
      'concert_date': concert_date,
    };
  }

  Concert copyWith({
    String? id,
    String? concert_name,
    DateTime? concert_date,
  }) {
    return Concert(
      id: id ?? this.id,
      concert_name: concert_name ?? this.concert_name,
      concert_date: concert_date ?? this.concert_date,
    );
  }

  @override
  String toString() {
    return 'Concert(concert_name: ${concert_name}, concert_date: ${concert_date})';
  }
}
