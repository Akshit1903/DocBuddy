import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormScreen extends StatefulWidget {
  static const routeName = "/form";
  String appBarTitle;
  FormScreen(this.appBarTitle);
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _form = GlobalKey<FormState>();
  int interestIndex = 0, paymentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              Text(
                "Document Issued on ${DateFormat.yMd().add_jm().format(DateTime.now())}",
                textAlign: TextAlign.center,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Borrower Details:",
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Street Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'City'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'State'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Zip Code'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Lender Details:"),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Street Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'City'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'State'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Zip Code'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("HEREINAFTER, Parties agree to the following:"),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Loan Amount'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Interest:"),
              FittedBox(
                child: DropdownButton(
                  onChanged: (int? val) {
                    setState(() {
                      interestIndex = val!;
                    });
                  },
                  value: interestIndex,
                  items: [
                    DropdownMenuItem(
                      child: const Text("Not bear interest"),
                      value: 0,
                      onTap: () {
                        interestIndex = 0;
                      },
                    ),
                    DropdownMenuItem(
                      child: const Text(
                          "Bear interest at a rate of 12.5% compounded annually"),
                      value: 1,
                      onTap: () {
                        interestIndex = 1;
                      },
                    ),
                  ],
                ),
              ),
              const Text("Payment:"),
              FittedBox(
                child: DropdownButton(
                  onChanged: (int? val) {
                    setState(() {
                      paymentIndex = val!;
                    });
                  },
                  value: paymentIndex,
                  items: [
                    DropdownMenuItem(
                      child: const Text(
                          "Weekly Payment to be paid every seven (7) days"),
                      value: 0,
                      onTap: () {
                        paymentIndex = 0;
                      },
                    ),
                    DropdownMenuItem(
                      child: const Text(
                          "Monthly Payment to be paid at eh end of each month."),
                      value: 1,
                      onTap: () {
                        paymentIndex = 1;
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
