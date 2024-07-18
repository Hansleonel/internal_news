import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewTrendingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String source;
  final String timeAgo;
  final String views;
  final String comments;
  final VoidCallback onShare;
  final VoidCallback otherOptions;
  final VoidCallback newsInternalCardAction;
  final VoidCallback onComment;

  const NewTrendingCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.source,
    required this.timeAgo,
    required this.views,
    required this.comments,
    required this.onShare,
    required this.otherOptions,
    required this.newsInternalCardAction,
    required this.onComment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: newsInternalCardAction,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        GestureDetector(
          onTap: newsInternalCardAction,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png', // Replace with actual image URL
                ),
                radius: 12,
              ),
              const SizedBox(width: 8),
              Text(
                source,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 8),
            Text(
              timeAgo,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 16),
            Icon(Icons.visibility_outlined, size: 12, color: Colors.grey[600]),
            const SizedBox(width: 4),
            Text(
              views,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: onComment,
              child: Icon(
                Icons.comment_outlined,
                size: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 4),
            Text(
              comments,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            const Spacer(),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                size: 18,
                color: Colors.black87,
              ),
              onPressed: onShare,
            ),
            GestureDetector(
                child: Icon(Icons.more_vert, color: Colors.black87),
                onTap: newsInternalCardAction),
          ],
        ),
      ],
    );
  }
}
