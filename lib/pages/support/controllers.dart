import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:convert' show json;

class FAQItem {
  final String header;
  final String answer;
  final String avatar;
  final String author;
  final String timestamp;

  FAQItem({
    required this.header,
    required this.answer,
    required this.avatar,
    required this.author,
    required this.timestamp,
  });
}


class SupportScreenController extends GetxController {
  TextEditingController searchController = TextEditingController();
  List<FAQItem> items = [];
  List<FAQItem> filteredItems = [];

  @override
  void onInit() {
    super.onInit();
    loadFAQItems(); // Load FAQ items when the controller initializes
    searchController.addListener(onSearchChanged);
  }

  Future<void> loadFAQItems() async {
    // Simulating the API call with a delay
    await Future.delayed(Duration(seconds: 2));

    try {
      String jsonContent = await rootBundle.loadString('assets/faq_data.json');
      List<dynamic> jsonItems = json.decode(jsonContent);

      items = jsonItems
          .map((jsonItem) => FAQItem(
        header: jsonItem['header'],
        answer: jsonItem['answer'],
        avatar: jsonItem['avatar'],
        author: jsonItem['author'],
        timestamp: jsonItem['timestamp'],
      ))
          .toList();

      filteredItems = items;
      update(); // Notify GetX that the state has changed
    } catch (error) {
      print("Error loading JSON data: $error");
    }
  }



  void onSearchChanged() {
    String searchTerm = searchController.text.toLowerCase();
    if (searchTerm.isEmpty) {
      filteredItems = items;
    } else {
      filteredItems = items
          .where((item) =>
      item.header.toLowerCase().contains(searchTerm) ||
          item.answer.toLowerCase().contains(searchTerm))
          .toList();
    }
    update(); // Notify GetX that the state has changed
  }
}
