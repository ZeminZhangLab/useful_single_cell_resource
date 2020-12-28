library("Seurat")
library("readr")
library("tidyr")
library("dplyr")
library("ggplot2")

# ---------------------------

# save sample names in variables
control.1.sample.name <- "R20055700-control1"
control.2.sample.name <- "R20055701-control2"
antiLIF.1.sample.name <- "R20055702-AntiLIF1"
antiLIF.2.sample.name <- "R20055703-AntiLIF2"
combo.1.sample.name <- "R20055704-Combo1"
combo.2.sample.name <- "R20055705-Combo2"

control <- "1 control"
anti.lif <- "2 aLIF"
combo <- "3 aLIF + aPD1"

sampleID.to.treatment.list <- list(
  control.1.sample.name = control,
  control.2.sample.name = control,
  antiLIF.1.sample.name = anti.lif,
  antiLIF.2.sample.name = anti.lif,
  combo.1.sample.name = combo,
  combo.2.sample.name = combo
)

# meta table column names
clusterID <- "clusterID"
sampleID <- "sampleID"

# ---------------------------

# define directories
base.data.dir <- ("../../PHASE1/1_GEX_DATA/")
list.files(base.data.dir)

base.data.dir <- c("../output_data/")
unfiltered.merged.Seurat <- paste0(base.data.dir, "unfiltered.merged.seurat.rds")
filtered.merged.Seurat <- paste0(base.data.dir, "filtered.merged.seurat.rds")
t.nk.cell.seurat <- paste0(base.data.dir, "t.nk.cell.seurat.rds")
myeloid.cell.seurat <- paste0(base.data.dir, "myeloid.cell.seurat.rds")
fibroblast.seurat <- paste0(base.data.dir, "fibroblast.seurat.rds")

base.figure.dir <- c("../output_figure/")


# ---------------------------

# read in filtered matrix

filtered.data.postfix <- "/outs/filtered_feature_bc_matrix"

control.1.filtered.data <- Read10X(paste0(base.data.dir, control.1.sample.name, filtered.data.postfix))

control.1.filtered.seurat <- CreateSeuratObject(counts = control.1.filtered.data, project = control.1.sample.name)

# merge individual sample Seurat objects
yikeyuan.combined.seurat <- merge(
  control.1.filtered.seurat,
  y=c(control.2.filtered.seurat, antiLIF.1.filtered.seurat, antiLIF.2.filtered.seurat,
      combo.1.filtered.seurat, combo.2.filtered.seurat),
  add.cell.ids = c(control.1.sample.name, control.2.sample.name, antiLIF.1.sample.name,
                   antiLIF.2.sample.name, combo.1.sample.name, combo.2.sample.name),
  project = "yikeyuan"
)

head(colnames(yikeyuan.combined.seurat))
table(yikeyuan.combined.seurat$orig.ident)

# ---------------------------

# visualize QC metrics
yikeyuan.combined.seurat[["percent.mt"]] <- PercentageFeatureSet(yikeyuan.combined.seurat, pattern = "^mt-")
VlnPlot(yikeyuan.combined.seurat, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)

# ---------------------------
# parameters to configure
temporary.seurat <- lujun.filtered.seurat
number.of.features <- 2000

# auto-code HVG
temporary.seurat <- NormalizeData(temporary.seurat, normalization.method = "LogNormalize")
temporary.seurat <- FindVariableFeatures(temporary.seurat, nfeatures = number.of.features)
plot.HVG <- VariableFeatures(temporary.seurat)[1:10]
VariableFeaturePlot(temporary.seurat) %>% 
  LabelPoints(points = plot.HVG)
# ggsave(paste0(base.figure.dir, "variable_feature_selection.pdf"), variable.feature.plot)

# auto-code PCA
temporary.all.genes <- rownames(temporary.seurat)
temporary.seurat <- ScaleData(temporary.seurat, features =temporary.all.genes)
temporary.seurat <- RunPCA(temporary.seurat)

# switch back
lujun.filtered.seurat <- temporary.seurat
rm(temporary.seurat)

DimPlot(lujun.filtered.seurat, reduction = "pca")
pca.plot<- DimPlot(lujun.filtered.seurat, reduction = "pca", group.by = sampleID) + 
  coord_fixed()
pca.plot
# ggsave(paste0(base.figure.dir, "pca_plot.pdf"), pca.plot)
# ---------------------------

# configure
temporary.seurat <- lujun.filtered.seurat
number.of.PC.used = 20

# auto code
temporary.seurat <- FindNeighbors(temporary.seurat, dims = 1:number.of.PC.used)
temporary.seurat <- FindClusters(temporary.seurat)
temporary.seurat[[clusterID]] <- FetchData(temporary.seurat, c("ident"))$ident
temporary.seurat <- RunUMAP(temporary.seurat, dims = 1:number.of.PC.used)

# switch back
lujun.filtered.seurat <- temporary.seurat

DimPlot(lujun.filtered.seurat, label=T, group.by = clusterID)
DimPlot(lujun.filtered.seurat, group.by = sampleID)

# ---------------------------
# configure
temporary.seurat <- lujun.filtered.seurat

# auto code
temporary.markers <- FindAllMarkers(temporary.seurat, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)
temporary.top.marker.dataframe <- temporary.markers %>% group_by(cluster) %>% top_n(n = 15, wt = avg_logFC)
temporary.top.marker.dataframe

# switch back
lujun.filtered.seurat <- temporary.seurat
lujun.markers <- temporary.markers
lujun.top.marker.dataframe <- temporary.top.marker.dataframe

lujun.top.marker.dataframe

# ---------------------------

DimPlot(object = data, reduction = "tsne", cells.highlight = WhichCells (data,idents = i), )+theme(legend.position = "none") + coord_fixed(1:1) + ggtitle(paste0(label = "Cluster ",i))

# ---------------------------

# ---------------------------
clusterID.to.clusterName.list <- list(
  
  "0":,
  "1":,
  "2":,
  "3":,
  "4":,
  "5":,
  "6":,
  "7":,
  "8":,
  "9":,
  "10":,
  "11":,
  "12":,
  "13":,
  "14":,
  "15":,
  "16":,
  "17":,
  "18":
  
)
