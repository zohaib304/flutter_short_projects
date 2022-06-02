import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
    required this.review,
    required this.likes,
    required this.comments,
    required this.time,
  }) : super(key: key);

  final int id;
  final String name;
  final String image;
  final String review;
  final int likes;
  final int comments;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff353A50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: SizedBox(
        height: 222,
        width: double.infinity,
        // decoration: const BoxDecoration(
        //     // borderRadius: BorderRadius.circular(15.0),
        //     image: DecorationImage( image: AssetImage('assets/image.jpeg'))),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ListTile(
                //   leading: Image.asset('assets/barber.jpg'),
                //   title: const Text('Don Joe'),
                //   subtitle: const Text('1 hour ago'),
                //   trailing: const Icon(Icons.keyboard_arrow_down),
                // ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 37,
                        width: 37,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover)),
                        // TODO: change to BoxFit.fill of cover not works
                      ),
                    ),
                    Column(
                      children: [
                        Text(name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16)),
                        Text(time,
                            style: const TextStyle(
                                color: Color(0xff757887),
                                fontWeight: FontWeight.normal,
                                fontSize: 16)),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 25,
                    )
                    // const Text ('Your success and happiness lies in you ', style: TextStyle(color: Color(0xff757887) ,fontWeight: FontWeight.normal, fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                  child: Text(review,
                      style: const TextStyle(
                        color: Color(0xff757887),
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      )),
                ),
                const Divider(
                  color: Color(0xff757887),
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 25,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(likes.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff757887))),
                      ),
                      const Icon(
                        Icons.message_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(comments.toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff757887))),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
// }
