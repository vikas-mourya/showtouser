import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class Carousel extends StatefulWidget {
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> with SingleTickerProviderStateMixin {
  final PageController _controller = PageController();

  List<Widget> _list = [
    SliderBox(
        child: Container(
            child: Image.asset('images/student.jpg',fit: BoxFit.fitHeight,))),
    SliderBox(
        child: Container(
            child: Image.asset('images/far4.jpg',fit: BoxFit.fitHeight,))),
    SliderBox(
        child: Container(
            child: Image.asset('images/far5.jpg',fit: BoxFit.fitHeight,))),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateSlider());
  }

  void _animateSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _controller.page.round() + 1;

      if (nextPage == _list.length) {
        nextPage = 0;
      }

      _controller
          .animateToPage(nextPage, duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animateSlider());
    });
  }

  @override
  Widget build(BuildContext context) {
    PageIndicatorContainer container = new PageIndicatorContainer( size: 6,
      pageView: new PageView(
        children: _list,
        controller: _controller,
      ),
      length: _list.length,
      indicatorSpace: 10,
      indicatorColor: Colors.grey[350],
      indicatorSelectorColor: Colors.grey,
    );

    return Stack(
      children: <Widget>[
        Container(color: Colors.grey[100], height: double.infinity),
        Container(color: Colors.white, child: container, margin: EdgeInsets.only(bottom: 10)),
      ],
    );
  }
}

class SliderBox extends StatelessWidget {
  final Widget child;
  const SliderBox({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: child);
  }
}