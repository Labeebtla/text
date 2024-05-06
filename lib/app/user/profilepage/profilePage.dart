import 'package:flutter/material.dart';
import 'package:machine_test/app/user/profilepage/widgets/photos.dart';
import 'package:machine_test/app/user/profilepage/widgets/profilheader.dart';
import 'package:machine_test/app/user/profilepage/widgets/videos.dart';

class ProfileBaseScreen extends StatefulWidget {
  @override
  _ProfileBaseScreenState createState() => _ProfileBaseScreenState();
}

class _ProfileBaseScreenState extends State<ProfileBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(),
          child: AppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.forward,
                  color: Colors.black,
                ),
                onPressed: () => print("Add"),
              ),
              SizedBox(
                width: 300,
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => print("Add"),
              )
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      text: 'videos',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Gallery(),
                    videos(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
