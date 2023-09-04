import 'package:flutter/material.dart';
import 'package:themedemo66/color.dart';

class NewsBody extends StatefulWidget {
  const NewsBody({Key? key}) : super(key: key);

  @override
  State<NewsBody> createState() => _NewsBodyState();
}

class _NewsBodyState extends State<NewsBody> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(search: search),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10,
            ),
            child: Column(
              children: [
                buildHeader(context, 'Lasted News'),
                buildLastedNews(),
                buildHeader(context, 'Popular News'),
                buildPopularNews(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildPopularNews() {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      height: 300,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const NewsLine();
          }),
    );
  }

  Container buildLastedNews() {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              height: 300,
              child: Image.asset('assets/images/news.png'),
            ),
          );
        },
      ),
    );
  }

  Row buildHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          'See More  >>',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                // fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

class NewsLine extends StatelessWidget {
  const NewsLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/unsplash_xTq26wLo5do.png'),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Social Media',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                'Social media refers to websites and applications that are designed to allow people to share content quickly',
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 12,
                    ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.search,
  }) : super(key: key);

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: search,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "",
          filled: true,
          fillColor: whitePerl,
          focusColor: lightPurple,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
