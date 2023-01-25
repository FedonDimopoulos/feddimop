// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery-ui

import "@hotwired/turbo-rails"
import "controllers"
 
$( function() {
	var cache = {};
	$( "#property_area_description" ).autocomplete({
		minLength: 3,
		source: function( request, response ) {
			var input = request.term;
			request.input = input;
			delete request.term;
			if ( input in cache ) {
				response( cache[ input ] );
				return;
			}
	 		$.getJSON( "http://localhost:3000/areas", request)
	 			.done( function( data ) {
					cache[ input ] = data;
					response( data );
		  		})
				.fail(function( jqxhr, textStatus, error ) {
					var err = textStatus + ", " + error;
    				console.log( "Request Failed: " + err );
				});
		},
		select: function( event, ui ) {
			this.value = ui.item.label;
			$("#property_area_id").val(ui.item.value);
			return false;
		}
	});
});