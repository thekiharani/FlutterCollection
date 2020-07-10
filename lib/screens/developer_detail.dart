import 'package:flutter/material.dart';
import 'package:maishabeta/models/dev_model.dart';

class DeveloperDetail extends StatelessWidget {
  final Developer developer;

  const DeveloperDetail({@required this.developer,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(developer.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Name'),
                  subtitle: Text(developer.name),
                ),
                ListTile(
                  title: Text('ID'),
                  subtitle: Text("${developer.id}"),
                ),
                ListTile(
                  title: Text('URL'),
                  subtitle: Text(developer.url),
                ),
                ListTile(
                  title: Text('Languages'),
                  subtitle: Text("${developer.languages}"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
