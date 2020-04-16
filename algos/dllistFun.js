function DLList(){
    this.head = null
    this.tail = null

    function push(node){
        this.tail.next = node
        node.prev = this.tail
        this.tail = node
        return this
    }

    function pop(){
        result = this.tail
        this.tail = this.tail.prev
        this.tail.next = null
        result.prev = null
        return result

    }

}

function DLNode(val){
    this.val = val
    this.prev = null
    this.next = null
}

