jQuery(document).ready(function() {
	jQuery('.r-slider .banner').revolution({
		delay:7000,
		startheight:400,
		startwidth:1000,
		startWithSlide:0,

		fullScreenAlignForce:"off",
		autoHeight:"off",

		shuffle:"off",

		onHoverStop:"on",

		thumbWidth:100,
		thumbHeight:50,
		thumbAmount:3,

		hideThumbsOnMobile:"on",
		hideNavDelayOnMobile:1500,
		hideBulletsOnMobile:"off",
		hideArrowsOnMobile:"off",
		hideThumbsUnderResoluition:0,

		hideThumbs:10,
		hideTimerBar:"on",

		keyboardNavigation:"on",

		navigationType:"bullet",
		navigationArrows:"solo",
		navigationStyle:"round",

		navigationHAlign:"center",
		navigationVAlign:"bottom",

		soloArrowLeftHalign:"left",
		soloArrowLeftValign:"center",
		soloArrowLeftHOffset:20,
		soloArrowLeftVOffset:0,

		soloArrowRightHalign:"right",
		soloArrowRightValign:"center",
		soloArrowRightHOffset:20,
		soloArrowRightVOffset:0,


		touchenabled:"on",
		swipe_velocity:"0.7",
		swipe_max_touches:"1",
		swipe_min_touches:"1",
		drag_block_vertical:"false",

		stopAtSlide:-1,
		stopAfterLoops:-1,
		hideCaptionAtLimit:0,
		hideAllCaptionAtLilmit:0,
		hideSliderAtLimit:0,

		dottedOverlay:"none",

		spinned:"spinner4",

		fullWidth:"off",
		forceFullWidth:"off",
		fullScreen:"off",
		fullScreenOffsetContainer:"#topheader-to-offset",

	});
});
