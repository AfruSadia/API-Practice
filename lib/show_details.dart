import 'package:flutter/material.dart';
import 'package:nestaed_json/Models/nested_model.dart';

class Details extends StatefulWidget {
  Nested_model value;
  Details(this.value);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New page"),
      ),
      body: ListView.builder(
          itemCount: widget.value.children!.length,
          itemBuilder: (context, index) {
            return Card(
              child: Text(widget.value.children![index].name.toString()),
            );
          }),
    );
  }
}
