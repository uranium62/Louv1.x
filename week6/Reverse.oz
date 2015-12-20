declare Reverse
fun {Reverse L}
   local Res in
      Res = {NewCell nil}
      for E in L do
	   Res := E | @Res
      end
      @Res
   end
end

{Browse {Reverse [1 2 3 4 5]}}