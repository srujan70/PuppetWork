$items = ["one","tw0","three",]

#notify { "${items[1]}": }

#notify { $items[0] : } 

notify { $items: } 


 
