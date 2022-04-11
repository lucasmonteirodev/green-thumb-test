<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>

	<title>Front End Test - Greenthumb</title>
	<meta name="title" content="Front End Test - Greenthumb" />
	<meta name="description" content="Front End Test - Greenthumb by Lucas Monteiro" />
	<meta name="robots" content="index, follow">
	<meta charset="UTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Facebook Metas -->
	<meta property="og:type" content="website" />
	<meta property="og:title" content="Front End Test - Greenthumb" />
	<meta property="og:image" content="./img/hero/desktop/cover-share.png" />
	<meta property="og:site_name" content="Green Thumb" />
	<meta property="og:url" content="https://www.greenthumb.com.br" />
	<meta property="og:description" content="Front End Test - Greenthumb by Lucas Monteiro" />
	<!-- === -->

	<!-- Twitter Metas -->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@greenthumb">
	<meta name="twitter:title" content="Front End Test - Greenthumb">
	<meta name="twitter:description" content="Front End Test - Greenthumb by Lucas Monteiro">
	<meta name="twitter:image:src" content="./img/hero/desktop/cover-share.png">
	<meta name="twitter:url" content="https://www.greenthumb.com.br">
	<meta name="twitter:domain" content="www.greenthumb.com.br">
	<meta name="twitter:creator" content="@lucasmonteiro">
	<!-- === -->

	<!-- FONTS -->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet"/>
	<!-- === -->

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" media="screen" href="./build/css/reset.css?v=1" />
	<link rel="stylesheet" type="text/css" media="screen" href="./build/css/style.css?v=1" />
	<!-- === -->

</head>
<body>


	<section id="modulo1" class="light-green-bg">
		<div class="background-desktop">
			<img src="./img/hero/desktop/left-leaves.png" alt="Green leaves" class="left-leaves">

			<img src="./img/hero/desktop/plantperson.png" alt="Person holding plants" class="plantperson">

			<img src="./img/hero/desktop/right-leaves.png" alt="Green leaves" class="right-leaves">
		</div>

		<div class="background-mobile">
			<img src="./img/hero/mobile/mobile-leaves.png" alt="Green leaves" class="mobile-leaves">

			<div class="box-plantperson">
				<img src="./img/hero/mobile/mobile-plantperson.png" alt="Person holding plants" class="mobile-plantperson">
			</div>
		</div>

		<div class="box-absolute">
			<div class="container texts">
				<a href="/" class="link-logo">
					<img src="./img/icons/logo-white.svg" alt="Logo Green Thumb." class="logo">
				</a>

				<h1 class="title font-bold">
					Find your next green friend
				</h1>

				<a href="javascript:void(0)" onClick="scrollToSmoothly(document.getElementById('modulo2').offsetTop, 300)" class="link-arrow-down">
					<img src="./img/icons/arrow-down.svg" alt="Arrow down" class="arrow-down">
				</a>
			</div>
		</div>
	</section>

	<section id="modulo2">
		<div class="container">
			<div class="div-flex">
				<div class="box box-01 c-select" data-filter-group="sun">
					<div class="box-icon">
						<img src="./img/illustrations/sun.png" alt="Icon sun" class="icon-colorful">
					</div>

					<p class="title font-normal grey-color">
						<b>1.</b> Set the amount of <b>sunlight</b> your plant will get.
					</p>

					<select class="select grey-color" id="select-sun">
						<option value="" disabled selected>Select...</option>
						<option value=".no">No sun</option>
						<option value=".low">Low sun</option>
						<option value=".high">High sun</option>
					</select>
				</div>

				<div class="box box-02 c-select" data-filter-group="water">
					<div class="box-icon">
						<img src="./img/illustrations/wateringcan.png" alt="Icon wateringcan" class="icon-colorful">
					</div>

					<p class="title font-normal grey-color">
						<b>2.</b> How often do you <b>want</b> to water your plant?
					</p>

					<select class="select grey-color" id="select-water">
						<option value="" disabled selected>Select...</option>
						<option value=".rarely">Rarely</option>
						<option value=".daily">Daily</option>
						<option value=".regularly">Regularly</option>
					</select>
				</div>

				<div class="box box-03 c-select" data-filter-group="pets">
					<div class="box-icon">
						<img src="./img/illustrations/dog.png" alt="Icon dog" class="icon-colorful">
					</div>

					<p class="title font-normal grey-color">
						<b>3.</b> Do you have pets? Do they <b>chew</b> plants? 
					</p>

					<select class="select grey-color" id="select-pets">
						<option value="" disabled selected>Select...</option>
						<option value=".false">Yes</option>
						<option value=".true">No</option>
					</select>
				</div>
			</div>
		</div>
	</section>

	<section id="modulo3">
		<div class="container">
			<div class="no-results active" id="no-results">
				<div class="div-flex">
					<div class="texts">
						<p class="title font-bold">No results yet…</p>

						<p class="description font-normal">Use the filters above to find the plant that best fits your environment :)  </p>
					</div>

					<img src="./img/illustrations/no-results.png" alt="Icon no results" class="icon-noresults">
				</div>
			</div>

			<div class="results inactive" id="results">
				<img src="./img/illustrations/pick.png" alt="Icon of a hand holding a plant" class="icon-pick">

				<p class="title font-bold">Our picks for you</p>

				<div class="box-margin">
					<div class="cards grid" id="box-cards">

						<div class="grid__sizer"></div>

						<div class="div-01"></div>
						
						<!-- dynamic cards with api -->
					</div>
				</div>

				<div class="box-cta">
					<a href="javascript:void(0)" onClick="scrollToSmoothly(document.getElementById('modulo1').offsetTop, 300)" class="back-to-top font-normal">
						<?xml version="1.0" encoding="UTF-8"?> <svg width="18px" height="23px" viewBox="0 0 18 23" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"> <title>seta</title> <g id="desktop" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> <g id="d.-results" transform="translate(-622.000000, -1901.000000)" stroke="#15573F" stroke-width="0.799999952"> <g id="back-to-the-top" transform="translate(270.000000, 1888.000000)"> <path d="M358.64305,33 L350.000253,24.5 L358.64305,16 M350,24.5 L372,24.5" id="seta" transform="translate(361.000000, 24.500000) rotate(90.000000) translate(-361.000000, -24.500000) "></path> </g> </g> </g> </svg>

						<span>back to the top</span>
					</a>
				</div>
			</div>
		</div>
	</section>

	
	<!-- JS SCRIPTS -->
	
		<!-- FILTER -->
		<script type="text/javascript" src="./build/js/filter.js?v=1"></script>
		<script type="text/javascript" src="./build/js/isotope.pkgd.min.js"></script>
		<script type="text/javascript" src="./build/js/packery-mode.pkgd.min.js"></script>
		<script type="text/javascript" src="./build/js/horizontal.pkgd.js"></script>
		<!-- === -->

		<!-- API - SCRIPTS CARDS -->
		<script type="text/javascript" src="./build/js/api-cards.js?v=1"></script>
		<!-- === -->

		<!-- MAIN SCRIPTS -->
		<script type="text/javascript" src="./build/js/main.js?v=1"></script>
		<!-- === -->

	<!-- === -->

</body>
</html>