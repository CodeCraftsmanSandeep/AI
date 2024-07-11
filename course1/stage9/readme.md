# Stage : 9 Deep learning

- Deep learning is an extension of neural networks. All deep learning models are neural networks, but not all neural networks are deep learning models. Deep learning leverages the structure and concepts of neural networks but scales them up to handle more complex and high-dimensional data. In summary, while neural networks form the foundational building blocks, deep learning represents an advanced approach that leverages deep architectures to automatically learn and model complex data representations.
- Artificial neuron
  - Perceptron
  - sigmoid neuron (or) logistic neuron
- Keras, TensorFlow(developed by google), CUDA(processing)

### Softmax
Softmax is a mathematical function used in machine learning, particularly in the context of neural networks, to convert a vector of values into a probability distribution. It is often used in the final layer of a classification neural network to predict the probabilities of different classes.

#### Key Characteristics:
1. **Normalization**: The output of the softmax function is a probability distribution, meaning that the values are all non-negative and sum to 1.
2. **Exponentiation**: By exponentiating the input values, the softmax function emphasizes the differences between them. Larger input values result in larger exponentiated values, making them more dominant in the resulting probability distribution.
3. **Class Predictions**: In classification tasks, the class with the highest probability can be taken as the predicted class.

#### Applications:

- **Multiclass Classification**: Softmax is commonly used in the final layer of neural networks for multiclass classification problems, where the goal is to assign an input to one of multiple classes.
- **Probability Outputs**: It is used when it is necessary to interpret the output of a model as probabilities.


# Key words
- Single cell perceptron
- Multi level perceptron
- Forward and backward propogation
- Stochastic gradient descent
- Neural networks based on direction of flow:
  - Feed forward neural networks
  - Cyclic neural networks (example: recurrent neural networks RNN)
- Based on edges:
  - Fully connected neural network
  - Partially connected neural network
- Gradient descent
- Epoch
  - In the context of machine learning, an epoch refers to one complete pass of the entire training dataset through the learning algorithm. It represents a fundamental concept in neural network training. An epoch is said to be completed when all the data samples have been exposed to the neural network for learning patterns.


