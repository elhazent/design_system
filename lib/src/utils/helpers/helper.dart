import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as enc;

class AppHelper {
  static String encryptAES256GCM(String plainText, String keyStr) {
    final key = enc.Key.fromUtf8(keyStr.padRight(32, '0').substring(0, 32));
    final iv = enc.IV.fromSecureRandom(12);
    final encrypter = enc.Encrypter(enc.AES(key, mode: enc.AESMode.gcm));
    final encrypted = encrypter.encrypt(plainText, iv: iv);

    return '${iv.base64}:${encrypted.base64}';
  }

  static String decryptAES256GCM(String cipherText, String keyStr) {
    final parts = cipherText.split(':');
    if (parts.length != 2) {
      throw Exception('Format cipher tidak valid. Harus IV:Ciphertext');
    }

    final iv = enc.IV.fromBase64(parts[0]);
    final encrypted = enc.Encrypted.fromBase64(parts[1]);
    final key = enc.Key.fromUtf8(keyStr.padRight(32, '0').substring(0, 32));

    final encrypter = enc.Encrypter(enc.AES(key, mode: enc.AESMode.gcm));
    return encrypter.decrypt(encrypted, iv: iv);
  }

  // --- HMAC-SHA256 Signatures ---
  static String generateHMACSHA256(String payload, String secretKey) {
    final key = utf8.encode(secretKey);
    final bytes = utf8.encode(payload);

    final hmacSha256 = Hmac(sha256, key);
    final digest = hmacSha256.convert(bytes);

    return digest.toString();
  }
}
