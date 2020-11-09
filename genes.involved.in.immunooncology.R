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
cd4.Th17 <- "CD4+ Th17" # use IL23R
cd4.Tem <- "CD4+ T effector memory"
cd4.others <- "CD4+ others"

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
  
  'GZMA', # granzyme A has minimal cytotoxicty [39]
  'GZMB', # GZMB is the most powerful [39]
  'GZMK', # granzyme expression during the differentiation process of memory CD8+ T cells might be as follows: GrA+/GrB–/GrK+ ? GrA+/GrB+/GrK+ ? GrA+/GrB+/GrK– [12] ranked in early effector memory subset [3, 13]
  'GZMH', # GZMH & GZMK may expain the minimal cytotoxcitiy effect in abscence of both A&B [39]
  "GZMM", # expressed less in Tex compared to Teff [1~3] reduced expression in Tex compared to Teff [1~3]
  
  'GNLY', # as name 'granulysin' suggests, exists within GZMs vesicles and causes lysis [38]. seems mostly to kill bacteria and low toxicity to mammalian cells [39]
  
  'PRF1', # contained within vesicles [39] regulated by RUNX3 & EOMES [39] 
  "UNC13D", # claimed to regulate prf vesicle trafficking & fusion [39], expressed low & not very differentially between Teff & Tex [1~3]
  "STXBP2", # claimed to regulate prf vesicle trafficking & fusion [39], expressed low & not very differentially between Teff & Tex [1~3]
  "STX11", # claimed to regulate prf vesicle trafficking & fusion [39], expressed low & not very differentially between Teff & Tex [1~3]
  "DOCK8", # claimed to regulate prf vesicle trafficking & fusion [39], expressed in almost all T cells [1~3]
  "LAMP1", # claimed to be redundant in cytotoxicity [39] mentioned to translocate to plasma membrane [36]
  
  'IFNG', 
  
  "CX3CR1", # seem to be a good marker. associated with effector T cell subset although function not very clear[20] seems only used by zhanglab, not that good in [22]
  
  "NKG7", # transmembrane protein localized on vesicles containing cytotoxic molecules. relocalizing to plasma membrane following membrane fusion of vesicles with plasma membrane, when T/NK cells recognize target cells and form a immunological synapse. reduced LAMP1 on plasma membrane in NKG7 difficiency suggests a role in vesicle trafficing. [36, 37] expressed in a all but naive CD8 T cells. [1~3] so may not contribute to T cell exhuastion. claimed roles in CD4 T cells [36~37]
  
  "FCGR3A", # also known as CD16, originally functions to bind the Fc fragment of antibody to enable clearance [59] expressed exclusively in Teff, might be interesting [1~3]
  "FCGR3B", # almost the same as FCGR3A but significantly less amount [1~3]
  
  "FGFBP2", # The encoded protein is a serum protein that is selectively secreted by cytotoxic lymphocytes and may be involved in cytotoxic lymphocyte-mediated immunity. [60] exclusively expressed by Teff [1~3]
  
  
)

naive.markers <- c(
  "LEF1",
  "CCR7",
  "SELL",
  "TCF7",
  
  "MAL", # correlates surprisingly well (tSNE gene expression) with CCR7 [1~3], functions in immunology not completely understood but well summarized[7]. worth further looking at if have time. Biomarker in treatment response a story? 
  "IL7R", # see other IL7R
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
  "RUNX3", # regulate PRF1 expression [40], expressed in Teff & Tex in [1~3]
  "BATF", # claimed to be upregulated by PD1 activdation [46] seem to express in all T cells but significantly higher in Treg. [46] significantly more in Tex [6]
)

costimulatory.receptors <- c(
  "CD28", # TARGET # amplify TCR signaling, induce proliferation & IL2 production [41] expressed in GZMK T cells, T naive but not Teff, Tex [1~3] CTLA4 is upregulated following T cell activation, with CD28 subsequently downregulated. [41, 42] the question is, will Tex work without CD28? CD28 is dephosphorelayed by SHP2 recruited by PDL1-PD1 activation, suggests CD28 is the primary target of PD1 activation. [43] failed in clinical trial, perhaps due to super efficiency [44]
)

