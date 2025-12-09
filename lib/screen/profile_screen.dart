import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff224271),
        title: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Image(
                  image: NetworkImage(
                    'https://th.bing.com/th/id/R.35528f1035f1e9262b79c52441c9d4d2?rik=rgTDXDS4xHHJoA&pid=ImgRaw&r=0',
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Ahmed abd elmaksoud',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Softwere Engineer',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'EGYPT',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(26),
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xffD3EDFA),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 20),
                Text('A7medabdelmaksoud@gmail.com'),
              ],
            ),
          ),
          Divider(thickness: 1, indent: 15, endIndent: 25),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.lightBlue)],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Account Settings'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.lightBlue)],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.notification_add),
                    title: Text(' Notifications'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
