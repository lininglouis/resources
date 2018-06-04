### model

model.compile(optimizer=opt, loss='categorical_crossentropy', metrics=['accuracy'])
### loss, optimizer, metrics 

model.fit(X_train, y_train, batch_size=16, epochs=3)

#loss
loss = ['categorical_crossentropy', 'mean_squared_error', 'binary_crossentropy']

#optimizer
from keras import optimizers
opt = optimizers.SGD(lr=1e-6, momentum=0, decay=0)
optimizers.Adam(b1, b2, decay)

#one hot
keras.utils.to_categorical(y=[1,2,3], num_classes=3)


#weights initialization
from keras import initializers
initializers.random_normal(mean, stddev)
initializers.he_normal(seed=42)
initializers.Zeros()
initializers.Ones()


### todo------------------------------
optimizer.adam   design
l2 norm implementation

