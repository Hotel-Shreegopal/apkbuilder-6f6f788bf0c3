import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/concert.dart';

class ConcertService {
  static final _collection = FirebaseFirestore.instance.collection('concerts');

  static Future<List<Concert>> getAll() async {
    final snapshot = await _collection.orderBy('concert_name').get();
    return snapshot.docs.map((doc) => Concert.fromMap(doc.data(), id: doc.id)).toList();
  }

  static Future<Concert?> getById(String id) async {
    final doc = await _collection.doc(id).get();
    if (!doc.exists) return null;
    return Concert.fromMap(doc.data()!, id: doc.id);
  }

  static Future<String> create(Concert item) async {
    final doc = await _collection.add(item.toMap());
    return doc.id;
  }

  static Future<void> update(String id, Concert item) async {
    await _collection.doc(id).update(item.toMap());
  }

  static Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
