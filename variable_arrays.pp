$items = ["one",2,false,]

#notify { "${items[1]}": }

#notify { $items[0] : } 

notify { $items: } 


 
