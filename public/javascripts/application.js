$(document).ready(function(){
	// tabs
	var tabContainers = $('div.tabs > div');
	tabContainers.hide().filter(':first').show();
	
	$('ul.tabnavigation a').click(function(){
		tabContainers.hide().filter(this.hash).show();
		$('ul.tabnavigation a').removeClass('selected');
		$(this).addClass('selected');
		return false;
	}).filter(':first').click(0);
	
	// load original listing in propery form
	var listingIframe = $('iframe#original_listing')[0];
	if (listingIframe) {
		$("input#property_listing_url").change(function(){
			var listing_url = this.value;
			if (listing_url != "") {
				listingIframe.src = listing_url;
			}
		});
	}
});