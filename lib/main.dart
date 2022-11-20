// ignore_for_file: avoid_print, unused_local_variable
import 'package:flutter/material.dart';
import 'class.dart';

// Dart programming language
String mainpage = "Trang chủ\n";
String introdution = "Giới thiệu\n";
String news = " Tin tức\n";
String software = "Phần mềm\n";
String design = "Thiết kế\n";
String science = "Khoa học\n";
String contact = "Liên hệ\n";
List<int> array = [1, 2, 3, 4];
int number = 30;
int number2 = number - 10;
var class1 = Construction("Xem tất cả phần mềm");
var hello = Destruction(name: 'Xem tất cả khóa học');
List<String> stringNum = array.map((e) {
  return 'Value = $e';
}).toList();
//curd
List<Construction> menu = <Construction>[
  Construction("Phòng 901,nhà Thí Nghiệm,Trường Đại Học\n"),
  Construction("Xây Dựng,55 Giải Phóng\n"),
  Construction("Xây Dựng,55 Giải Phóng")
];
final List<Destruction> menu2 = <Destruction>[
  Destruction(name: "19051890"),
  Destruction(name: "02091969")
];
// final List<Destruction> menu2 = <Destruction>[
//   Destruction(name: "19051890"),
//   Destruction(name: "02091969")
// ];

// menu2.add(Destruction(name: "20112022")); // error
//both of const and final can not change the value but final can add more value  and const can not

var header = '$mainpage $introdution $news $software $design $science $contact';

void main() {
  print(number);
  print(number2);
  for (var i = 0; i < array.length; i++) {
    print(i);
  }
  print("Bai Tap 2");
  for (var index in array) {
    print(index + 4);
  }
  print(stringNum);
  print("Class");
  print(class1.toString());
  print(hello.toString());
  class1.console();
  // list class
  print(menu[0]);
  print(menu2[0].name);
  print(menu2);
  menu2.add(Destruction(name: "20112022"));
  print(menu2);
  var menu2List = menu2.where((element) => element.name == "20112022").toList();
  print(menu2List);
  const hangso = 0;
  // ignore: prefer_collection_literals
  Map<String, dynamic> accounts = Map();
  accounts['user'] = "tat424517@gmail.com";
  accounts['password'] = "tadinhthanh@@123";
  print(accounts);

  runApp(MyAppFull());
}

/*setState StatelessWidget StatefulWidget*/
class MyAppLess extends StatelessWidget {
  const MyAppLess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "XdSoft",
        home: Scaffold(
          body: Center(
              child: Text(
            header,
            style: const TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w300),
            textDirection: TextDirection.ltr,
          )),
        ));
  }
}

// ignore: must_be_immutable
class MyAppFull extends StatefulWidget {
  String introdute = "Giới thiệu";
  String text1 = "Học viện CNTT SPEC";
  String text2 = "Giảng viên";
  String text3 = "Hướng dẫn mua khóa học";

  MyAppFull({super.key});
  //command : createState
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

  //command : build
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "XdSoft",
        home: Scaffold(
          body: Center(
              child: Text(
            header,
            style: const TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w300),
            textDirection: TextDirection.ltr,
          )),
        ));
  }
}

class MyAppState extends State<MyAppFull> {
  String email = '';
  final emailEdit = TextEditingController();

  //command : initstate
  @override
  void initState() {
    super.initState();
    print("Run init");
  }

  //command : dispose
  @override
  void dispose() {
    //after the screen close
    super.dispose();
    print("run dispose");
  }

  //command : build
  @override
  Widget build(BuildContext context) {
    print("Run build");
    //after initstate ,run build
    return MaterialApp(
        title: "XdSoft",
        home: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // demo setState
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: TextField(
                    controller: emailEdit,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        labelText: "Nhập ..."),
                  )),
              // demo setState
              Text(
                email,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                widget.introdute,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                widget.text1,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                widget.text2,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                widget.text3,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              )
            ],
          )),
        ));
  }
}
/*SeyState StatelessWidget StatefulWidget*/

class ClassName {}
