```python
class Node:
    
    def __init__(self, key=None, value=None):
        self.key = key
        self.value = value
        self.next = None
        
        

class LRUCache:
    """
    @param: capacity: An integer
    """
    def __init__(self, capacity):
        # do intialization if necessary
        self.data = {}
        self.head = Node()
        self.tail = self.head
        self.capacity = capacity
 
    """
    @param: key: An integer
    @return: An integer
    """
    def get(self, key):
        #self.printall()
        # it wont change capacity
        # write your code here
        if key not in self.data:
            return -1
 
            
        val = self.data[key].next.value
        self.kick(self.data[key])
        return val
        
            
    """
    @param: key: An integer
    @param: value: An integer
    @return: nothing
    """
    
    
    def printall(self):
        pt = self.head
        while pt != None:
            print(pt.key) 
            pt = pt.next
        print("---------------")
 
        
    def kick(self, pre):
        node = pre.next
 
        if node == self.tail:
            return
 
        pre.next = node.next
        if node.next is not None: 
            self.data[node.next.key] = pre      #two compliate !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            node.next = None
        self.push_back(node)   
  
        
    def push_back(self, node):
        
        self.data[node.key] = self.tail
        self.tail.next = node
        self.tail = node

  
    def set(self, key, value):
        # write your code here
 
        if key in self.data:
           self.kick(self.data[key])
           self.data[key].next.value = value #update  value in the node
 
        else:
     
            if len(self.data) == self.capacity: # delete last node
   
                del self.data[self.head.next.key]
                self.head.next = self.head.next.next
                
                if self.head.next != None:
                    self.data[self.head.next.key] = self.head          
                    
 
            # add new never to tail
            self.push_back(Node(key=key, value = value))
 
            #self.printall()
            
 
```            
