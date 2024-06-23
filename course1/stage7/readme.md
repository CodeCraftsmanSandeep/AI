# stage7: Decision trees

## notes
- Simple decision tree is easy to interpret.
- Decision tress:
    1) Regression trees
    2) Classification trees

### Regression tree
- We make build nodes in regression tree so that RSS (Residual Sum Of Squares) is minimized.
- Top down greedy approach : Recursive binary splitting
- If the tree has a lot of decision nodes then 
    1) it is difficult to interpret the model
    2) the model may overfit the data, which leads to high test error
- Tree pruining
    - Weakest link pruning (or) cost complexity pruning
- RSS is used to decide the split.
- Data used in [DecisionTreeRegressor.ipynb](DecisionTreeRegressor.ipynb)
    - [Movie_regression](data/Movie_regression.csv)
        - Collection is the dependent variable.
        - The data is not pre-processed.

### Classification tree
- In regression tree we use mean to predict outcome, but in classification we use mode.
- Here also we use recursive binary splitting.
- In classification we can use following to decide the split (at a decision node):
    1) Classification error rate
    2) Gini index
        - small value of Gini index indicates high node purity.
    3) Cross Entropy 
        - small value of cross entropy indicates high node purity.
- Data used in [DecisionTreeClassifier.ipynb](DecisionTreeClassifier.ipynb)
    - [Movie_classification](data/Movie_classification.csv)
        - Start_Tech_Oscar is the dependent variable.

