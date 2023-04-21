import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../entities/entities.dart';

const String _kCloudToken = 'cloudToken';
const String _kCloudName = 'cloudName';
const String _kPointToken = 'authToken';

@lazySingleton
class SessionService {
  @lazySingleton
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  //Cloud Token
  Future<CloudToken?> getCloudToken() async {
    final encodedToken = await storage.read(key: _kCloudToken);
    if (encodedToken == null) return null;
    return CloudToken.fromJson(jsonDecode(encodedToken));
  }

  Future<void> setCloudToken(CloudToken token) async {
    final value = jsonEncode(token.toJson());
    await storage.write(key: _kCloudToken, value: value);
  }

  Future<void> clearCloudToken() async {
    await storage.delete(key: _kCloudToken);
  }

  //Point Token
  Future<PointToken?> getPointToken() async {
    final encodedToken = await storage.read(key: _kPointToken);
    if (encodedToken == null) return null;
    return PointToken.fromJson(jsonDecode(encodedToken));
  }

  Future<void> setPointToken(CloudToken token) async {
    final value = jsonEncode(token.toJson());
    await storage.write(key: _kPointToken, value: value);
  }

  Future<void> clearPointToken() async {
    await storage.delete(key: _kPointToken);
  }

  //Cloud Name
  Future<String?> getCloudName() async {
    final result = await storage.read(key: _kCloudName);
    return result;
  }

  Future<void> setCloudName(String cloud) async {
    await storage.write(key: _kCloudName, value: cloud);
  }

  Future<void> clearCloudName() async {
    await storage.delete(key: _kCloudName);
  }
}
