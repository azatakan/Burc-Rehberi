import 'package:flutter/material.dart';
import 'package:flutter_burc_rehber/burc_detay.dart';
import 'package:flutter_burc_rehber/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenecekBurc;
  const BurcItem({required this.ListelenecekBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: ListelenecekBurc),
                ),
              );
            },
            leading: Image.asset(
              "images/" + ListelenecekBurc.burcKucukResim,
            ),
            title: Text(
              ListelenecekBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              ListelenecekBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
