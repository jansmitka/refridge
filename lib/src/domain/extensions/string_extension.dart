extension StringExtension on String {
  String replaceCzechCharacters() {
    const Map<String, String> charMap = {
      'á': 'a',
      'č': 'c',
      'ď': 'd',
      'é': 'e',
      'ě': 'e',
      'í': 'i',
      'ň': 'n',
      'ó': 'o',
      'ř': 'r',
      'š': 's',
      'ť': 't',
      'ú': 'u',
      'ů': 'u',
      'ý': 'y',
      'ž': 'z',
      'Á': 'A',
      'Č': 'C',
      'Ď': 'D',
      'É': 'E',
      'Ě': 'E',
      'Í': 'I',
      'Ň': 'N',
      'Ó': 'O',
      'Ř': 'R',
      'Š': 'S',
      'Ť': 'T',
      'Ú': 'U',
      'Ů': 'U',
      'Ý': 'Y',
      'Ž': 'Z',
    };

    return split('').map((char) {
      return charMap[char] ?? char;
    }).join('');
  }
}
