

def item_order(order):
    hamburger=0
    salad=0
    water=0
    while order:
        #see which order ours is, tally it and remove those chars from string
        if order[0:5]=='salad':
            order=order[5:]
            salad+=1
        elif order[0:5]=='water':
            order=order[5:]
            water+=1
        elif order[0:9]=='hamburger':
            order=order[9:]
            hamburger+=1
        #if we're still in the middle and there's a space, remove it
        if order:
            order=order[1:]
    return('salad:'+str(salad)+' hamburger:'+str(hamburger)+' water:'+str(water))

orderA="hamburger water hamburger"
item_order(orderA)
