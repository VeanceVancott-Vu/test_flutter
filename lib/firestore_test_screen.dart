import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

class FirestoreTestScreen extends StatefulWidget {
  const FirestoreTestScreen({super.key});

  @override
  State<FirestoreTestScreen> createState() => _FirestoreTestScreenState();
}

class _FirestoreTestScreenState extends State<FirestoreTestScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String _readData = 'No data read yet.';

  // Function to write data to Firestore
  Future<void> _writeData() async {
    try {
      await _firestore.collection('test_collection').doc('test_document').set({
        'message': 'Hello from Flutter!',
        'timestamp': FieldValue.serverTimestamp(),
      });
      if (mounted) { // Check if the widget is still in the tree
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data written to Firestore!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error writing data: $e')),
        );
      }
    }
  }

  // Function to read data from Firestore
  Future<void> _readDataFromFirestore() async {
    try {
      DocumentSnapshot doc = await _firestore.collection('test_collection').doc('test_document').get();
      if (mounted) {
        if (doc.exists) {
          setState(() {
            _readData = 'Message: "${doc['message']}" (at ${doc['timestamp']?.toDate()})';
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Data read from Firestore!')),
          );
        } else {
          setState(() {
            _readData = 'Document does not exist.';
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Document not found.')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error reading data: $e')),
        );
        setState(() {
          _readData = 'Error: $e';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firestore Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _writeData,
              child: const Text('Write Test Data to Firestore'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _readDataFromFirestore,
              child: const Text('Read Test Data from Firestore'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _readData,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back if this is pushed onto a stack
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}