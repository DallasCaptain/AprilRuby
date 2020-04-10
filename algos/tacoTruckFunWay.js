cust = [
    [1,7],
    [3,3],
    [2,4],
    [5,9],
    [3,4]
]

minx =cust[0][0]
miny =cust[0][1]
maxx =0
maxy =0

for(let c of cust){
    minx = Math.min(c[0],minx)
    miny = Math.min(c[1],miny)
    maxx = Math.max(c[0],maxx)
    maxy= Math.max(c[1],maxy)
}
// console.log(miny,minx)
mindistance =[0,0,Infinity]

for(let x =minx; x<=maxx;x++){
    for(let y =miny;y<=maxy;y++){
        distance = 0
        for(let c of cust){
            console.log(distance,Math.abs(c[0]-x),Math.abs(c[1]-y))
            distance += Math.abs(c[0]-x)
            distance += Math.abs(c[1]-y)
            console.log(distance)
        }
        if (mindistance[2] > distance){
            mindistance = [x,y,distance]
        }
        
    }
}

console.log ([mindistance[0],mindistance[1]])