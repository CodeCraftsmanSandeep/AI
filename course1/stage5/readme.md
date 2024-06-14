# Stage5 : Linear regression

- Simple linear regression: predicting Y based on a single predictor variable X.
- Standard Error SE($) is how far the estimated coeffecient is from population coefficient.
-  **Multiple linear regression**
    - more than one predictor variable
    - just an extension of simple linear regression
    - Multiple R-squared: 0.72
        - that means 72 percent of the variance in the values of price is explained by the model
    - Adjusted R-squared
        - taking into account the number of variables.
- **The F-statistic**
    - ![alt text](image.png)
    - If we see individual p-values and make conclusion that at least one of the coeff is not zero, then we are doing mistake!! 
        - We have to see F-static, which takes into account all variables.
            - If the p-value corresponding to F-statis is small, then we can assure that there is a signifact relationship between predictor values and output value (that is at least one coeff of all variables is not zero)
- **Interpreting results of categorical variables**
    - ![alt text](image-1.png)
        - As the p-values in above picture are low
        - that means statistically there is less confidence that relationship given by estimated holds (or) not
        

## Keywords
- Simple regression.
- Least squared error.
- Residual sum of squares (RSS).
- Sample regression line.
- Population regression line.
- Residual standard error. (RSE)
- Hypothesis testing.
