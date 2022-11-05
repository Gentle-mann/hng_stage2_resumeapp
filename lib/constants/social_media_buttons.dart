import 'package:hng_stage2_mobile/models/social_media_button.dart';

List<SocialMediaButton> mediaButtons() {
  final mediaItems = [
    SocialMediaButton(
      image: 'assets/images/twitter.jpeg',
      title: 'Twitter',
      url: Uri.parse(
          'https://twitter.com/Ishaq_gentle_ma?t=lnbecQekueVMuzVUYSYYcQ&s=08'),
    ),
    SocialMediaButton(
      image: 'assets/images/github.png',
      title: 'GitHub',
      url: Uri.parse('https://www.github.com/Gentle-mann'),
    ),
    SocialMediaButton(
      image: 'assets/images/linkedin.png',
      title: 'LinkedIn',
      url: Uri.parse('https://www.linkedin.com/in/ishaq-ibrahim-3a8b85251'),
    ),
    SocialMediaButton(
      image: 'assets/images/facebook.jpeg',
      title: 'Facebook',
      url: Uri.parse(
          'https://free.facebook.com/ishaq.ibraheem.77?eav=AfbXEVRFlMdMVY6qH7Z9puQypL-WV5bd2Yw41P0W3dh8iLSqct4xzxMRqBU81MP-kUU&ref_component=mfreebasic_home_header&ref_page=%2Fwap%2Fhome.php&refid=8&paipv=0'),
    ),
  ];
  return mediaItems;
}
