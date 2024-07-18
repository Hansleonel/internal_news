import 'package:flutter/material.dart';

class InternalVerticalCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String sourceName;
  final String sourceLogo;
  final String timeAgo;
  final String views;
  final String comments;
  final VoidCallback? onShare;
  final VoidCallback? onComment;
  final VoidCallback? otherOptions;

  const InternalVerticalCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.sourceName,
      required this.sourceLogo,
      required this.timeAgo,
      required this.views,
      required this.comments,
      required this.onShare,
      required this.onComment,
      required this.otherOptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            sourceLogo,
                          ),
                          radius: 12,
                        ),
                        SizedBox(width: 8),
                        Text(
                          sourceName,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child: Image.network(
                imageUrl, // Reemplaza con la URL real
                height: 102,
                width: 102,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16)
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 16),
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
                onTap: otherOptions),
            SizedBox(width: 16)
          ],
        ),
        SizedBox(height: 8)
      ],
    );
  }
}
