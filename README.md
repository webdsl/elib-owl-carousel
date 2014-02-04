elib-owl-carousel
=================

Elib for using the owl carousel in WebDSL

See: http://www.owlgraphic.com/owlcarousel/

### Usage:

wrap your items in the carouselDivs template, e.g.:

```
carouselDivs{
  for(ent in listOfEnts){
    div{ output(ent) }
  }
}
```