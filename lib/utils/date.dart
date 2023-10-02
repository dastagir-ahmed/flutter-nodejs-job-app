import 'package:intl/intl.dart';

/// 格式化时间
String duTimeLineFormat(DateTime dt) {
  var now = DateTime.now();
  var difference = now.difference(dt);

  if (difference.inMinutes < 60) {
    final dtFormat = new DateFormat('HH:mm');
    var str = dtFormat.format(dt);
    return str;
  }
  // 1天内
  if (difference.inHours < 24) {
    return "${difference.inHours} h ago";
  }
  // 30天内
  else if (difference.inDays < 30) {
    return "${difference.inDays} d ago";
  }
  // MM-dd
  else if (difference.inDays < 365) {
    final dtFormat = new DateFormat('MM-dd');
    return dtFormat.format(dt);
  }
  // yyyy-MM-dd
  else {
    final dtFormat = new DateFormat('yyyy-MM-dd');
    var str = dtFormat.format(dt);
    return str;
  }
}
