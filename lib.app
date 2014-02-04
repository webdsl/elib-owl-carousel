module elib/elib-owl-carousel/lib

define carouselDivs(){
	var idAttr := attribute("id");
	var elemId := if (idAttr != "") idAttr else "carousel-"+randomUUID().toString();
	includeJS("jquery-1.8.2.min.js")
	includeJS("owl.carousel.min.js")
	includeCSS("owl.theme.css")
	includeCSS("owl.carousel.css")
	includeCSS("owl.transitions.css")
	
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