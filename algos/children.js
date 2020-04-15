function slnode(val){
    this.val = val
    this.next = null
    this.child = null
}


function flattenChildren(listhead){
    runner = listhead
    oldNext = []
    while(runner.next != null){
        if (runner.child){
            oldNext.push(runner.next)
            runner.next = runner.child
        }
        runner = runner.next
        if (runner.next == null ){
            runner.next = oldNext.pop()
        }
    }
    return listhead
}

function printout(node){
    runner = node
    while(runner){
        console.log(runner.val)
        runner = runner.next
    }
}

var a = new slnode('a')
var b = new slnode('b')
var c = new slnode('c')
var d = new slnode('d')
var e = new slnode('e')
var f = new slnode('f')
var g = new slnode('g')
var h = new slnode('h')
var i = new slnode('i')
var j = new slnode('j')

a.next = b
b.next = c
c.next = d

e.next = f
f.next = g

h.next = i
i.next = j

b.child = e
f.child = h
printout(a)
flattenChildren(a)
console.log('************')
printout(a)