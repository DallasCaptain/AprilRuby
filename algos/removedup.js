arr =  [1,4,2,4,5,6,4,2,2,3,4,5,6,7,7]
// [1,7,6,5,6,4,2,2,3,4,5]
// [1,4,2,5,6,7,3]


// [1,4,2,5,6,3,7]

// Array.push()
// Array.pop()

function removeDupe(arr) {
    dict ={}
    uniques ={}
    uniquecount = 0
    for (i = 0; i < arr.length; i++) {
        if (!uniques[arr[i]]){
            dict[uniquecount] = arr[i]
            uniques[arr[i]]=1
            uniquecount++
        }
        //console.log(dict)
        
    }
    //{ '0': 1, '1': 4, '2': 2, '3': 4, '4': 5, '5': 6, '6': 6, '7': 7 }
    //[1,4,2]
    for (i = 0; i < arr.length; i++) {
        if(i > uniquecount-1){
            arr.pop()
            i--
        }else{
            arr[i] = dict[i]
        }
        //console.log(arr)
        
    }
    // console.log(Object.keys(dict).length)
    // console.log(dict)
    return arr
}
//console.log(removeDupe(arr))






function remove_dupes(arr){
    var seen = {};
    
    var k = 0;
    for( var i=0; i<arr.length ;i++) {
      if( !seen[arr[i]] ) {
            console.log(arr,i,k)
        arr[k++] = arr[i];
            console.log(arr,i,k)
        
        seen[arr[i]] = 'seen';
      }
    }
    
    arr.length = k;
  }
  
  
  var x = [ 1, 2, 1, 4, 5, 3, 'dojo', 4, 6, 6, 7, 7, 6, 7, 5, 6, 6, 6, 6, 7, 'dojo', 11 ];
  remove_dupes(x);
  console.log(x)