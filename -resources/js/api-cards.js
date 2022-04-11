// Consult API

const API = 'https://front-br-challenges.web.app/api/v2/green-thumb/';

var greenThumb = new XMLHttpRequest()
greenThumb.open('GET', `${API}?sun=high&water=regularly&pets=false`, true)
greenThumb.setRequestHeader('Accept', 'application/json'); 
greenThumb.onload = function () {

	var plants = JSON.parse(this.response);

	plants.forEach((plantsCard, index) => {

		// Create card staff favorite true

		const cardFavorite = document.createElement('div'); 
		cardFavorite.classList.add('card', 'favorite', plantsCard.sun, plantsCard.water, plantsCard.toxicity);

		// Create cards staff favorite false > simple card
		
		const card = document.createElement('div'); // Create div

		card.classList.add('card', 'simple', plantsCard.sun, plantsCard.water, plantsCard.toxicity); // Adding classes and attributes to div


		// Conditions for switching icons according to the result

		const pet_toxicity = plantsCard.toxicity;

		if (plantsCard.sun == 'no') {
			sun = 'no-sun';
		}else if (plantsCard.sun == 'low') {
			sun = 'low-sun';
		}else {sun = 'high-sun';}

		if (plantsCard.water == 'regularly') {
			water = '2-drops';
		}else if (plantsCard.water == 'daily') {
			water = '3-drops';
		}else {water = '1-drop';}

		// Template card staff favorite true

		cardFavorite.innerHTML = `
			
			<p class="staff-favorite font-bold light-green-bg">✨ Staff favorite</p>

			<div class="box-plant" style="background: url(${plantsCard.url}); background-size: 241px; background-repeat: no-repeat; background-position: center center;"></div>

			<div class="information">
				<p class="name-plant font-bold dark-green-color">${plantsCard.name}</p>

				<div class="box-price">
					<p class="price font-bold dark-green-color">$<span class="price-value">${plantsCard.price}</span></p>

					<div class="box-icons">
						
						${pet_toxicity ? '<img src="./img/icons/toxic.svg" class="icon-card">' : '<img src="./img/icons/pet.svg" class="icon-card">'}

						<img src="./img/icons/${sun}.svg" class="icon-card">

						<img src="./img/icons/${water}.svg" class="icon-card">

					</div>
				</div>
			</div>

		`

		// Template card staff favorite false > simple card

		card.innerHTML = `
			
			<div class="box-plant" style="background: url(${plantsCard.url}); background-size: 107px; background-repeat: no-repeat; background-position: center center;"></div>

			<p class="name-plant font-bold dark-green-color">${plantsCard.name}</p>

			<div class="box-price">
				<p class="price font-bold dark-green-color">$<span class="price-value">${plantsCard.price}</span></p>

				<div class="box-icons">

					${pet_toxicity ? '<img src="./img/icons/toxic.svg" class="icon-card">' : '<img src="./img/icons/pet.svg" class="icon-card">'}

					<img src="./img/icons/${sun}.svg" class="icon-card">

					<img src="./img/icons/${water}.svg" class="icon-card">
				</div>
			</div>

		`

		// Conditions for show card staff favorite true and false and running the function filterSelect

		if (plantsCard.staff_favorite == true) {

			document.querySelector('#box-cards').appendChild(cardFavorite);
			filterSelect();

		}else {

			document.querySelector('#box-cards').appendChild(card);
			filterSelect();
			
		}

	});

}
greenThumb.send();