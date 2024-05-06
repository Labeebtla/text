import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget profileHeaderWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff74EDED),
                backgroundImage: NetworkImage(""),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 0.4,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "1.5M",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "234",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Rayan moon",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.4,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Photographer",
            style: TextStyle(
              letterSpacing: 0.4,
            ),
          ),
          Text(
            "*you are beautifull",
            style: TextStyle(
              letterSpacing: 0.4,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              OutlinedButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text("Edit Profile",
                      style: TextStyle(color: Colors.black)),
                ),
                style: OutlinedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(0, 10),
                    side: BorderSide()),
                onPressed: () {},
              ),
              OutlinedButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text("wallet", style: TextStyle(color: Colors.black)),
                ),
                style: OutlinedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(0, 30),
                    side: BorderSide()),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  );
}
