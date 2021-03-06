import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_piece_card/screen/home.dart';

class Introdure extends StatefulWidget {
  const Introdure({Key? key}) : super(key: key);

  @override
  _IntrodureState createState() => _IntrodureState();
}

class _IntrodureState extends State<Introdure> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 30.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF64B5F6),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                    colors: <Color>[
                  Color(0xFFFFE0B2),
                  Color(0xFFFFCC80),
                  Color(0xFFFFB74D),
                  Color(0xFFFF9800)
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                          },
                          child: Text('B??? qua',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0))),
                    ),
                    Container(
                      height: 600,
                      child: PageView(
                          physics: ClampingScrollPhysics(),
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                          'images/onepiece.png'),
                                      height: 300.0,
                                      width: 300.0,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  Text(
                                    'ONE PIECE',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 15.0),
                                  Text(
                                    'T???ng ???????c xu???t b???n t???i Vi???t Nam d?????i t??n g???i ?????o H???i T???c l?? b??? manga d??nh cho l???a tu???i thi???u ni??n, ???????c ????ng ?????nh k?? tr??n t???p ch?? Weekly Sh??nen Jump, ra m???t l???n ?????u tr??n ???n b???n s??? 34 v??o ng??y 19 th??ng 7 n??m 1997.',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Image(
                                      image: AssetImage('images/oda.png'),
                                      height: 300.0,
                                      width: 300.0,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  Text(
                                    'Oda Eiichir??',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 15.0),
                                  Text(
                                    'L?? m???t h???a s?? truy???n tranh ng?????i Nh???t B???n, hi???n ??ang s??ng t??c cho nh?? xu???t b???n Sh??eisha. ??ng l?? t??c gi??? c???a b??? truy???n n???i ti???ng th??? gi???i One Piece.',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                          'images/onepiece01.png'),
                                      height: 300.0,
                                      width: 300.0,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  Text(
                                    'S?? l?????c ONE PIECE',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 15.0),
                                  Text(
                                    'K??? v??? cu???c h??nh tr??nh c???a Monkey D. Luffy - thuy???n tr?????ng c???a b??ng h???i t???c M?? R??m v?? c??c ?????ng ?????i c???a c???u. Luffy t??m ki???m v??ng bi???n b?? ???n n??i c???t gi??? kho b??u l???n nh???t th??? gi???i One Piece, v???i m???c ti??u tr??? th??nh T??n Vua H???i T???c.',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                    _currentPage != _numPages - 1
                        ? Expanded(
                            child: Align(
                              alignment: FractionalOffset.bottomRight,
                              child: TextButton(
                                onPressed: () {
                                  _pageController.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease);
                                },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Ti???p',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                        size: 30.0,
                                      )
                                    ]),
                              ),
                            ),
                          )
                        : Text(''),
                  ]),
            )),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 80.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'B???t ?????u',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[900]),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
