import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("Profile"),
      ),
      body: _buildProfileViewBody(),
    );
  }

  Widget _buildProfileViewBody() {
    return SafeArea(
      child: ListView(
        children: [],
      ),
    );
  }
}
