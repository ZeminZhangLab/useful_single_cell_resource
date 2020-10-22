conventional.T.cell.markers <- c(
  'CD3D',
  'CD4',
  'CD8A',
  'FOXP3'
)

effector.markers <- c(
  'GZMA', # granzyme expression during the differentiation process of memory CD8+ T cells might be as follows: GrA+/GrB–/GrK+ ? GrA+/GrB+/GrK+ ? GrA+/GrB+/GrK– [12]
  'GZMB', # granzyme expression during the differentiation process of memory CD8+ T cells might be as follows: GrA+/GrB–/GrK+ ? GrA+/GrB+/GrK+ ? GrA+/GrB+/GrK– [12]
  'GZMK', # granzyme expression during the differentiation process of memory CD8+ T cells might be as follows: GrA+/GrB–/GrK+ ? GrA+/GrB+/GrK+ ? GrA+/GrB+/GrK– [12] ranked in early effector memory subset [3, 13]
  'GZMH',
  'GNLY',
  'PRF1',
  'IFNG'
)

naive.markers <- c(
  "LEF1",
  "CCR7",
  "SELL",
  "TCF7",
  
  "MAL", # correlates surprisingly well (tSNE gene expression) with CCR7 [1~3], functions in immunology not completely understood but well summarized[7]. worth further looking at if have time. Biomarker in treatment response a story? 
  "IL7R", # in pan-T ranked as a marker. However, expressed in almost all cd8&4 except exhausted [1~3]. involved in VDJ recombination [4]. suggested in Melanoma & BCC, could be skin-cancer enriched? [5] but not validated in [6]. Don't suggest to use when assigning clusters. Could use in retrospection. In fact, almost useless in defining Naive.
  ""
)

memory.markers <- c(
  
  # effector memory
  "CXCR4", # expressed in almost all T cells but slightly higer in Tem. ranked as marker of Tem[3]. function similar to CXCR3, expressed in a variety of immune cells [15]
  "CXCR3", # ligands: CXCL9, CXCL10 and CXCL11 are commonly produced by local cells in inflammatory lesion, suggesting that CXCR3 and its chemokines participate in the recruitment of inflammatory cells[14]. marker of Tem[14, 3].
  "CD44", # cell adhesion molecule, expressed "in many cell types" [8]. expressed on almost all T cells [3]. indicated as 'effector-memory T cell marker' [8, 9]
  "CCR5", # breast cancer expression & target, involved in HIV. T cell function not well established [10]. expression related to but not well-distinguish Tem [2, 3]. Suggested as Tem marker [11]. likely that CCR5 plays a role in inflammatory responses to infection, though its exact role in normal immune function is unclear[10]
  "GZMK", # see above
)

resident.markers <-c(

  "CD69", # [18] The general idea is straightforward in that CD69 & ITGAE are related to cell-adhesion molecules. Binding parteners of CD69 & CD103 is expressed in tissue (epithelial, etc? check [18])
  "ITGAE", # also CD103 [18]
)

inflamatory.markers <- c(

  "CCL4", # interacts with CCR5. chemoattractant for natural killer cells, monocytes and a variety of other immune cells. produced by: neutrophils, monocytes, B cells, T cells, fibroblasts, endothelial cells, and epithelial cells. [16]
)

homing.related <- c(

  "GPR183", # ranked for Tcm [3] but not very distinguising. functions not very clear, seem to relate to T/B homing within lymph nodes (generally related to 'central') but well summarized [17]
)

# references:
# 1. Landscape of infiltrating T cells in liver cancer revealed by single-cell sequencing, Cell, 2017
# 2. Global characterization of T cells in non-small-cell lung cancer by single-cell sequencing, Nature Medicine, 2018
# 3. Lineage tracking reveals dynamic relationships of T cells in colorectal cancer, Nature, 2018
# 4. https://en.wikipedia.org/wiki/Interleukin-7_receptor
# 5. CD8+ T cell states in human cancer: insights from single-cell analysis, Nature review cancer, 2020
# 6. Clonal replacement of tumor-specific T cells following PD-1 blockade, Nature medicine, 2019
# 7. https://www.wikigenes.org/e/gene/e/4118.html
# 8. https://en.wikipedia.org/wiki/CD44
# 9. Memory T Cell Subsets, Migration Patterns, and Tissue Residence, annual review immunology, 2013
# 10. https://en.wikipedia.org/wiki/CCR5
# 11. Three Memory Subsets of Human CD8 T Cells Differently Expressing Three Cytolytic Effector Molecules, 
# 12. Differential expression of human granzymes A, B, and K in natural killer cells and during CD8+ T cell differentiation in peripheral blood
# 13. pan-T zhanglab
# 14. https://en.wikipedia.org/wiki/CXCR3
# 15. https://en.wikipedia.org/wiki/CXCR4
# 16. https://en.wikipedia.org/wiki/CCL4
# 17. https://www.genecards.org/cgi-bin/carddisp.pl?gene=GPR183
# 18. Memory T Cell Subsets, Migration Patterns, and Tissue Residence, Annual review

