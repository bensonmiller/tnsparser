puts $:
require 'treetop'
require_relative 'tnsparser/node_extensions'
#Treetop.load(File.join(basepath, 'tns_grammar.treetop'))
Treetop.load('tnsparser/tns_grammar.treetop')

def clean_tree(root_node)
  return if(root_node.elements.nil?)
  root_node.elements.delete_if{|node| node.class.name == 'Treetop::Runtime::SyntaxNode' }
  root_node.elements.each {|node| clean_tree(node) }
end

filenames = Dir["../data/tns_examples/*"]
filenames.each do |fname|
  f = File.open(fname, "r")
  contents = f.read
  f.close

  parser = TnsnamesParser.new
  tree = parser.parse(contents)
  puts "========== File: #{fname} ============"
  if tree
    #puts clean_tree(tree)
    puts tree.inspect
  else
    puts "Parse fail"
  end

end
