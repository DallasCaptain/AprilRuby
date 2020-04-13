function SLLIST(){
    this.head = null;
}

function SLNODE(val){
    this.val = val;
    this.next = null;
}

list = SLLIST()
node1 = SLNODE(6)
node2 = SLNODE(9)
node1.next = node2
list.head = node1


function clLast2(list){
    runner = list.head
    follower =list.head
    while (runner.next != null){
        follower = runner
        runner = runner.next
    }
    console.log(runner.val,follower.val)
}