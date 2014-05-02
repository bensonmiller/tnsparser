# Extensions to the Treetop 'SyntaxNode' class for the custom
# grammar nodes defined in tns_grammar.treetop.
#
module Tnsnames

  class Tns < Treetop::Runtime::SyntaxNode
  end

  class Expression < Treetop::Runtime::SyntaxNode
  end

  class Value < Treetop::Runtime::SyntaxNode
  end

  class Comment < Treetop::Runtime::SyntaxNode
  end

  class Blankline < Treetop::Runtime::SyntaxNode
  end

  class NetServiceStanza < Treetop::Runtime::SyntaxNode
  end

  class KeywordAddress < Treetop::Runtime::SyntaxNode
  end

  class KeywordAddressList < Treetop::Runtime::SyntaxNode
  end

  class KeywordConnectData < Treetop::Runtime::SyntaxNode
  end

  class KeywordPort < Treetop::Runtime::SyntaxNode
  end

  class KeywordProtocol < Treetop::Runtime::SyntaxNode
  end

  class KeywordHost < Treetop::Runtime::SyntaxNode
  end

  class KeywordDescription < Treetop::Runtime::SyntaxNode
  end

  class KeywordServer < Treetop::Runtime::SyntaxNode
  end

  class KeywordServiceName < Treetop::Runtime::SyntaxNode
  end

end
