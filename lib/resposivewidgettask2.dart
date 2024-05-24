import 'package:flutter/material.dart';

class task2 extends StatefulWidget {
  const task2({super.key});

  @override
  State<task2> createState() => _task2State();
}

class _task2State extends State<task2> {
  List<Model> images = [
    Model(image: "/images/contact3.jpg", productname: "jinto", price: 100.00),
    Model(image: "/images/contact2.png", productname: "arjun", price: 152.00),

    Model(image: "/images/contact2.png", productname: "jinto", price: 52.00),
    Model(image: "/images/contact3.jpg", productname: "jinto", price: 100.00),
    Model(image: "/images/contact1.jpg", productname: "jinto", price: 100.00),
    Model(image: "/images/contact3.jpg", productname: "jinto", price: 100.00),

    // "/images/contact1.jpg",
    // "/images/contact2.png",
    // "/images/contact3.jpg",
    // "/images/contact1.jpg",
  ];
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 510) {
            return Scaffold(
              
              body: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          // CircleAvatar(
                          //   radius: 20,
                          //   child: Image.asset(

                          //     images[index].image,
                          //     height: 200,

                          //   ),
                          // ),
                          Container(
                            height: 200,
                            width: 200,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      images[index].image,
                                    ),
                                    fit: BoxFit.cover),

                                color: Colors.black,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                            ),
                          ),
                          Text(images[index].productname),
                          Text(images[index].price.toString()),
                        ],
                      ),
                    );
                  }),
              appBar: AppBar(),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text(
                        'Drawer Header',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.message),
                      title: const Text('Messages'),
                      onTap: () {
                        setState(() {
                          selectedPage = 'Messages';
                        });
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.account_circle),
                      title: const Text('Profile'),
                      onTap: () {
                        setState(() {
                          selectedPage = 'Profile';
                        });
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () {
                        setState(() {
                          selectedPage = 'Settings';
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          } else if (constraints.maxWidth < 810) {
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: [
                              // CircleAvatar(
                              //   radius: 20,
                              //   child: Image.asset(
                  
                              //     images[index].image,
                              //     height: 200,
                  
                              //   ),
                              // ),
                              Container(
                                height: 200,
                                width: 200,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          images[index].image,
                                        ),
                                        fit: BoxFit.cover),
                                        
                                    color: Colors.black,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  ),
                                ),
                              ),
                              Text(images[index].productname),
                              Text(images[index].price.toString()),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.orange,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 0,
                ),
              ],
            );
          }
          ;
        },
      ),
    );
  }
}

class Model {
  String image;
  String productname;
  double price;
  Model({required this.image, required this.productname, required this.price});
}
