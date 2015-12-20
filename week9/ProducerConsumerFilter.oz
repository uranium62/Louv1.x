local Producer Filter Consumer S1 S2 in

fun {Producer N}
   local
	  fun {ProducerRev X}
		 if N + 1 > X then X|{ProducerRev X+1}
		 else nil end
	  end
   in
	  {ProducerRev 1}
   end
end

fun {Filter S}
   case S of X|S2 then 
	  if (X mod 2) == 1 then
		 X|{Filter S2}
	  else
		 {Filter S2}
	  end
   else nil end
end

fun {Consumer S}
   local
	  fun {ConsumerAcc S2 Acc}
		 case S2 of X|S3 then
			{ConsumerAcc S3 Acc+X}
		 else
			Acc
		 end
	  end
   in
	  {ConsumerAcc S 0}
   end
end

thread S1={Producer 20} end
thread S2={Filter S1} end
thread {Browse {Consumer S2}} end

end
