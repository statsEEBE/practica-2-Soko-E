mis_dades = iris;


Petal.Length = mis_dades$Petal.Length;
Sepal.Length = mis_dades$Sepal.Length;
data = data.frame(Petal.Length,Sepal.Length);

# la formula es Sepal.Length = m*Petal.Length+b
# quitamos los coeffs y tenemos la formula a dar a R
# la formula ha poner entonces es Sepal.Length ~ Petal.Length


linear=lm(Sepal.Length ~ Petal.Length,data)
#donde los coeficientes son m = petalLength; b = intercept
linear$coefficients


# prediccion si Petal.Length =1.5
predict.lm(linear,newdata=data.frame(Petal.Length=1.5))