coinhibitory.receptors <-c(
  "LAG3", # TARGET # starts from Teff, climaxed at Tex [1~3], interacts with MHC-II [41]  MHCII binding may distinguish it from other targets [45, 51]
  "CTLA4", # TARGET # sequestering target receptors or ligands[47]
  "PDCD1", # TARGET # recruiting SHP2 to attenuate TCR signaling [48] rapidly upregulated following T cell activation []
  "TIM3", # TARGET # involved in synapse formation, recruited by PD1 [49]
  "KLRG1", # expressed less in Tex compared to Teff [1~3] immune checkpoint with less obvious functions than PD1, etc. considered as a 'senescent marker' expressed in effector, etc [21]
)

costimulatory.receptors <-c(
  "TNFRSF4", # also known as OX-40, expresses in TNFRSF9+ Treg, but not CD8 Tex. express in CD4 Tex [2]
  "TNFRSF9", # also known as 4-1BB,  very interesting to express only in terminal Tex & Treg, why would 'stimulatory' be on Tex? [1~3] express on antigen-experienced Treg [2]
  ""
)

inteferons <- c(

  "IFNG", # links to JAK1/JAK2 signaling, IFNG upregulates typeI antigen presentation & increases PDL1 expression [72] direct anti-proliferative effect [need reference]
  
  
)

interleukins <- c(
  
  "IL2RG", # The common gamma chain (γc) (or CD132), also known as interleukin-2 receptor subunit gamma or IL-2RG, is a cytokine receptor sub-unit that is common to the receptor complexes for at least six different interleukin receptors: IL-2, IL-4, IL-7, IL-9, IL-15 and interleukin-21 receptor. [61] expressed on all TILs [1]
  
  "IL2", # TODO, express in Treg, responsible for t cell maintainence [62] # tested in combination with PDL1 blockade and worked (but IL2RA expressed in Treg, IL15 chosen by genentech as 'better-in-class')[57] 
  
  ""
  "IL7R", # in pan-T ranked as a marker. However, expressed in almost all cd8&4 except exhausted [1~3]. involved in VDJ recombination [4]. suggested in Melanoma & BCC, could be skin-cancer enriched? [5] but not validated in [6]. Don't suggest to use when assigning clusters. Could use in retrospection. In fact, almost useless in defining Naive.
  
  
  "IL10" # inhibitory cytokine. promotes T cell exhaustion [52] # not expressed by any TIl [1~3] produced by monocytes [54~55], validated by [53] in specific macrophage subsets. coblockade with PD1 tested [56]
  "IL10RA", # receptor # seem to express low but in all TIL [1~3] 
  "IL10RB", # receptor # seem to express low but in all TIL [1~3] IL10RB expression seems to be subsets of IL10RA [1, 53], why?
  
  "IL15", # genentech target # the expression of IL15 doesn't seem robust [53]
  "IL15RA", # expression low [1~3]
  
  "IL17A", # the '17' that defines Th17 [65] expressed exclusively by Th17 [3], 
  "IL17F", # very similar to IL17A, expressed by Th17 [65]
  "IL17B", # no expression in any TIl [3]
  "IL17C", # no expression in any TIl [3]
  "IL17D", # no expression in any TIl [3]
  "IL17RA", # seem to express in all TIL in a very sparse fashion [3]
  
  "IL23A", # driving factors of Th17 development, source not very clear [65]
  "IL23R", # almost exclusively on Th17 [3]
  
  "IL33", # target, via IL33 antagonist[67] # recruits Treg to the TME[66]. source seems to be endothelial but not cancer [68, 69] PD1 & CTLA4 treatment upregualtes ST2 in tumor & promotes CD103 CD8 Trm, this seems not solid. [69]
  "IL1RL1" # target, IL1-receptor like 1, receptor for IL33. [66], expressed exclusively by Treg & Tfr [3] in a subset of Treg [2] but not in [1]
)

