class User {
  final String name;
  final String college;
  final int year;
  final String email;
  final String? id;

  User({
    this.id,
    required this.name,
    required this.college,
    required this.year,
    required this.email,
  });

  factory User.fromMap(Map<String, dynamic> map, {String? id}) {
    return User(
      id: id ?? map['id'] as String?,
      name: map['name'] as String,
      college: map['college'] as String,
      year: map['year'] as int,
      email: map['email'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'college': college,
      'year': year,
      'email': email,
    };
  }

  User copyWith({
    String? id,
    String? name,
    String? college,
    int? year,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      college: college ?? this.college,
      year: year ?? this.year,
      email: email ?? this.email,
    );
  }

  @override
  String toString() {
    return 'User(name: ${name}, college: ${college}, year: ${year}, email: ${email})';
  }
}
