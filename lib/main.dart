import 'package:bloghome/textmap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlogHome(),
    ),
  );
}

class BlogHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.file_open_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_outline,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person_outline,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.settings_outlined,
              ),
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: const Icon(
            Icons.category,
            color: Colors.black,
          ),
          title: const Text(
            'Category',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: const PreferredSize(
            preferredSize: Size(0, 40),
            child: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.black,
              tabs: [
                Text('For You'),
                Text('Design'),
                Text('Beauty'),
                Text('Education'),
                Text('Entertainment'),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: textinside.length,
            itemBuilder: (BuildContext, int) {
              Map data = textinside[int];
              return Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      color: Colors.cyan,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://static.vecteezy.com/system/resources/previews/002/388/529/original/happy-cartoon-character-surfing-at-sea-vector.jpg'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data['heading'],
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    data['subheading'],
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 150,
                                      ),
                                      CircleAvatar(
                                        radius: 13,
                                        backgroundColor: Colors.purple,
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'Jonhy Vinno',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text('4 Min Read')
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
