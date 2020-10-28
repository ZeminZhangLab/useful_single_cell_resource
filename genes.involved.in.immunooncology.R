# random comments
# it could be noted that some 'marker for a certain cell type' is not agreed by different datasets. Personal idea is that when to define cell types, prioritize genes with known biological functions, rather than those computationally identified.

#================================================================#
# use standard naming system, store in variable
#================================================================#

# general tumor infiltraing T cell types
cd8.Tn <- "CD8+ T naive"
cd8.Teff <- "CD8+ T effector"
cd8.Tem <- "CD8+ T effector memory"
cd8.Trm <- "CD8+ T resident memory"
cd8.Tex <- "CD8+ T exhausted"
cd4.Treg <- "CD4+ T regulatory"
cd4.Tn <- "CD4+ T naive"
cd4.Tex <- "CD4+ T exhausted"

#================================================================#
# useful markers
#================================================================#

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
  "CX3CR1", # seem to be a good marker. associated with effector T cell subset although function not very clear[20] seems only used by zhanglab, not that good in [22]
  "KLRG1", # immune checkpoint with less obvious functions than PD1, etc. considered as a 'senescent marker' expressed in effector, etc [21]
  "NKG7", # transmembrane protein localized on vesicles containing cytotoxic molecules. relocalizing to plasma membrane following membrane fusion of vesicles with plasma membrane, when T/NK cells recognize target cells and form a immunological synapse. reduced LAMP1 on plasma membrane in NKG7 difficiency suggests a role in vesicle trafficing. [36, 37] expressed in a all but naive CD8 T cells. [1~3] so may not contribute to T cell exhuastion. claimed roles in CD4 T cells [36~37]
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
  "ZNF683", # related to Trm [13, 19]
)

exhaustion.markers <- c(

  "PDCD1",
  "TIGIT",
  "LAYN"
  
)

inflamatory.markers <- c(

  "CCL4", # interacts with CCR5. chemoattractant for natural killer cells, monocytes and a variety of other immune cells. produced by: neutrophils, monocytes, B cells, T cells, fibroblasts, endothelial cells, and epithelial cells. [16]
)

homing.related <- c(

  "GPR183", # ranked for Tcm [3] but not very distinguising. functions not very clear, seem to relate to T/B homing within lymph nodes (generally related to 'central') but well summarized [17]
)

follicular.markers <- c(  # Distinguishing features of TFH cells are the expression of CXCR5, PD-1, SAP (SH2D1A), IL-21, and ICOS, among other molecules, and the absence of Blimp-1 ( prdm1). TFH cells are important for the for- mation of germinal centers [23]
  "CXCR5", # [23]
  "BCL6", # TFH cells de- pend on expression of the master regulator transcription factor Bcl6. [23]
)

t.cell.transcription.factors <- c(  
  
  # do note transcription factors are often considered undruggable, couldn't be drug targets.
  
  # it seems easy to discover a lot of these things using 'correlation in transcriptome', starting from some keynote genes such as TOX, TCF7
  # most of these are summarized nicely in box2 [5]
  
  # below are 'established'
  "TCF7", # expressed exclusively in 'progenitor exhausted' [24] this conclusion seem to be supported by many many studies and TCF7 subset associates with improved prognosis. [25~27]
  "TOX", # highly expressed in dysfuntional T cells in tumor and exhaustive T cells in chronic viral infection. high expression of TOX correlated with high expression of inhibitory receptors and low expression of TCF7[28] validated in [6]. also expressed in Treg & CD4 Tex [1, 6] plays in the elegant control of long-time T cell activation (exhaustion), have suggested functions in TCF1 cells [30] dispensable for Tem but essential for Tex [31]
  
  # below are less validated
  "NFATC2", # encodes NFAT1 [29], NFAT1 claimed to regulate TOX [28]. NFATs expression not that differential [1]
  "SETBP1", # identified in [31] to correlate with TOX. acts like a DNA-binding protein [32] express but not significantly in Tex & Treg [1, 3] (low detection reasonable, given being low-expression DNA binding proteins). Might be upstream regulators of TOX, etc. seems not very important.
  "IKZF2",  # identified in [31] to correlate with TOX. zinc finger as name suggests, involved in hematopoietic development [33] 
  "NR4A2", # claimed to be expressed in Tex [34], validated but not that significantly or consistently across datasets [1~3]
  "MAF", # claimed to be expressed in Tex [34], validated but not that significantly or consistently across datasets [1~3]
  "EOMES", # validated [13] for the claim: as tumor progressed, Eomes expression was elevated in tumor-infiltrating CD8+ T cells, especially in PD-1+Tim-3+ exhausted CD8+ T cells. Complete loss of Eomes in T cells resulted in impaired development of anti-tumor CTLs, whereas deletion of one allele of Eomes in T cells decreased development of exhausted CD8+ T cells, which offered better tumor control. [35]
)

other.genes.DNA.binding <- c(
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
# 19. https://www.genecards.org/cgi-bin/carddisp.pl?gene=ZNF683
# 20. (2015). Functional classification of memory CD8(+) T cells by CX3CR1 expression. Nat. Commun.
# 21. https://en.wikipedia.org/wiki/KLRG1
# 22. Clonal replacement of tumor-specific T cells following PD-1 blockade, Nat Med 2019
# 23. Follicular Helper CD4 T Cells (TFH), Annual Reviews immunology, 2011
# 24. Subsets of exhausted CD8+ T cells differentially mediate tumor control and respond to checkpoint blockade, Nature immunology 2019
# 25. Defining T Cell States Associated with Response to Checkpoint Immunotherapy in Melanoma, Cell, 2018
# 26. Defining CD8+ T cells that provide the proliferative burst after PD-1 therapy, Nature, 2016
# 27. Intratumoral Tcf1+PD-1+CD8+ T Cells with Stem-like Properties Promote Tumor Control in Response to Vaccination and Checkpoint Blockade Immunotherapy, Immunity, 2019
# 28. TOX is a critical regulator of tumour-specific T cell differentiation, Nature, 2019
# 29. https://www.cellsignal.com/products/primary-antibodies/nfat1-antibody/4389
# 30. TOX reinforces the phenotype and longevity of exhausted T cells in chronic viral infection, Nature, 2019
# 31. TOX transcript+ionally and epigenetically programs CD8 T cell exhaustion, Nature, 2019
# 32. https://en.wikipedia.org/wiki/SETBP1
# 33. https://en.wikipedia.org/wiki/IKZF2
# 34. Molecular profiling of CD8 T cells in autochthonous melanoma identifies Maf as driver of exhaustion, EMBO 2015
# 35. High Levels of Eomes Promote Exhaustion of Anti-tumor CD8+ T Cells, Trends in immunology
# 36. NKG7 makes a better killer, Nature immunology, 2019
# 37. The NK cell granule protein NKG7 regulates cytotoxic granule exocytosis and inflammation, Nature immunology, 2019
