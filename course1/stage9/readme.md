# Stage : 9 Deep learning

- Deep learning is an extension of neural networks. All deep learning models are neural networks, but not all neural networks are deep learning models. Deep learning leverages the structure and concepts of neural networks but scales them up to handle more complex and high-dimensional data. In summary, while neural networks form the foundational building blocks, deep learning represents an advanced approach that leverages deep architectures to automatically learn and model complex data representations.
- Artificial neuron
  - Perceptron
  - sigmoid neuron (or) logistic neuron
- Keras, TensorFlow(developed by google), CUDA(processing)

### soft max
Softmax is a mathematical function used in machine learning, particularly in the context of neural networks, to convert a vector of values into a probability distribution. It is often used in the final layer of a classification neural network to predict the probabilities of different classes.

Here’s the softmax function defined for a vector \( z \) of \( n \) real numbers:

\[ \text{softmax}(z_i) = \frac{e^{z_i}}{\sum_{j=1}^{n} e^{z_j}} \]

where:
- \( z_i \) is the \( i \)-th element of the input vector \( z \).
- \( e \) is the base of the natural logarithm.
- The denominator is the sum of the exponentials of all elements in the input vector.

#### Key Characteristics:
1. **Normalization**: The output of the softmax function is a probability distribution, meaning that the values are all non-negative and sum to 1.
2. **Exponentiation**: By exponentiating the input values, the softmax function emphasizes the differences between them. Larger input values result in larger exponentiated values, making them more dominant in the resulting probability distribution.
3. **Class Predictions**: In classification tasks, the class with the highest probability can be taken as the predicted class.

#### Applications:

- **Multiclass Classification**: Softmax is commonly used in the final layer of neural networks for multiclass classification problems, where the goal is to assign an input to one of multiple classes.
- **Probability Outputs**: It is used when it is necessary to interpret the output of a model as probabilities.

#### Example:

Suppose you have a neural network that outputs a vector \( z = [2.0, 1.0, 0.1] \). The softmax function would convert these logits into probabilities as follows:

\[ \text{softmax}(2.0) = \frac{e^{2.0}}{e^{2.0} + e^{1.0} + e^{0.1}} \]
\[ \text{softmax}(1.0) = \frac{e^{1.0}}{e^{2.0} + e^{1.0} + e^{0.1}} \]
\[ \text{softmax}(0.1) = \frac{e^{0.1}}{e^{2.0} + e^{1.0} + e^{0.1}} \]

Calculating the exponentials and the sum:

\[ e^{2.0} \approx 7.389 \]
\[ e^{1.0} \approx 2.718 \]
\[ e^{0.1} \approx 1.105 \]

Sum of exponentials:

\[ 7.389 + 2.718 + 1.105 \approx 11.212 \]

So, the probabilities are:

\[ \text{softmax}(2.0) \approx \frac{7.389}{11.212} \approx 0.659 \]
\[ \text{softmax}(1.0) \approx \frac{2.718}{11.212} \approx 0.242 \]
\[ \text{softmax}(0.1) \approx \frac{1.105}{11.212} \approx 0.099 \]

Thus, the input vector \( z = [2.0, 1.0, 0.1] \) is converted into a probability distribution \( [0.659, 0.242, 0.099] \).

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


