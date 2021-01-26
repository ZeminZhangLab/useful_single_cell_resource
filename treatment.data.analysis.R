# CD8 compartment
# observe whether T cell is antigen reactive using CD39
FeaturePlot(su001.cd8.seurat, features = c("ENTPD1"), 
  split.by = "treatment", ncol = 2, cols=c("grey", "yellow", "red"), coord.fixed = T, order = T, pt.size = 0.1)
  
# observe whether T cell is proliferative using MKI67
FeaturePlot(su001.cd8.seurat, features = c("MKI67"), 
  split.by = "treatment", ncol = 2, cols=c("grey", "yellow", "red"), coord.fixed = T, order = T, pt.size = 0.1)
  
# TCF7
FeaturePlot(su009.cd4.seurat, features = c("FOXP3", "CCR8"), 
            split.by = "treatment", cols=c("grey", "yellow", "red"), coord.fixed = T, order = T, pt.size = 0.1)
# PDCD1
# GZMB

# CD4 compartment
# obeserve Treg increase following PD1 treatment
FeaturePlot(su009.cd4.seurat, features = c("FOXP3", "CCR8"), 
            split.by = "treatment", cols=c("grey", "yellow", "red"), coord.fixed = T, order = T, pt.size = 0.1)

# 
