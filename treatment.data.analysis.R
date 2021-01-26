# observer whether T cell is antigen reactive using CD39
FeaturePlot(su001.cd8.seurat, features = c("ENTPD1"), 
  split.by = "treatment", ncol = 2, cols=c("grey", "yellow", "red"), coord.fixed = T, order = T, pt.size = 0.1)
  
# observer whether T cell is proliferative using MKI67
FeaturePlot(su001.cd8.seurat, features = c("MKI67"), 
  split.by = "treatment", ncol = 2, cols=c("grey", "yellow", "red"), coord.fixed = T, order = T, pt.size = 0.1)
  
