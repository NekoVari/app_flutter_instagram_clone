import 'package:flutter/material.dart';
import 'package:app_flutter/widgets/postWidget.dart';

class HomePage extends StatelessWidget {
  // Sample list of posts
  final List<Post> posts = [
    Post(
      username: 'user1',
      userImage: 'https://via.placeholder.com/150',
      postImage: 'https://via.placeholder.com/600',
      caption: 'Beautiful day!',
    ),
    Post(
      username: 'user2',
      userImage: 'https://via.placeholder.com/150',
      postImage: 'https://via.placeholder.com/600',
      caption: 'Enjoying the beach!',
    ),
    Post(
      username: 'user3',
      userImage: 'https://via.placeholder.com/150',
      postImage: 'https://via.placeholder.com/600',
      caption: 'it\'s a beautiful day outside. birds are singing, flowers are blooming... on days like these, kids like you... Should be burning in hell.',
    ),
    Post(
      username: 'user4',
      userImage: 'https://via.placeholder.com/150',
      postImage: 'https://via.placeholder.com/600',
      caption: 'it\'s a beautiful day outside. birds are singing, flowers are blooming... on days like these, kids like you... Should be burning in hell.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong',
            fontSize: 32.0,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return PostWidget(
            username: post.username,
            userImage: post.userImage,
            postImage: post.postImage,
            caption: post.caption,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class Post {
  final String username;
  final String userImage;
  final String postImage;
  final String caption;

  Post({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.caption,
  });
}