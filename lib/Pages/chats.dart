import 'package:flutter/material.dart';
import 'package:watsapp_ui/Pages/userpage.dart';

// ignore: must_be_immutable
class MyChats extends StatelessWidget {
  MyChats({
    super.key,
  });

  var imagePaths = [
    {'imageUrl': 'Images/image.jpg'},
    {'imageUrl': 'Images/image1.jpg'},
    {'imageUrl': 'Images/image2.jpg'},
    {'imageUrl': 'Images/image3.jpg'},
    {'imageUrl': 'Images/image4.jpg'},
    {'imageUrl': 'Images/image5.jpg'},
    {'imageUrl': 'Images/image6.jpg'},
    {'imageUrl': 'Images/image7.jpg'},
  ];
  var name = [
    'Furqan',
    'Furqan1',
    'Furqan2',
    'Furqan3',
    'Furqan4',
    'Furqan5',
    'Furqan6',
    'Furqan7',
    'Furqan8',
  ];
  var lastSeen = [
    '..',
    '2 min',
    'OK',
    'sahi',
    'Voice call',
    'no problem',
    'sahi da za',
    'SRO: Notification ',
    'The application',
  ];
  var day = [
    '5:06 PM',
    '12:50 PM',
    '10:55 PM',
    'Yesterday',
    'Yesterday',
    '6/10/24',
    'Yesterday',
    '2/15/24',
    '5/17/24',
    '12/24/23',
    '12/5/23',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: FloatingActionButton(
              heroTag: 'fab_route_a',
              backgroundColor: const Color.fromARGB(255, 39, 38, 38),
              onPressed: () {},
              mini: true,
              child:  const Icon(
                Icons.circle_outlined,
                size: 25,
                color: Color.fromARGB(255, 0, 17, 255),
              ),
            ),
          ),
          FloatingActionButton(
            heroTag: 'fab_route_b',
            backgroundColor: const Color.fromARGB(255, 65, 182, 69),
            onPressed: () {},
            child: const Icon(
              Icons.chat_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 3, 15, 38),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('WhatsApp',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Icon(
                        Icons.more_vert_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(25)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.circle_outlined,
                        color: Color.fromARGB(255, 0, 17, 255),
                        size: 30,
                      ),
                    ),
                    Text(
                      'Ask Meta AI or Search',
                      style: TextStyle(
                          color: Color.fromARGB(255, 177, 175, 175),
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserPage(),
                            ));
                      },
                      child: ListTile(
                        tileColor: const Color.fromARGB(255, 3, 15, 38),
                        leading: Padding(
                          padding: EdgeInsets.zero,
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  content: Image.asset(
                                    fit: BoxFit.cover,
                                    imagePaths[index]['imageUrl']!,
                                  ),
                                  actions: [
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: SafeArea(
                                        bottom: false,
                                        child:
                                            BottomNavigationBar(items: const [
                                          BottomNavigationBarItem(
                                              icon: Icon(
                                                Icons.chat_sharp,
                                              ),
                                              label: 'chats'),
                                          BottomNavigationBarItem(
                                              icon: Icon(
                                                Icons.system_update_tv_sharp,
                                              ),
                                              label: 'chats'),
                                        ]),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(shape: BoxShape.circle),
                              child: ClipOval(
                                child: Image.asset(
                                  imagePaths[index]['imageUrl']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  name[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  day[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                ),
                                Text(
                                  lastSeen[index],
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
