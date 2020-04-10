var image = [
[1,2,3,3,5,6,7,8,9,3],
[1,2,3,8,5,6,7,8,9,3],
[1,2,3,4,5,6,7,8,9,10],
[1,2,3,9,5,6,7,8,9,10],
[1,2,3,4,5,6,7,8,9,10],
[1,2,3,4,5,6,7,3,9,10]
]

var small =[
[3,4,5],
[3,4,5]
]
matrix(image,small)
function matrix(image,small){

    let lenSmall = small[0].length
    start = small[0][0]
    for(i = 0;i<image.length-(small.length-1);i++){
        for(y = 0; y <image[i].length-(lenSmall-1);y++){
            if(image[i][y] == start){
                if(checkValid(i,y,image,small)){
                    console.log('success',i,y)

                    return (true)
                }
            }
        }
    }
    console.log('failure')
    return(false)

}
function checkValid(i,y,image,small) {
    console.log('checking',i,y)
    for(x = 0; x < small.length; x++){
        for(z = 1; z < small[x].length;z++){
            if(small[x][z] != image[i+x][y+z]){
                return false
            }
        }
    }
    return true
}


//find start of small array in large array
//check next number
//continue till wrong or goto next row
//check number till wrong repeat
