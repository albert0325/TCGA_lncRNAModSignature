df.module.gene <- as.data.frame(df.merge.3[,c('ENSG00000272402','ENSG00000232611','ENSG00000168288','ENSG00000111737','ENSG00000243368','ENSG00000131467','ENSG00000108829',
                                              'ENSG00000109971','ENSG00000003056','ENSG00000270419'
                                              ,'ENSG00000140575')])
corr <- cor(df.module.gene)
#install.packages("car")
library(car)


scatterplotMatrix(df.module.gene, spread = FALSE, main = 'Scatter Plot Matrix')

fit.gene.exp <- lm(ENSG00000232611 ~ ENSG00000168288 + ENSG00000111737+
                     ENSG00000243368 + ENSG00000131467 + ENSG00000108829+
                     ENSG00000272402 + ENSG00000109971+
                     ENSG00000003056 + ENSG00000270419 +
                     ENSG00000140575, data = df.module.gene)
summary(fit.gene.exp)






