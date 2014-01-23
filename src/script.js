var height = 300;
var width = 400;

window.onload = function() {
  var g = new Graph();

  g.addEdge("cherry", "apple");
  g.addEdge("strawberry", "cherry");
  g.addEdge("strawberry", "apple");
  g.addEdge("strawberry", "tomato");
  g.addEdge("tomato", "apple");
  g.addEdge("cherry", "kiwi");
  g.addEdge("tomato", "kiwi");

  /* layout the graph using the Spring layout implementation */
  var layouter = new Graph.Layout.Spring(g);
  layouter.layout();

  /* draw the graph using the RaphaelJS draw implementation */
  var renderer = new Graph.Renderer.Raphael('canvas', g, width, height);
  renderer.draw();

  var redraw = function() {
    layouter.layout();
    renderer.draw();
  };
  $('#redraw').on('click', redraw);
};
