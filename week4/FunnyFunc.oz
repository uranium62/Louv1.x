declare
fun {FunnyFunc FunL L}
    case L of H|T then {FunL.1 H}|{FunnyFunc FunL.2 T}
    else nil
    end
end

proc {Test FunL L SolL}
   {Browse {FunnyFunc FunL L  } == SolL}
end

L1 = [fun {$ X} X * 2 end
	  fun {$ X} X * 3 end
	  fun {$ X} X * 4 end]
L2 = [1 2 3]
L3 = [2 6 12] 

{Test L1 L2 L3}
