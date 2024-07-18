import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class InternalUserAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String userName;
  final String userAvatarUrlImage;
  final VoidCallback? onNotificationIconTap;
  final String welcomeMessage;
  const InternalUserAppBar(
      {Key? key,
      required this.userName,
      required this.userAvatarUrlImage,
      required this.onNotificationIconTap,
      required this.welcomeMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(userAvatarUrlImage),
                    radius: 24,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        welcomeMessage,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        userName,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Playfair',
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: onNotificationIconTap,
                    child: const Icon(
                      Icons.notifications_on_outlined,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
