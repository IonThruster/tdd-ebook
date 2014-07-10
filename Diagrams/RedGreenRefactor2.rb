# This code was generated by dot2ruby.g

require 'rubygems'
require 'graphviz'
require './Config'

g = GraphViz.digraph( "G", :use => :neato ) { |g|
  apply_config_to g
  
  red = g.add_nodes "Red", :fontsize => $DEFAULT_FONT_SIZE, :label => '<Write an <B>unfulfilled</B><br/> Statement>', :pos => '2,2!', :shape => 'Mrecord'
  green = g.add_nodes "Green", :fontsize => $DEFAULT_FONT_SIZE, :label => 'Fulfill it', :pos => '4.2,2!', :shape => 'Mrecord'
  refactor = g.add_nodes "Refactor", :fontsize => $DEFAULT_FONT_SIZE, :label => 'Refactor', :pos => '3,1!', :shape => 'Mrecord'
  begin_node = g.add_nodes "Begin", :fontsize => $DEFAULT_FONT_SIZE, :height => '0.1', :label => '', :pos => '0,2!', :shape => 'square', :style => 'invisible', :width => '0.1'

  g.add_edges red, green, fontsize: $DEFAULT_FONT_SIZE 
  g.add_edges green, refactor, fontsize: $DEFAULT_FONT_SIZE 
  g.add_edges refactor, red, fontsize: $DEFAULT_FONT_SIZE 
  g.add_edges begin_node, red, fontsize: $DEFAULT_FONT_SIZE 
  
}.output(:svg => "RedGreenRefactor2.svg")
