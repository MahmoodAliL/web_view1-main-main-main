import 'package:flutter/material.dart';
import 'package:web_view/web_view_page.dart';

class Search extends StatefulWidget {
  const Search({
    super.key,
  });

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  bool _isVisible = false;
  late AnimationController _controller;
  late Animation<double> fastInOut =
      CurveTween(curve: Curves.fastOutSlowIn).animate(_controller);
  late Animation<double> translationAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    translationAnimation = Tween<double>(begin: 150, end: 0).animate(fastInOut)
      ..addListener(() {
        setState(() {});
      });

    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(fastInOut)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SearchPlaceHolder(
              onTap: () {
                setState(() {
                  _isVisible = !_isVisible;
                  if (_isVisible) {
                    _controller.forward();
                  } else {
                    _controller.reverse();
                  }
                });
              },
            ),
            const SizedBox(height: 8),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: _isVisible ? 1 : 0,
              child: Transform.translate(
                offset: Offset(0, translationAnimation.value),
                child: const Column(
                  children: [
                    SearchTypeLink(
                      title: 'البحث في المصادر الورقية',
                      link: 'http://lccis.net/',
                    ),
                    SearchTypeLink(
                      title: ' البحث في المصادر الرقمية ',
                      link: 'https://library.alkafeel.net/dic/#dic-search',
                    ),
                    SearchTypeLink(
                      title: 'البحث في المخطوطات المصورة',
                      link: 'https://dromh.org/?field=0&filter=list&type=reg',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const SearchIcon(),
      ],
    );
  }
}

class SearchTypeLink extends StatelessWidget {
  const SearchTypeLink({
    super.key,
    required this.title,
    required this.link,
  });

  final String title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WebViewPage(url: link)),
          );
        },
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Text(title),
        ),
      ),
    );
  }
}

class SearchPlaceHolder extends StatelessWidget {
  const SearchPlaceHolder({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(8),
            bottomStart: Radius.circular(8),
          ),
        ),
        child: const Text('ابحث في مصادر مكتبة العتبة العباسية'),
      ),
    );
  }
}

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadiusDirectional.only(
          topEnd: Radius.circular(8),
          bottomEnd: Radius.circular(8),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: const Icon(
        Icons.search,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}
