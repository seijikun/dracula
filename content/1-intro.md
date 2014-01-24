title: 'Dracula Graph Library'


``` js
var g = new Graph();
 
g.addEdge("strawberry", "cherry");
g.addEdge("strawberry", "apple");
g.addEdge("strawberry", "tomato");
 
g.addEdge("tomato", "apple");
g.addEdge("tomato", "kiwi");
 
g.addEdge("cherry", "apple");
g.addEdge("cherry", "kiwi");
 
var layouter = new Graph.Layout.Spring(g);
layouter.layout();
 
var renderer = new Graph.Renderer.Raphael('canvas', g, 400, 300);
renderer.draw();
```

<div class='button_bar'>
<a href='/download' class='button'>Download v1.2</a>
<a href='/download' class='button alternative'>Source Code</a>
</div>

<div id='canvas'></div>
<a class='button' id='redraw'>redraw</a>
