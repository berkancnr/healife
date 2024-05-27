enum MediaRatio {
  landScape(name: "Landscape (1.91:1)", ratio: 1.91 / 1),
  portrait(name: "Portrait (4:5)", ratio: 4 / 5),
  story(name: "Story (9:16)", ratio: 9 / 16),
  square(name: "Square (1:1)", ratio: 1 / 1);

  final String name;
  final double ratio;
  const MediaRatio({required this.name, required this.ratio});
}
