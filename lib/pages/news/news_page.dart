import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';
import 'package:internal_news/widgets/internal_fiter_chips.dart';
import 'package:internal_news/widgets/internal_vertical_card.dart';
import 'package:internal_news/widgets/internal_trending_section.dart';
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
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          const TrendingSection(
            titleTrending: 'Trending',
            titleActionTrending: 'View All',
          ),
          NewsTrendingList(),
          const SizedBox(
            height: 8,
          ),
          TrendingSection(
            titleTrending: 'Recent Stories',
            titleActionTrending: 'View All',
            onActionTap: () {
              print('action');
            },
          ),
          FilterChips(),
          ListVerticalCard(),
        ],
      ),
    );
  }
}

class ListVerticalCard extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'imageUrl':
          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'sourceName': 'CNN News',
      'sourceLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    {
      'imageUrl':
          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'sourceName': 'CNN News',
      'sourceLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    {
      'imageUrl':
          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'sourceName': 'CNN News',
      'sourceLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    {
      'imageUrl':
          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'sourceName': 'CNN News',
      'sourceLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    {
      'imageUrl':
          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'sourceName': 'CNN News',
      'sourceLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    {
      'imageUrl':
          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
      'title':
          'Unmasking the Truth: Investigative Report Exposes Widespread Political Corruption',
      'sourceName': 'CNN News',
      'sourceLogo':
          'https://upload.wikimedia.org/wikipedia/commons/f/fb/Cnn_logo_red_background.png',
      'timeAgo': '1 min ago',
      'views': '378',
      'comments': '2',
    },
    // Add more news items here
  ];
  ListVerticalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: newsItems.length, // Replace with actual item count
      itemBuilder: (context, index) {
        final newsItem = newsItems[index];
        return InternalVerticalCard(
          key: ValueKey(index),
          imageUrl: newsItem['imageUrl']!,
          title: newsItem['title']!,
          sourceName: newsItem['sourceName']!,
          sourceLogo: newsItem['sourceLogo']!,
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
