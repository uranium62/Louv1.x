declare
class Collection
   attr L
   meth init
      L := nil
   end
   meth isEmpty($)
      @L == nil
   end
   meth put(Book)
      L := Book|@L
   end
   meth get($)
      local Book in
	 Book = @L.1
	 L := @L.2
	 Book
      end
   end
   meth union(C)
      local Book in
	 if {C isEmpty($)} then skip
	 else
	    {C get(Book)}
	    {self put(Book)}
	    {self union(C)}
	 end
      end
   end
end

Ca={New Collection init}
Cb={New Collection init}
{Browse Collection.methods.init}

{Ca put(1)}
{Ca put(3)}
{Cb put(2)}
{Cb put(4)}
{Cb put(6)}
{Browse {Cb get($)}}
{Ca union(Cb)}
{Browse {Ca isEmpty($)}}
{Browse {Cb isEmpty($)}}