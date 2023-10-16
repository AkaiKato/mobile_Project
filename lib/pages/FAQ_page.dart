import 'package:flutter/material.dart';
import 'package:mobile_project/components/faq_textfield.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              FAQTextfiled(
                  text: "Самые часто задаваемые вопросы:",
                  weight: FontWeight.bold,
                  fontSize: 20),
              SizedBox(
                height: 10,
              ),
              FAQTextfiled(
                text: "1. Lorem ipsum dolor sit amet?",
                weight: FontWeight.normal,
                fontSize: 18,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: FAQTextfiled(
                  text:
                      "consectetur adipiscing elit. Mauris et fringilla erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus auctor diam a mollis pellentesque. Aliquam dictum dapibus est, ac feugiat neque lobortis vitae. Etiam vel gravida ex. Suspendisse placerat quam risus, sed blandit urna malesuada eu. Nunc faucibus feugiat commodo. Maecenas eget eros sagittis, facilisis metus vitae, ultricies nunc. Maecenas vel metus nec mauris pharetra porttitor. Curabitur nec condimentum risus. Aenean vitae sapien sagittis, malesuada diam sed, hendrerit urna. Duis in varius nulla, ac blandit ante.",
                  weight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FAQTextfiled(
                text: "2. Nullam eu pellentesque diam?",
                weight: FontWeight.normal,
                fontSize: 18,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: FAQTextfiled(
                  text:
                      "Nunc id est eu nunc pharetra efficitur vel vitae nisi. Aliquam lorem enim, pellentesque eu convallis ac, rutrum imperdiet orci. Maecenas non dictum augue, ac scelerisque tellus. Nunc et vestibulum massa. Ut et accumsan erat. Etiam ac metus blandit, tempor urna vitae, pharetra augue. Suspendisse vulputate euismod leo, id blandit risus laoreet in. Curabitur quam magna, congue vel mauris quis, malesuada dictum urna. Nullam porttitor consequat elementum. Phasellus suscipit, sapien in dignissim ultricies, orci neque malesuada velit, sit amet malesuada massa sem id ex. Suspendisse mattis dui sit amet est luctus hendrerit. Vivamus efficitur sollicitudin venenatis. Nulla non nisi sed eros porttitor fermentum. Nullam tortor lacus, lobortis non quam ut, porta cursus est. Nunc mollis vel erat non lobortis.",
                  weight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FAQTextfiled(
                text: "3. Aliquam eget turpis euismod?",
                weight: FontWeight.normal,
                fontSize: 18,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: FAQTextfiled(
                  text:
                      "dignissim augue non, feugiat eros. Donec pulvinar tortor non nibh consectetur tristique. Quisque lobortis neque ac tellus euismod bibendum. Aliquam vel leo vitae sem euismod hendrerit. Sed interdum tellus rutrum nunc dignissim, vel sodales elit elementum. Maecenas mauris turpis, tincidunt et nibh vitae, pulvinar suscipit odio. Pellentesque sodales lectus a mauris commodo egestas. In consequat, risus eget ullamcorper lacinia, tellus odio tincidunt mauris, vel malesuada ex risus tincidunt lorem. Quisque ultricies est dapibus, sollicitudin erat quis, lacinia lectus. Duis quis sapien sed lacus ullamcorper tempus. Sed viverra erat sit amet felis gravida, ac egestas ex bibendum. Nunc volutpat commodo sollicitudin. Praesent orci velit, vestibulum ac dolor et, facilisis sagittis ex. Vivamus consectetur non augue at commodo. Pellentesque at sagittis lectus.",
                  weight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
