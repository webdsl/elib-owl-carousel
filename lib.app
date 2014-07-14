module elib/elib-owl-carousel/lib

define carouselDivs(){
	var idAttr := attribute("id");
	var elemId := if (idAttr != "") idAttr else "carousel-"+randomUUID().toString();
	includeJS( IncludePaths.jQueryJS() )
	includeJS("owl-carousel/owl.carousel.min.js")
	includeCSS("owl-carousel/owl.theme.css")
	includeCSS("owl-carousel/owl.carousel.css")
	includeCSS("owl-carousel/owl.transitions.css")
	
	div[id=elemId+"wrapper"]{
		div[id=elemId]{
			elements
		}
	}
	
	
	<script>	
		$(document).ready(function() {
	 
		  $("#~elemId").owlCarousel({
		 
		      autoPlay: 15000, //Set AutoPlay to 15 sec
		 
		      items : 4,
		      itemsDesktop : [1199,4],
		      itemsDesktopSmall : [979,4],
		      itemsTablet: [768,3],
		      itemsTabletSmall: [600,2],
		      itemsMobile: [479,2],
		      itemsScaleUp: false,
		      stopOnHover: true,
		      responsiveBaseWidth: "#~(elemId+"wrapper")"
		      
		 
		  });
		 
		});
	</script>	
}