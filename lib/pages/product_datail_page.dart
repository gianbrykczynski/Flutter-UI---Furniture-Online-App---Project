import 'package:app_store/constant/data.dart';
import 'package:app_store/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProductDatailPage extends StatefulWidget {
  final int id;
  final String name;
  final String img;
  final String code;
  final String pPrice;
  final String pPromotionPrice;

  ProductDatailPage({
    Key key,
    this.id,
    this.name,
    this.img,
    this.code,
    this.pPrice,
    this.pPromotionPrice,
  }) : super(key: key);

  @override
  _ProductDatailPageState createState() => _ProductDatailPageState();
}

class _ProductDatailPageState extends State<ProductDatailPage> {
  int qtd = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            SizedBox(height: 20),
            Hero(
              tag: widget.img.toString(),
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.img), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Nome:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Código:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    widget.code,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Preço:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 15),
                  Row(
                    children: <Widget>[
                      Text(
                        widget.pPromotionPrice + ' ' 'reais',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.pPrice + ' ' 'reais',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: warning,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Cores:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: Wrap(
                      children: List.generate(
                        colors.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: colors[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Qtd:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      if (qtd > 1) {
                        setState(() {
                          qtd = --qtd;
                        });
                      }
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: primary),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        LineIcons.minus,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    qtd.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      setState(() {
                        qtd = ++qtd;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: primary),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        LineIcons.plus,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                //Function add cart here
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      'Finalizar Compra',
                      style: TextStyle(color: white, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
