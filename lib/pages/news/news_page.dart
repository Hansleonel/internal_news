import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';
import 'package:internal_news/widgets/internal_user_app_bar.dart';
import 'package:internal_news/widgets/new_trending_card.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: InternalUserAppBar(
        userName: 'Andrew Ainsley',
        onNotificationIconTap: () {
          print('notification');
        },
        welcomeMessage: 'Welcome back 👋',
        userAvatarUrlImage:
            'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TrendingSection(
              titleTrending: 'Trending',
              titleActionTrending: 'View All',
            ),
            NewsTrendingList(),
            const SizedBox(
              height: 8,
            ),
            const TrendingSection(
              titleTrending: 'Recent Stories',
              titleActionTrending: 'View All',
            ),
            FilterChips(),
            NewHorizontalCard(),
            NewHorizontalCard(),
            NewHorizontalCard(),
            // NewsHorizontalList(),
          ],
        ),
      ),
    );
  }
}

class TrendingSection extends StatelessWidget {
  final String titleTrending;
  final String titleActionTrending;
  const TrendingSection({
    super.key,
    required this.titleTrending,
    required this.titleActionTrending,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleTrending,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                titleActionTrending,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewsTrendingList extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'imageUrl':
          'https://video-images.vice.com/articles/6480a78e72277e0b529a99c5/lede/1686153158459-openai.jpeg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'source': 'CNN News',
      'timeAgo': '3 days ago',
      'views': '245.8K',
      'comments': '3.2K',
    },
    {
      'imageUrl':
          'https://video-images.vice.com/articles/6480a78e72277e0b529a99c5/lede/1686153158459-openai.jpeg',
      'title': 'Breaking News: Agreement Reached to Reshape the Nation',
      'source': 'USA Today',
      'timeAgo': '2 days ago',
      'views': '196.5K',
      'comments': '2.8K',
    },
    // Add more news items here
  ];

  NewsTrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          final newsItem = newsItems[index];
          return Container(
            width: 300,
            margin: const EdgeInsets.only(left: 16, top: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: NewTrendingCard(
              imageUrl: newsItem['imageUrl']!,
              title: newsItem['title']!,
              source: newsItem['source']!,
              timeAgo: newsItem['timeAgo']!,
              views: newsItem['views']!,
              comments: newsItem['comments']!,
              onShare: () {
                print('share');
              },
              onComment: () {
                print('comment');
              },
              otherOptions: () {},
              newsInternalCardAction: () {
                print('internal action');
              },
            ),
          );
        },
      ),
    );
  }
}

class FilterChips extends StatefulWidget {
  @override
  _FilterChipsState createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  String _selectedFilter = 'All';

  final List<String> _filters = [
    'All',
    'Politics',
    'Technology',
    'Business',
    'Sport'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50, // Adjust height as needed
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _filters.length,
          itemBuilder: (context, index) {
            final filter = _filters[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ChoiceChip(
                label: Text(
                  filter,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                selected: _selectedFilter == filter,
                onSelected: (bool selected) {
                  setState(() {
                    _selectedFilter = filter;
                  });
                },
                selectedColor: Colors.teal,
                backgroundColor: Colors.white,
                labelStyle: TextStyle(
                  color:
                      _selectedFilter == filter ? Colors.white : Colors.black,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _selectedFilter == filter
                        ? Colors.teal
                        : Colors.black12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class NewsHorizontalList extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'imageUrl':
          'https://video-images.vice.com/articles/6480a78e72277e0b529a99c5/lede/1686153158459-openai.jpeg',
      'title':
          'Revolutionizing the Future: Breakthrough Technology Set to Transform Industries',
      'source': 'Jane Cooper',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    // Add more news items here
  ];

  NewsHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsItems.length,
      itemBuilder: (context, index) {
        final newsItem = newsItems[index];
        return NewsHorizontalCard(
          imageUrl: newsItem['imageUrl']!,
          title: newsItem['title']!,
          source: newsItem['source']!,
          timeAgo: newsItem['timeAgo']!,
          views: newsItem['views']!,
          comments: newsItem['comments']!,
          onShare: () {
            print('share');
          },
          onComment: () {
            print('comment');
          },
          otherOptions: () {
            print('more options');
          },
        );
      },
    );
  }
}

class NewsHorizontalCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String source;
  final String timeAgo;
  final String views;
  final String comments;
  final VoidCallback onShare;
  final VoidCallback onComment;
  final VoidCallback otherOptions;

  NewsHorizontalCard({
    required this.imageUrl,
    required this.title,
    required this.source,
    required this.timeAgo,
    required this.views,
    required this.comments,
    required this.onShare,
    required this.onComment,
    required this.otherOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.all(8.0),
      color: Colors.red,
    );
  }
}

class NewHorizontalCard extends StatelessWidget {
  const NewHorizontalCard({super.key});

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
                      'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
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
                            'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png', // Reemplaza con la URL real
                          ),
                          radius: 12,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'CNN News',
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
                'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg', // Reemplaza con la URL real
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
              '3 days ago',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 16),
            Icon(Icons.visibility_outlined, size: 12, color: Colors.grey[600]),
            const SizedBox(width: 4),
            Text(
              '1000',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: null,
              child: Icon(
                Icons.comment_outlined,
                size: 12,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '2.1k',
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
              onPressed: null,
            ),
            GestureDetector(
                child: Icon(Icons.more_vert, color: Colors.black87),
                onTap: null),
            SizedBox(width: 16)
          ],
        ),
        SizedBox(height: 8)
      ],
    );
  }
}
