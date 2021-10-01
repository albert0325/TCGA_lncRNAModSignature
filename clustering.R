df.module.gene <- as.data.frame(df.merge.3[,c('ENSG00000272402','ENSG00000232611','ENSG00000168288','ENSG00000111737','ENSG00000243368','ENSG00000131467','ENSG00000108829',
                                              'ENSG00000109971','ENSG00000003056','ENSG00000270419'
                                              ,'ENSG00000140575')])
rownames(df.module.gene) <- df.merge.3[,1]
corr_by_spear_r <- cor(df.module.gene, method = "spearman")

heatmap(corr_by_spear_r,cexRow=0.5, cexCol = 0.5)

data <- as.matrix(df.module.gene)
heatmap(data)

