declare
fun {Prod N}
	{Delay 1000}
	N|{Prod N+1}
end

declare
proc {Trans S}
	case S of X|S2 then X*X|{Trans  S2} end
end

declare
proc {Disp S}
   case S of X|S2 then {Browse X} {Disp S2} end
end

declare A1
declare A2
thread A1={Prod 1} end
thread A2={Trans A1} end
thread {Disp A2} end