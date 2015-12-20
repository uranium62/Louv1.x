% Genericity (Generic sum)
% Genericity is when a function is passed as an input

declare
fun {Map F L}
	case L of
		nil then nil
		[] H|T then {F H}|{Map F T}
	end
end

{Browse {Map fun {$ X} X*X end [7 8 9]}}



% Instantiation (Incapsulation)
% Instantiation is when a function is returned as an output

declare  
fun {MakeAdd A}
	fun {$ X} X + A end
end

Add5 = {MakeAdd 5}
{Browse {Add5 100}}



% Function composition (Lazy loading)

declare
fun {Compose F1 F2}
  fun {$ X} {F {G X}} end
end

com1 = {Compose fun{$ X} X*X end
				fun{$ X} X+1 end}			
result = {com1 5}