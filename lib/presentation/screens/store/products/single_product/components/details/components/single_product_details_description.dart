import 'package:flutter/material.dart';

import '../../../../../../../styles/single_product/style.dart';
import '../../../../../../shared_widgets/sections/dashboard_section_title_row.dart';

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
        _moreText = _withMaxLines ? 'see more' : 'see less';
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashboardSectionTitleRow(title: 'Description', moreText: _moreText, onMore: _onMore),
        SingleProductStyle.commonVerticalSpace,
        GestureDetector(
          onTap: _onMore,
          child: _withMaxLines
              ? Text(
                  widget.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.overline,
                )
              : Text(widget.description, style: Theme.of(context).textTheme.overline),
        ),
      ],
    );
  }
}
