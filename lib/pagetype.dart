import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageTypeProvider = StateProvider<PageType>(((ref) => PageType.home));

enum PageType {
  home,
  summary,
  calender,
  setting
}
