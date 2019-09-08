require_relative '../../textmate_tools.rb'
tokens = [
    { representation: 'ENV'    , areBuiltIn: true },
    { representation: 'INC'    , areBuiltIn: true },
    { representation: 'ARGV'   , areBuiltIn: true },
    { representation: 'ARGVOUT', areBuiltIn: true },
    { representation: 'SIG'    , areBuiltIn: true },
    { representation: 'STDIN'  , areBuiltIn: true },
    { representation: 'STDOUT' , areBuiltIn: true },
    { representation: 'STDERR' , areBuiltIn: true },
    # arithmetic,
    { representation: "+",    areOperators: true, areArithmeticOperators: true },
    { representation: "-",    areOperators: true, areArithmeticOperators: true },
    { representation: "*",    areOperators: true, areArithmeticOperators: true },
    { representation: "/",    areOperators: true, areArithmeticOperators: true },
    { representation: "**",   areOperators: true, areArithmeticOperators: true },
    { representation: "%",    areOperators: true, areArithmeticOperators: true },
    # arithmetic assignment,
    { representation: "+=",   areOperators: true, areArithmeticOperators: true, areAssignmentOperators: true },
    { representation: "-=",   areOperators: true, areArithmeticOperators: true, areAssignmentOperators: true },
    { representation: "*=",   areOperators: true, areArithmeticOperators: true, areAssignmentOperators: true },
    { representation: "/=",   areOperators: true, areArithmeticOperators: true, areAssignmentOperators: true },
    { representation: "%=",   areOperators: true, areArithmeticOperators: true, areAssignmentOperators: true },
    { representation: "--",   areOperators: true, areArithmeticOperators: true, },
    { representation: "++",   areOperators: true, areArithmeticOperators: true, },
    # comparison,
    { representation: "==",   areOperators: true, areComparisonOperators: true },
    { representation: "!=",   areOperators: true, areComparisonOperators: true },
    { representation: ">",    areOperators: true, areComparisonOperators: true },
    { representation: "<",    areOperators: true, areComparisonOperators: true },
    { representation: ">=",   areOperators: true, areComparisonOperators: true },
    { representation: "<=",   areOperators: true, areComparisonOperators: true },
    # logical operators,
    { representation: "&&",   areOperators: true, areLogicalOperators: true },
    { representation: "||",   areOperators: true, areLogicalOperators: true },
    { representation: "and",  areOperators: true, areLogicalOperators: true, areOperatorAliases: true },
    { representation: "or",   areOperators: true, areLogicalOperators: true, areOperatorAliases: true },
    # bitwise,
    { representation: "<<",   areOperators: true, areBitwiseOperators: true },
    { representation: ">>",   areOperators: true, areBitwiseOperators: true },
    { representation: "&",    areOperators: true, areBitwiseOperators: true },
    { representation: "|",    areOperators: true, areBitwiseOperators: true },
    { representation: "^",    areOperators: true, areBitwiseOperators: true },
    { representation: "<<=",  areOperators: true, areBitwiseOperators: true, areAssignmentOperators: true },
    { representation: ">>=",  areOperators: true, areBitwiseOperators: true, areAssignmentOperators: true },
    { representation: "&=",   areOperators: true, areBitwiseOperators: true, areAssignmentOperators: true },
    { representation: "|=",   areOperators: true, areBitwiseOperators: true, areAssignmentOperators: true },
    { representation: "^=",   areOperators: true, areBitwiseOperators: true, areAssignmentOperators: true },
    # assignment,
    { representation: "=",    areOperators: true, areAssignmentOperators: true },
]

@tokens = TokenHelper.new tokens