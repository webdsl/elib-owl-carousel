module elib/elib-owl-carousel/lib

define carouselDivs(){
	var idAttr := attribute("id");
	var elemId := if (idAttr != "") idAttr else "carousel-"+randomUUID().toString();
	includeJS( IncludePaths.jQueryJS() )
	includeJS("owl-carousel/owl.carousel.min.js")
	includeCSS("owl-carousel/owl.theme.css")
	includeCSS("owl-carousel/owl.carousel.css")
	includeCSS("owl-carousel/owl.transitions.css")
	
	div[id=elemId]{
		elements
	}
	
	
	<script>	
		$(document).ready(function() {
	 
		  $("#~elemId").owlCarousel({
		 
		      autoPlay: 8000, //Set AutoPlay to 8 sec
		 
		      items : 4,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,3]
		 
		  });
		 
		});
	</script>	
}