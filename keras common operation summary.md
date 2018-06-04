
### model

model.compile(optimizer=opt, loss='categorical_crossentropy', metrics=['accuracy'])
# three parameters loss, optimizer, metrics 
model.fit(X_train, y_train, batch_size=16, epochs=3
model.summary()

### layers
Input
Dense(units, activation), Conv2D(filters, kernel_size, activation), Activation('relu'), Maxpooling2D(pooling_size=(2,2))
Flatten()
Dropout(rate=0.5),  BatchNormalization()


### loss
loss = ['categorical_crossentropy', 'mean_squared_error', 'binary_crossentropy']

### optimizer
from keras import optimizers
optimizers.adam(beta_1=0.9, beta_2=0.999, decay=0)
opt = optimizers.sgd(lr=1e-6, momentum=0, decay=0)
optimizers.Adam(b1, b2, decay)


#### one hot
keras.utils.to_categorical(y=[1,2,3], num_classes=3)


### weights initialization
from keras import initializers
initializers.random_normal(mean, stddev)
initializers.truncated_normal(mean, stddev)
initializers.he_normal(seed=42)
initializers.Zeros()
initializers.Ones()

Dense(units=512, \
      kernel_initializer = keras.initializers.random_normal(stddev=0.05), \
      bias_initializer = keras.initializers.Ones())

### activation
Activation('relu'), K.relu
from keras import backend as K.


### 正则化
Conv2D(filters, kernel_size, kernel_regularizer=regularizers.l2(0.01))
 
 
### TimeDistributed
一个wrapper，对每个step做相同处理

必要条件
There are two key points to remember when using the TimeDistributed wrapper layer:
1) **The input must be (at least) 3D.** This often means that you will need to configure your last LSTM layer prior to your TimeDistributed wrapped Dense layer to return sequences (e.g. set the “return_sequences” argument to “True”).
2) **The output will be 3D.** This means that if your TimeDistributed wrapped Dense layer is your output layer and you are predicting a sequence, you will need to resize your y array into a 3D vector.

Helpful Explanations:
https://datascience.stackexchange.com/questions/10836/the-difference-between-dense-and-timedistributeddense-of-keras

TimeDistributed input必须是3D的。
因为首先sample 第0维度， timestep第1个维度，每个timestep内部的具体数据在第2个维度或者更高的维度。
所以至少有三个维度
同样TimeDistribute只针对每个timestemp内部进行相同处理，也就是每个timestemp都会返回一个结果。因此batch,timestep, output也至少是三个维度。

### Experience
dropout的位置？
可以放在maxpooling前或者后，都行。

batchnorm位置？

conv2D和dense都可以接activation
activation可以接字符串'relu'  也可以接具体激活函数 from keras import backend as K;  Activation(K.tanh)



### todo------------------------------
optimizer.adam   design
l2 norm implementation  和 gradient clipping


