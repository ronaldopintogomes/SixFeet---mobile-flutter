import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sobre',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            Text(
              'Membros',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 5,
              color: Colors.white,
            ),
            Text(
              'Ana Ruth Miranda Magalhães',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'Ericton Felicidade de Brito',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'Hiparco Leitão Vieira',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'Ronaldo Pinto Gomes',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Divider(
              height: 10,
              color: Colors.grey,
            ),
            Image.asset('lib/visao/imagem/logouninorteser.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.school),
                Text('Rua 10 de julho, 873 - Centro-Manaus-AM'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.phone),
                Text('3212-5000'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.language),
                GestureDetector(
                  child: Text('www.uninorte.com.br'),
                  onTap: () => _link('http://www.uninorte.com.br'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _link(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw 'Página não está acessivel!';
    }
  }
}
