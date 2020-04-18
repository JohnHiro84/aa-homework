---------------------

function balancedParenthesis(str){
  let paren_bal = 0, bracket_bal = 0, wavey_bal = 0;

  for(i in str){
    (str[i] === "(") ? paren_bal++ : (str[i] === ")") ? paren_bal-- : "";
    (str[i] === "[") ? bracket_bal++ : (str[i] === "]") ? bracket_bal-- : "";
    (str[i] === "{") ? wavey_bal++ : (str[i] === "}") ? wavey_bal-- : "";

    if(paren_bal < 0) return false;
    if(bracket_bal < 0) return false;
    if(wavey_bal < 0) return false;

  }
  return (paren_bal === 0 && bracket_bal === 0 && wavey_bal === 0) ? true: false
}

balancedParenthesis("(hello)");
balancedParenthesis("((waaa)");
balancedParenthesis("((())");

balancedParenthesis('(');
balancedParenthesis('()');
balancedParenthesis(')(');
balancedParenthesis(')()())');
balancedParenthesis('((()()))');

balancedParenthesis('[');
balancedParenthesis('{');
balancedParenthesis(')(');
balancedParenthesis(')()())');
balancedParenthesis('(((hello)()))');
balancedParenthesis('(([]({})()))');
balancedParenthesis('(([[[waaahhhh]]]()()))');
balancedParenthesis('((()({jam})))');
