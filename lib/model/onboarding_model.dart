class OnboardingModel {
  String image;
  String title;
  String desc;

  OnboardingModel({this.image, this.title, this.desc});
}

List<OnboardingModel> contents = [
  OnboardingModel(
    title: 'Wash your hand',
    image: 'assets/images/wash.svg',
    desc:
        'Handwashing is one of the best ways to protect yourself and your family from getting sick.',
  ),
  OnboardingModel(
    title: 'Doctor advice',
    image: 'assets/images/doctor.svg',
    desc:
        'The doctor advises patient to take paracetamol for fever, zinc tablets, invermectin tablets once a day among other things.',
  ),
  OnboardingModel(
    title: 'Social distance',
    image: 'assets/images/distancing.svg',
    desc:
        'Keeping a safe distancing from other and avoiding agathering spaces such as school, concert hails and public transportation.',
  )
];
