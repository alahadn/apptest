import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listviewbuildersaparate extends StatefulWidget {
  const listviewbuildersaparate({super.key});

  @override
  State<listviewbuildersaparate> createState() => _listviewbuildersaparateState();
}

class _listviewbuildersaparateState extends State<listviewbuildersaparate> {
   List<Data> cnt = [
    Data(
      colors: Colors.red,
      title: "Flutter",
      image: "/images/contact1.jpg",
    ),
    Data(
        colors: Color.fromARGB(144, 31, 136, 4),
        title: "java",
        image: "/images/contact1.jpg"),
    Data(
        colors: Colors.blue,
        title: "dart", 
        image: "/images/contact2.png"),
    Data(
        colors: const Color.fromARGB(255, 71, 57, 56),
        title: "python",
        image: "/images/contact3.jpg"),
    Data(
        colors: const Color.fromARGB(255, 117, 69, 66),
        title: "c",
        image: "/images/contact1.jpg",
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
          return Center(
            child: Container(
              height: 100,
              color: Colors.blue,
              child: ListTile(
                
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    cnt[index].image,
                  ),
                  radius: 20,
                  backgroundColor: Colors.indigo,
                ),
                title: Text(
                  cnt[index].title,
                ),
                subtitle: Text(
                  cnt[index].title,
                ),
              ),
            ),
          );

      }, separatorBuilder: (context,index){
        return Divider(    //divider,container,text eethum idaam 
          thickness: 0,
        );

      }, itemCount: 5
      ),
    );
  }
}
class Data {
  String title;
  Color colors;
  String image;
  Data({required this.colors, required this.title, required this.image});
}
