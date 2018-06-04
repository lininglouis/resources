
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
 



### Experience
dropout的位置？
可以放在maxpooling前或者后，都行。

batchnorm位置？

conv2D和dense都可以接activation
activation可以接字符串'relu'  也可以接具体激活函数 from keras import backend as K;  Activation(K.tanh)



### todo------------------------------
optimizer.adam   design
l2 norm implementation  和 gradient clipping


