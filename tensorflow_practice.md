
 
 


### numpy array and tensor convert

**array 2  tensor** <br>
tf.constant(np.random.random((3,4))
tf.conver_to_tensor(np.array([1,2,3]))

**tensor 2 numpy array**<br>
tf.constant([1,2,3]).eval()
sess.run(tf.constant([1,2,3])



<br>
### batch size and step
**steps**: <br>
total iteration times.  one step calculate the loss of one batch, and use the loss to mod weight once
one step - one batch   1v1

**total trained examples** = steps * batch_size 

**periods**<br>
period is used for providing better visualization.
if steps 70, periods =7.
During the traing, it will output 7 times, and each time show the result of 10 steps (training information) loss or accuracy 




###session and grapha difference
tensorflow is a computing graph.  Tensor(variable) as edge. Operation as node.



### dimension 
scalar  array(5)  shape is 0
vector  shape is 1
matrix   >=2 

---------------scalar-------------------------------<br>
In [18]: tf.Variable(5)
Out[18]: <tf.Variable 'Variable:0' shape=() dtype=int32_ref>

In [22]: tf.Variable(5).shape
Out[22]: TensorShape([])

---------------vector------------------------------------<br>
In [20]: tf.Variable([5])
Out[20]: <tf.Variable 'Variable_1:0' shape=(1,) dtype=int32_ref>

In [21]: tf.Variable([5]).shape
Out[21]: TensorShape([Dimension(1)])



### operation
a = tf.constant(



###Interactive Session
sess = tf.InteractiveSession()
if not state this InteractiveSession, the tensor.eval() will notwork


### difference of Session and Graph

Grapha must run within a Session

Three steps run tensorflow
1) create tensor
2) define operation
3) run graph



### remember
tf.global_variables_initializer()

with tf.Graph().as_default():
    pass
with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())


### get shape
vec = tf.constant(np.array([2,3,4]))
use  vec.shape  or  vec.get_shape() to get the shape of the tensor


### Operation
'tf.add(A,B)'  and  'A + B '  both works


### tf.assign use
tf.assign is defining a assignment operation. When do tf.assign(x, 1) or x.assign(1).
the assignment is not exectuted, until the session begins.

assign_op = x.assign(1)
sess.run(assign_op)  # or `assign_op.op.run()`
print(x.eval())



### resource links
https://github.com/Kyubyong/tensorflow-exercises/blob/master/Math_Part1.ipynb
https://github.com/aymericdamien/TensorFlow-Examples/blob/master/examples/3_NeuralNetworks/convolutional_network_raw.py
https://developers.google.com/machine-learning/crash-course/first-steps-with-tensorflow/toolkit





























