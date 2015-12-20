declare
fun {Fact N}

   local FactDo FactLst in	  
	  fun {FactDo L Acc}
		 if L == 1 then Acc
		 else {FactDo L-1 L*Acc} end
	  end
	  fun {FactLst I N }
		 if I == N + 1 then nil
		 else {FactDo I 1} | {FactLst I+1 N} end 
	  end  
	  {FactLst 1 N}
   end
   
end

{Browse {Fact 4}}