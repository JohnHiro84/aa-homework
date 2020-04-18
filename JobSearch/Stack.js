class Node {
  constructor(val) {
	this.value = val;
	this.next = null;
  }
}

class Stack {
  constructor() {
    this.top = null;
    this.bottom = null;
    this.length = 0;
  }
  pop(){
    if(this.top !== null && this.top !== this.bottom){
      let newTop = this.top.next;
      this.top = null;
      this.top = newTop;
    } else if (this.top === this.bottom){
      this.top = null;
      this.bottom = null;      
    }
  }

  push(val){
    const freshNode = new Node(val);

    if(this.top === null){
      this.top = freshNode;
      this.bottom = freshNode;
    } else if (this.top !== null){
      let temporaryNode = this.top;
      this.top = freshNode;
      freshNode.next = temporaryNode;
    }
  }
}
//


s = new Stack
s.push('a');
s.push('b');
s.push('c');
// s.pop();
