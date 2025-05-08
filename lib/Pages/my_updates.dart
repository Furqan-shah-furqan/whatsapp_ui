import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyUpdates extends StatelessWidget {
  MyUpdates({super.key});

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

  var imagePaths1 = [
    {'imageUrl': 'Images/op.jpg'},
    {'imageUrl': 'Images/op1.jpg'},
    {'imageUrl': 'Images/op2.jpg'},
    {'imageUrl': 'Images/op3.jpg'},
    {'imageUrl': 'Images/op4.jpg'},
    {'imageUrl': 'Images/op5.jpg'},
    {'imageUrl': 'Images/op6.jpg'},
    {'imageUrl': 'Images/op7.jpg'},
  ];
  var name = [
    'Furqan 0',
    'Furqan 1',
    'Furqan 2',
    'Furqan 3',
    'Furqan 4',
    'Furqan 5',
    'Furqan 6',
    'Furqan 7',
    'Furqan 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 15, 38),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Updates',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Icon(
                            Icons.search_sharp,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 185,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imagePaths.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                        imagePaths[index]['imageUrl']!,
                                        fit: BoxFit
                                            .cover, // Adjust fit as needed
                                        width: 90,
                                        height: 140),
                                  ),

                                  // Foreground image positioned at specific coordinates
                                  Positioned(
                                    top: 5.0, // Adjust position as needed
                                    left: 5.0, // Adjust position as needed
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.green, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(152)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(152),
                                        child: Image.asset(
                                          imagePaths1[index]['imageUrl']!,
                                          fit: BoxFit.cover,
                                          width: 40, // Adjust size as needed
                                          height: 40, // Adjust size as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Channels',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      ),
                      title: Padding(
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Everyday Pakistan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Yesterday',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.image,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      'Young Boys playing in Village...',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 18,
                                    width: 18,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green),
                                    child: const Center(
                                        child: Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ))),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find channels',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        Row(
                          children: [
                            Text(
                              'See all',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 14),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                                size: 13,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 220,
                      child: Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                    maxHeight: 170), // Set the max height
                                child: Row(
                                  children: List.generate(
                                      imagePaths.length,
                                      (index) => Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 120,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                      width: 1,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              75,
                                                              75,
                                                              75))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Stack(children: [
                                                      ClipOval(
                                                        child: Image.asset(
                                                          imagePaths[index]
                                                              ['imageUrl']!,
                                                          width: 70,
                                                          height: 70,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Positioned(
                                                          bottom: 2,
                                                          right: 2,
                                                          child: Container(
                                                            height: 25,
                                                            width: 25,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    width: 5,
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        3,
                                                                        15,
                                                                        38)),
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .green),
                                                            child: const Center(
                                                              child: Icon(
                                                                Icons.check,
                                                                color: Colors
                                                                    .white,
                                                                size: 10,
                                                              ),
                                                            ),
                                                          ))
                                                    ]),
                                                    Text(
                                                      name[index],
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    SizedBox(
                                                      width: 90,
                                                      height: 25,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                            'Follow'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
