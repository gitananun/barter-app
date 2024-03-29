part of slider_indicators;

class SingleIndicator extends StatelessWidget {
  const SingleIndicator({
    Key? key,
    this.paddingBetween = 2,
    this.size = 5,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  final double paddingBetween;
  final double size;

  @override
  Widget build(BuildContext context) {
    final _themeContext = Theme.of(context);
    final _bgColor = isActive ? _themeContext.primaryColor : _themeContext.disabledColor.withOpacity(0.3);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingBetween),
      child: Container(
        width: isActive ? size + 5 : size,
        height: size,
        decoration: BoxDecoration(
          color: _bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
