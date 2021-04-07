class ListViewModel {
  String title;
  String desc;
  String imageAsset;

  ListViewModel({
    this.title,
    this.desc,
    this.imageAsset,
  });
}

var listModel = [
  ListViewModel(
    title: 'Doctor advice',
    desc: 'The doctor advises patient.',
    imageAsset: 'assets/images/doctor.svg',
  ),
  ListViewModel(
    title: 'Wash your Hand',
    desc: 'Handwashing your hand.',
    imageAsset: 'assets/images/wash.svg',
  ),
  ListViewModel(
    title: 'Social distance',
    desc: 'Safe distancing from other.',
    imageAsset: 'assets/images/distance.svg',
  ),
  ListViewModel(
    title: 'Use your mask',
    desc: 'Use mask in the crowd.',
    imageAsset: 'assets/images/mask.svg',
  ),
];
