(function () {})();


const trigger   = document.querySelector( '.header__button-mobile' )
const offcanvas = document.querySelector( '.menu__mobile' )

trigger.addEventListener( 'mousemove', addMobileMenu )
offcanvas.addEventListener( 'mousemove', addMobileMenu )


trigger.addEventListener( 'mouseout', removeMobileMenu )
offcanvas.addEventListener( 'mouseout', removeMobileMenu )

function addMobileMenu() {
  offcanvas.classList.add( 'is-active' )
}

function removeMobileMenu() {
  offcanvas.classList.remove( 'is-active' )
}


const allContent = {
  slidesToShow: 1,
  slidesToScroll: 1,
  // true diz q no desktop eu posso arastar o slider
  draggable: true,
  // aquelas bolinhas que diz em qual lugar a pessoa ta
  // dots: ".ass__dots",
  // arrows: {
  //     prev: ".js-carousel--simple-prev",
  //     next: ".js-carousel--simple-next",
  // },
  // isso nunca vai deixar o slider "quebrado"
  scrollLock: true,
  responsive: [{
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
      },
    },
    {
      breakpoint: 900,
      settings: {
          slidesToShow: 3,
            slidesToScroll: 3,
      },
    },
  ],
}


var $newRelease = document.querySelector('.js-newrelease'),
    $continueWhotch = document.querySelector('.js-continue-whotch'),
    $series = document.querySelector('.js-series');

new Glider($newRelease, allContent);
new Glider($continueWhotch, allContent);
new Glider($series, allContent)