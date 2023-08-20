import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/web_view_page.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';


// import 'package:web_view/widgets/action_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: InkWell(child: const Text(' حول'), onTap: () {},),),
      body: Stack(
        children: [
         const DecoratedBox(
           decoration:  BoxDecoration(
             image:  DecorationImage(
               image:  AssetImage("assets/images/backgraundhome.jpg"),
               fit: BoxFit.fill,
             ),
           ),
         ),
         /////
         ListView(
        padding: const EdgeInsets.all(32),
        children: [
          const SizedBox(height: 16),
          SvgPicture.asset(
            // 'assets/logoatba.svg',
           'assets/logo.svg',
            semanticsLabel: 'Acme Logo',
            height: 100,
            fit: BoxFit.contain,
            colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
          ),
          const SizedBox(height: 16),
      
          Text(
            'يُعنى مركز المعلومات الرقمية بتدعيم النافذة الرقمية لمكتبة العتبة العباسية المقدسة بالمصادر والخدمات الرقمية المتنوعة والتي من شأنها رفد المنظومة التعليمية في العراق بما يوائم متطلبات النهضة العلمية في البلد، كما يهتم المركز بالحفاظ على النتاج العلمي العراقي ورقمنته وعرضه لإظهار المكانة العلمية للعراق بين الأوساط الدولية',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
      
             const SizedBox(height: 24),
          Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: ExpansionTile(
              leading: Image.asset(
                'assets/booksearch.png',
                fit: BoxFit.contain,
                height: 30,
                width: 30,
              ),
              title: const Text('ابحث في مصادر مكتبة العتبة العباسية'),
              trailing: const Icon(Icons.expand_more),
              tilePadding:
                  const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              //childrenPadding: const EdgeInsets.all(16),
              collapsedShape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              backgroundColor: Colors.grey.shade100,
              collapsedBackgroundColor: Colors.grey.shade100,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              children: [
                LinkContainer(
                  title: ' المصادر الورقية',
                  link: 'http://lccis.net/',
                ),
                LinkContainer(
                  title: 'المصادر رقمية',
                  link: 'https://library.alkafeel.net/dic/#dic-search',
                ),
                LinkContainer(
                  title: 'المخطوطات',
                  link: 'https://dromh.org/?field=0&filter=list&type=reg',
                ),
              ],
            ),
          ),
          LinkContainer(
            title: 'خدمة الاعارة عن بعد',
            link: 'https://library.alkafeel.net/dic/elending/',
          ),
          LinkContainer(
            title: ' خدمة معرفة نسبة الاستلال ',
            link: 'https://library.alkafeel.net/dic/plagiarism/',
          ),
          LinkContainer(
            title: ' خدمة اهداء المصادر الرقمية',
            link: 'https://library.alkafeel.net/dic/dedicate/',
            //  image: 'assets/donatebook.png',
          ),
          // LinkContainer(
          //   title: 'استعارة مصادر',
          //   link: 'https://gogole.com',
          // ),
          // LinkContainer(
          //   title: 'استعارة مصادر',
          //   link: 'https://gogole.com',
          // ),
          // LinkContainer(
          //   title: 'استعارة مصادر',
          //   link: 'https://gogole.com',
          // ),
          // LinkContainer(
          //   title: 'استعارة مصادر',
          //   link: 'https://gogole.com',
          // ),
          const SizedBox(height: 32),
        ],
      ),
          

      ],)
    );
  }
}

// ignore: must_be_immutable
class LinkContainer extends StatelessWidget {
  LinkContainer({
    super.key,
    required this.title,
    required this.link,
    this.image = 'assets/book.png',
    this.icon = Icons.menu_book,
  });

  String link, image;
  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {
          // launchUrl(Uri.parse(link));
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewPage(url:  link )
         
          ),
        );  
       },
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade100,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(children: [
              //    Icon(icon),
              Image.asset(
                image,
                fit: BoxFit.contain,
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 16),
              Expanded(child: Text(title)),
              const SizedBox(width: 16),
              const Icon(Icons.arrow_forward),
            ]),
          ),
        ),
      ),
    );
  }
}