chemokines <- c(
  
  "CCR7", # well-establishes to Lymph-node homing [63]
  
  "CCL5", # as a chemo-attractant for blood monocytes, T helper cells, etc, [77] induced by IFN-γ, TNFα, or IL-1 in T cells [78]
  "CCR5", # TODO
  
  "CCL19", # CCR7 ligands expressed by HEV epithelial [63], not expressed by T cells [3]
  "CCL21", # CCR7 ligands expressed by HEV epithelial [63], not expressed by T cells [3]
  
  "CXCL13", # receptor is CXCR5, CXCL13 is a attractant for B & Tfh to promote TLS formation. CD8 T cell acquire increased expression of CXCL13 along the dysfunctional lineage. Thus Tex should not be considered as inert but with designed functions [5] Expressed in Tex [1~3] together with ITGAE [58]. 
)



homing.related <- c(

  "S1PR1", # S1P (sphingosine 1-phosphate) expresses abundantly in blood & lymph. Binding of S1P transitently attenuates S1PR1 [63] enabling T cell migration to lymph node. express in CD8 & CD4 Teff & T naive [1~3] Personally consider it is a marker indicating 'should be in blood', corroborated by STARTRAC [3]

  "ANXA1", # encodes a membrane-localized protein that binds phospholipids. related to anti-inflammatory functions not well-defined functions [64], doesn't seem like a good marker, express in almost all cell [1~3] though claimed as marker of Blood-Tcm in [3]
  "ANXA2", # even worse than ANXA1.
)

other.genes.DNA.binding <- c(
)

#================================================================#
# genes incolved in mutation & resistance to immunotherapy
#================================================================#

genes.mutation.immunotherapy <- c(
  
  "IFNGR1", # see below JAK
  
  "JAK1", # loss of function or truncating mutation leads to insensitivity to INFG related pathways, i.e. INFG for antiproliferative functions in cancer cells. [70] think JAK is involved in both tumor & immune cells?
  "JAK2", # as JAK1 [70]
  
  "B2M", # truncating mutation leads to loss of MHC-I [70] common component pf HLA isotypes. [] point mutation, deletions or loss of hyterozygosity observed in non-responders(LOH), LOH more 3-fold in non-responder (30% to 10%) than responder, loss of two copies only in non-responder [73]
  
  
)

histology.markers <- c(
  
  "S100", # tumor marker for melanoma, not necessarily for other cancer type [71]
  
)

proliferation.markers <- c(

  "MKI67", # seem to express exclusively in CD8 Tex but not other clusters although its expression is sparse [3]
  "STMN1", # used to indicate cell proliferation, but not solid [76], a little bit worse than MKI67 but seems still usable
  "CCNA2", # used to indicate cell proliferation, but not solid [76], a little bit worse than MKI67 but seems still usable
  
  "HMGB2", # used to indicate cell proliferation, but not solid [76], claimed to be involved in VDJ recombination [74] but express on almost all cells [3]
  "CKS1B", # used to indicate cell proliferation, but not solid [76], claimed to be associated with cyclin, express in different patterns across HeLa cell differentiation [75], expression very sparse & on all cell type, seem to be involved in cell cycle. [3]
  "TUBA1B", # used to indicate cell proliferation, but not solid [76], express in all cells [3]
  "TUBB", # used to indicate cell proliferation, but not solid [76],
  "CCNA2", # used to indicate cell proliferation, but not solid [76],
  "H2AFZ" # used to indicate cell proliferation, but not solid [76],
  
)

uncategorized.basket <- c(

  "INPP5F", # negatively regulates STAT3 signaling [79], express almost exclusively in Tex & Treg [3] very sparse in [76]
  ""

)
