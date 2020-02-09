function catalogUpdate(catalog, updates) {
    var foundList;
    for(var i=0;i<updates.length;i++){
        //Let's first see if the catalog already has that in a 0th node
        foundList=false;
        for(var n=0;n<catalog.length;n++){
            if(updates[i][0]==catalog[n][0]){
                addUpdate(catalog,updates,i,n)
                foundList = true;
            }
        }
        if(foundList==false){
            catalog.push(updates[i]);
        }
    }
    return catalog;
}

function addUpdate(catalog,updates,i,n){
    for(var j=0;j<updates[i].length;j++){
        catalog[n].push(updates[i][j]);
    }
}
var catalog = [["Books", "Classics", "Fiction"],
           ["Electronics", "Cell Phones", "Computers", "Ultimate item"],
           ["Grocery", "Beverages", "Snacks"],
           ["Snacks", "Chocolate", "Sweets"],
           ["root", "Books", "Electronics", "Grocery"]];
var updates = [["Snacks", "Marmalade"],
           ["Fiction", "Harry Potter"],
           ["root", "T-shirts"],
           ["T-shirts", "CodeFights"]];
console.log(catalogUpdate(catalog,updates))