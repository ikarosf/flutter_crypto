class Padding {
  static List<int> pkcs7Padding(List<int> data) {
    int fillLen = 8 - data.length % 8;
    List<int> padDate = data.toList();
    for (int i = 0; i < fillLen; i++) {
      padDate.add(fillLen);
    }
    return padDate;
  }

  static List<int> pkcs7UnPadding(List<int> padData) {
    int fillLen = padData.last;
    if (fillLen < 0 || fillLen > 8) {
      return padData;
    }
    List<int> data = padData.sublist(0, padData.length - fillLen);
    return data;
  }

  static List<int> zeroPadding(List<int> data) {
    int fillLen = 8 - data.length % 8;
    if(fillLen == 8){
      return data.toList();
    }
    List<int> padDate = data.toList();
    for (int i = 0; i < fillLen; i++) {
      padDate.add(0);
    }
    return padDate;
  }

  static List<int> zeroUnPadding(List<int> padData) {
    int fillLen = 0;
    for (int i = 0; i < 8; i++) {
      if (padData[padData.length - i] == 0) {
        fillLen++;
      } else {
        break;
      }
    }
    List<int> data = padData.sublist(0, padData.length - fillLen);
    return data;
  }
}
