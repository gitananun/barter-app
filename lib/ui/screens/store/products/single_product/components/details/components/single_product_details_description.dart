import 'package:barter/ui/screens/home/home_dashboard/_shared_widgets/home_dashboard_section_title_row.dart';
import 'package:barter/ui/styles/single_product/style.dart';
import 'package:flutter/material.dart';

class SingleProductDetailsDescription extends StatefulWidget {
  const SingleProductDetailsDescription(this.description, {Key? key}) : super(key: key);
  final String description;
  @override
  _SingleProductDetailsDescriptionState createState() => _SingleProductDetailsDescriptionState();
}

class _SingleProductDetailsDescriptionState extends State<SingleProductDetailsDescription> {
  bool _withMaxLines = true;
  String _moreText = 'see more';

  void _onMore() => setState(() {
        _withMaxLines = !_withMaxLines;

        /// Show proper text for functionality
        _moreText = _withMaxLines ? 'see more' : 'see less';
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeDashboardSectionTitleRow(title: 'Description', moreText: _moreText, onMore: _onMore),
        SingleProductStyle.commonVerticalSpace,
        SingleChildScrollView(
          child: _withMaxLines
              ? Text(
                  widget.description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.overline,
                )
              : Text(widget.description, style: Theme.of(context).textTheme.overline),
        ),
      ],
    );
  }
}
