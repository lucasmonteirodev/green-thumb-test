function filterSelect (){
			
	var $grid = document.querySelector('.grid');

	if (document.documentElement.clientWidth < 767) {

		var iso = new Isotope( $grid, {
			layoutMode: 'horiz',
				itemSelector: '.card'
		});

	}else {

		var iso = new Isotope( $grid, {
			layoutMode: 'packery',
				itemSelector: '.card'
		});

	}

	// Filter
	(function() {

	  // Get references to select list and display text box
	  var $selectFilters = document.querySelectorAll('#modulo2 select'),
	      filters = {};

	  // Get selected option
	  function getSelectedOption(sel) {
	    var opt;
	    for ( var i = 0, len = sel.options.length; i < len; i++ ) {
	      opt = sel.options[i];
	      if ( opt.selected === true ) {
	        break;
	      }
	    }
	    return opt;
	  }

	  // Loop all selects
	  for(i=0; i<$selectFilters.length; i++) {

	    // Add change event to each select
	    $selectFilters[i].addEventListener('change', function(event) {  
	        
	        // Get option form select event
	        var opt = getSelectedOption(event.target);
	        
	        // Get the data fitler group then the value
	        var selectGroup = fizzyUIUtils.getParent( event.target, '.c-select' );
	        filters[selectGroup.dataset.filterGroup] = opt.value;
	        
	        var isoFilters = [];
	        for (var group in filters) {         
	            isoFilters.push(filters[group])
	        }
	      
	        var selector = concatValues(isoFilters);
	        
	        iso.arrange({
	            filter: selector
	        });    
	      
	        var total = iso.getFilteredItemElements();


	        var noResultDiv = document.getElementById("no-results");
	        var resultDiv = document.getElementById("results");

	        if (total.length == 0) {

	        	noResultDiv.classList.remove("inactive");
	        	resultDiv.classList.remove("active");
	        	resultDiv.classList.add("inactive");
					noResultDiv.classList.add("active");

	        }else {

	        	resultDiv.classList.remove("inactive");
	        	noResultDiv.classList.remove("active");
	        	noResultDiv.classList.add("inactive");
					resultDiv.classList.add("active");

	        }
	             
	      return false;
	      
	    });    

	  }   

	}());


	function concatValues( obj ) {
	  var value = '';
	  for ( var prop in obj ) {
	    value += obj[ prop ];
	  }
	  return value;
	}
	
}