# stage7: Decision trees

## About data
- [Movie_regression](data/Movie_regression.csv)
    - Collection is the dependent variable.
    - The data is not pre-processed.

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
    

