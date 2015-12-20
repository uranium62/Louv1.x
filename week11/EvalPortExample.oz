declare
S P = {NewPort S}
{Browse S}
for E in S do
   {Browse E}
   case E of pair(r X) then X = ok
   else skip end
end

{Send P a}
{Send P b}

declare R
{Browse R}
{Send P pair(r R)}

{Send P pair(r _)}
{Send P notpair(r _)}

% a|a|a|b|pair(r ok)|pair(r ok)|notpair(r _)|_<future>