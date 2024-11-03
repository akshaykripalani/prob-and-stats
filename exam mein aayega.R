data("mtcars")
df=mtcars
df
df$log_hp = log(df$hp)
ggplot(df, aes(x=log_hp)) + geom_histogram(bins=30) + theme_minimal()

mat = cor(mtcars)
corrplot(mat, method="color", type="lower", tl.col="black", tl.srt=45)
cor(df$hp,  df$mpg, method="pearson")
plot(df$hp, df$mpg)
#use pearson if its normal data and use spearman if ranked data)
cor(df$hp,  df$mpg, method="spearman")
pairs(mtcars[,c(1,2,4)])
pairs
 