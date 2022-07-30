// sempre colocar os arquivos mais importantes por ultimo

// import '../../css/variable.css';
// import '../../css/default.css';
// import '../../css/animation/animation.css';
// import '../../css/page/home.css';

import SetImage from '../util/SetImage.js';
// import FetchData from '../util/FetchData.js';

import '../animation/index.js';

new SetImage(
  '../../images/page/home/hero-img.png',
  'hero-head-line',
).innerImage();

new SetImage(
  '../../images/emphasis/initial-page.png',
  'initial-page',
).innerImage();

// new FetchData('http://localhost:5000/user').response();
