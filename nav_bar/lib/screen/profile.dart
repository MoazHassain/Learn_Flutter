import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Profile",
      //   ),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 2,
            leading: Icon(
              Icons.menu,
            ),
            // actions: [
            //   Icon(Icons.menu),
            //   Icon(Icons.menu),
            // ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5Ie7jQEVL7HWhY6aNyI0AMIMyPjugcpeLew&usqp=CAU",
                fit: BoxFit.cover,
              ),
              title: Text(
                "FOXY",
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  height: 200,
                  color: Colors.blueGrey,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
