import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final String username;
  final String userImage;
  final String postImage;
  final String caption;

  PostWidget({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.caption,
  });

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isFavorite = false;
  bool isLiked = false;
  bool isShared = false;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.userImage),
          ),
          title: Text(widget.username, style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add action for the more button if needed
            },
          ),
        ),
        Image.network(widget.postImage),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
              SizedBox(width: 16.0),
              IconButton(
                icon: Icon(
                  isLiked ? Icons.chat_bubble : Icons.chat_bubble_outline,
                  color: isLiked ? Colors.blue : null,
                ),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
              SizedBox(width: 16.0),
              IconButton(
                icon: Icon(
                  isShared ? Icons.send : Icons.send_outlined,
                  color: isShared ? Colors.green : null,
                ),
                onPressed: () {
                  setState(() {
                    isShared = !isShared;
                  });
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' ${widget.caption}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
