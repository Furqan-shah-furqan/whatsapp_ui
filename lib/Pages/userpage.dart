import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 10, 31),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 14, 36),

        // title: Text('12'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.asset(
                      'Images/image7.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  0302-2639498',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      '  Last-seen Yesterday at 07:pm',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.videocam_outlined,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.add_ic_call_outlined, color: Colors.white),
                ),
                Icon(Icons.more_vert_rounded, color: Colors.white),
              ],
            )
          ],
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey, // Change color for your desired border color
            width: 0.2, // Adjust width for border thickness
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 28, 34, 46),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'June,17 2024',
                      style: TextStyle(color: Colors.grey[400]),
                    )),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 34, 46),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline_rounded,
                            size: 12,
                            color: Colors.amber[400],
                          ),
                          Text(
                            '  Messeges and calls are end-to-end encrypted,No',
                            style: TextStyle(color: Colors.amber[400]),
                          ),
                        ],
                      ),
                      Text('one outside of this chat,not even Whatsapp,can',
                          style: TextStyle(color: Colors.amber[400])),
                      Text('read or listen to them,tap for more info',
                          style: TextStyle(color: Colors.amber[400])),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ), // Optional search icon
                          hintText: "Messege",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 12.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                24.0), // Set border radius
                            borderSide: const BorderSide(
                                color: Colors.grey), // Optional border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                24.0), // Set border radius
                            borderSide: const BorderSide(
                                color: Colors
                                    .blue), // Optional focused border color
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 0, 255, 132)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic_none,
                          size: 35,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
