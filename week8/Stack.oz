declare
class Stack
   attr cell

   meth init
      cell:=nil
   end

   meth size($)
      {Length @cell}
   end

   meth isEmpty($)
      @cell==nil
   end

   meth top($)
      if @cell==nil then
         raise topEmptyStack end
      else @cell.1 end
   end

   meth push(X)
      cell:=X|@cell
   end

   meth pop($)
      if @cell==nil then
         raise popEmptyStack end
      else local H in
              H = @cell.1
              cell:=@cell.2
              H
           end
      end
   end
end

class Queue
   attr cell

   meth init
      cell:=nil
   end

   meth size($)
      {Length @cell}
   end

   meth isEmpty($)
      @cell==nil
   end

   meth front($)
      if @cell==nil then
         raise frontEmptyQueue end
      else {Nth @cell {Length @cell}} end
   end

   meth enqueue(X)
      cell:=X|@cell
   end

   meth dequeue($)
      if @cell==nil then
         raise dequeueEmptyQueue end
      else local Len={Length @cell} H List in
              H = {Nth @cell Len}
              List=@cell
              cell:=nil
              for I in Len-1..1;~1 do
                 cell:={Nth List I}|@cell
              end
              H
           end
      end
   end
end

local S={New Stack init}  in
   {Browse {S size($)}}
   {Browse {S isEmpty($)}}
   %{Browse {S top($)}}
   {S push(8)}
   {Browse {S size($)}}
   {Browse {S isEmpty($)}}
   {Browse {S top($)}}
   {Browse {S pop($)}}
   %{Browse {S pop($)}}
end

local S={New Queue init}  in
   {Browse {S size($)}}
   {Browse {S isEmpty($)}}
   %{Browse {S top($)}}
   {S enqueue(8)}
   {S enqueue(7)}
   {Browse {S size($)}}
   {Browse {S isEmpty($)}}
   {Browse {S front($)}}
   {Browse {S dequeue($)}}
   {Browse {S size($)}}
   {Browse {S front($)}}
   %{Browse {S pop($)}}
end