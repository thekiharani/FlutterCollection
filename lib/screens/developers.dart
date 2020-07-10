import 'package:flutter/material.dart';
import 'package:maishabeta/screens/developer_detail.dart';
import 'package:maishabeta/http_service.dart';
import 'package:maishabeta/models/dev_model.dart';

class DevelopersPage extends StatelessWidget {

  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developers'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: httpService.getDevs(),
        builder: (BuildContext context, AsyncSnapshot<List<Developer>> snapshot) {
          if (snapshot.hasData) {
            List<Developer> developers = snapshot.data;
            return ListView(
              children: developers.map((Developer dev) => ListTile(
                title: Text(dev.name),
                subtitle: Text(dev.url),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DeveloperDetail(developer: dev,))
                ),
              )).toList(),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
