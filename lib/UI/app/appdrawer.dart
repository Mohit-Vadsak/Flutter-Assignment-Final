import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class AppDrawer extends StatelessWidget {
  Color mainColor = Color(0xffC62828);
  Color mainColor1 = Color(0xffD32F2F);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // padding: EdgeInsets.only(top: 40.0, left: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 40.0, left: 27.0),
                child: Text(
                  "Gmail",
                  style: TextStyle(
                    color: mainColor1,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Divider(
              indent: 0.0,
              color: Colors.black12,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.inbox),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Inbox",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
              padding: EdgeInsets.only(left: 28.0),
              child: Text(
                "ALL LABELS",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.star_border),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Starred",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.schedule),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Snoozed",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(OMIcons.labelImportant),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Important",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Sent",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(OMIcons.insertDriveFile),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Drafts",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(OMIcons.report),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Spam",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 18.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                ),
                Text(
                  "Bin",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
