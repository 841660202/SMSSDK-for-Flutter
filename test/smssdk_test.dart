import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smssdk/smssdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.yoozoo.com/smmsdk');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Smssdk.getVersion, '42');
  });
}