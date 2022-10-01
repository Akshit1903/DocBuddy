import 'package:doc_buddy/screens/form_screen.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  List<String> docs = [
    "Loan Agreement",
    "Sanction Letter",
    "Welcome Letter",
    "Statement of Accounts",
    "No Objection Certificate",
    "Legal Notices"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TVS DocBuddy",
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: docs.length,
        itemBuilder: (ctx, i) {
          return Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, FormScreen.routeName),
              child: GridTile(
                child: Center(
                  child: Text(docs[i]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
