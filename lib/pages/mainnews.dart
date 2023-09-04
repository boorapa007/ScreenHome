import 'package:flutter/material.dart';

class MainNews extends StatefulWidget {
  const MainNews({Key? key}) : super(key: key);

  @override
  State<MainNews> createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSingleChildScrollView(context),
    );
  }

  Widget buildExpanded(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(
            //   height: 20,
            // ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    'Welcome to SCIT',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'Prince of Songkla Univesity, ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Surat Thani Campus',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.asset('assets/images/largeimage.png'),
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '\t Prince of Songkla University (PSU) (Thai: มหาวิทยาลัยสงขลานครินทร์; RTGS: Mahawitthayalai Songkhla Nakharin) is the first university in southern Thailand, established in 1967.[3] The name of the university was granted by the King Bhumibol Adulyadej in honor of Prince Mahidol. The university consists of four campuses and one education service area. In 1968, the first permanent campus was established in Pattani. The campus in Hat Yai was opened in 1971 and is now the main campus, with more than 50% of the university\'s students. Other campuses were established in Phuket (1977) and Surat Thani (1990). Additionally, the Trang education service area was founded in 1991 and later developed to be a campus of PSU in 1999. As 2007, the university offers 295 educational programs to its 34,000 students, including 18 international programs and three foreign language programs.',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '\t Prince of Songkla University hosts hundreds of international students. The Phuket campus accommodates the most students from European and North American universities. The International Study Program in Phuket (ISPP) is multidisciplinary, offering courses in social sciences, history, intercultural communications, tourism, human resources, and international finance and economics.',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSingleChildScrollView(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to SCIT',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Prince of Songkla Univesity, ',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Surat Thani Campus',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Image.asset('assets/images/largeimage.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '\t Prince of Songkla University (PSU) (Thai: มหาวิทยาลัยสงขลานครินทร์; RTGS: Mahawitthayalai Songkhla Nakharin) is the first university in southern Thailand, established in 1967.[3] The name of the university was granted by the King Bhumibol Adulyadej in honor of Prince Mahidol. The university consists of four campuses and one education service area. In 1968, the first permanent campus was established in Pattani. The campus in Hat Yai was opened in 1971 and is now the main campus, with more than 50% of the university\'s students. Other campuses were established in Phuket (1977) and Surat Thani (1990). Additionally, the Trang education service area was founded in 1991 and later developed to be a campus of PSU in 1999. As 2007, the university offers 295 educational programs to its 34,000 students, including 18 international programs and three foreign language programs.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '\t Prince of Songkla University hosts hundreds of international students. The Phuket campus accommodates the most students from European and North American universities. The International Study Program in Phuket (ISPP) is multidisciplinary, offering courses in social sciences, history, intercultural communications, tourism, human resources, and international finance and economics.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
