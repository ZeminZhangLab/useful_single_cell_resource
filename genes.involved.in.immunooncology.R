# random comments
# it could be noted that some 'marker for a certain cell type' is not agreed by different datasets. Personal idea is that when to define cell types, prioritize genes with known biological functions, rather than those computationally identified.

#================================================================#
# use standard naming system, store in variable
#================================================================#

# other variables
publication.cluster.name <- "publicationClusterName"

# general tumor infiltrating cell types
general.cell.type <- "generalCellType"
t.cell <- "T cell"
b.cell <- "B cell"
nk.cell <- "NK cell"
dc <- "DC"
tumor.cell <- "tumor cell"
macrophage <- "macrophage"
stromal.cell <- "stromal cell"
endothelial <- "endothelial"
epithelial <- "epithelial"
mast.cell <- "mast"
fibroblast <- "fibroblast"
myeloid <- "myeloid cell"

# cd4.cd8 celltype
cd4.cd8.celltype <- "Cd4Cd8Celltype"
cd4 <- "CD4 T cell"
cd8 <- "CD8 T cell"

# general tumor infiltraing T cell types
t.cell.subtype <- "tCellSubtype"
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

# myeloid subsets
pDC <- "pDC"
cDC1 <- "cDC1"
cDC2 <- "cDC2"

#================================================================#
# useful markers
#================================================================#


#++++++++++++++++
# mouse markers
#++++++++++++++++

mouse.conventional.T.cell.markers <- c(
  'Cd3d',
  'Cd4',
  'Cd8a',
  'Foxp3'
) 

mouse.b.cell.markers <- c(

  "Cd19",
  "Ms4a1", 
  "Cd79a", 
  "Cd79b"
)

mouse.myeloid.markers <- c(
  
  "Ptprc"
  
)

mouse.endothelial.markers <- c(
  
  "Pecam1",
  "Kdr"
  
)

mouse.epithelial.markers <- c(
  
  "Epcam"
  
)

mouse.pancreatic.cell.markers <- c(
  "Ins1", # beta cell
  "Gcg", # Alpha cell
  "Prss1", # Acinar
  "Prom1" # ductal
)

mouse.fibroblast.markers <- c(
  
  "Col1a2"
)

mouse.mast.markers <- c(
   "Ms4a2", 
   "Fcer1a"
)

mouse.smooth.muscle.cell.markers <-c(
  "Myh11", 
  "Acta2", 
  "Des", 
  "Tagln", 
  "Rgs5"
)

mouse.pericyte.markers <- c(
  "Pdgfrb", 
  "Cspg4", 
  "Anpep", 
  "Acta2", 
  "Des"
  
)

#=======

#=======

ITGAE <- "ITGAE" # also CD103 [18], identifies Tex (also claimed to distinguish Tumor active with bystander) [87] seem to distinguish CD69 in that CD103 more in Tex & CD69 more in Trm (may need more look but clearly different)

conventional.T.cell.markers <- c(
  'CD3D',
  'CD4',
  'CD8A',
  'FOXP3'
)

NK.cell.markers <- c(
  "NCAM1", # CD56, NK cell marker [88] validated to be expressed almost exclusively in NK [53] neuronal cell adhesion molecule (neuron connection) also detected on certain CD8 [89]
  "KLRK1", # NKG2D, [94] activating receptor, NK cell marker, also expressed on activated CD8 T cell [90] and validated [3] ligands are induced self-proteins which are MHC-I homologues thus promiting tumor control[90] 
  "KLRC1", # NKG2A, [94] inhibitory receptor, contains ITIM motif [91], expressed in both NK & T cell [92] recognizes MHCI through HLA-E ligation [93] expressed mostly in NK cell & some in T cell. [53]
)

b.cell.markers <- c(

  "CD19", #TARGET #B cell co-receptor, express on pre-B, B & plasma B [97] CAR T target of B cell lymphoma [127] express in some brain cells that cause toxicity [128]
  "MS4A1", # B cell membrane protein, express on B, function not known but suspected to act as a calcium channel [98] express on B but not plasma B [53]
  "CD79A", # associated with BCR, [99] express on both B & plasma B [53]
  "CD79B", # same as CD79A, but seems to express also on monocytes [53]
  
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


treg.markers <- c(

  "FOXP3", # regualates other TFs, i.e. down-regualtes TCF1 [107]
  
  
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
  ITGAE,
  "ZNF683", # related to Trm [13, 19]
)

exhaustion.markers <- c(

  "PDCD1",
  "TIGIT",
  "LAYN", 
  "MYO1E", # expressed in Tex & Treg [3], identified in [13] myosin related [80] any ideas why it is here? sounds interesting.
  "MYO7A", # expressed in Tex & Th1-like [3], identified in [13] myosin related [81] any ideas why it is here? sounds interesting.
  
)

inflamatory.markers <- c(

  "CCL4", # interacts with CCR5. chemoattractant for natural killer cells, monocytes and a variety of other immune cells. produced by: neutrophils, monocytes, B cells, T cells, fibroblasts, endothelial cells, and epithelial cells. [16]
)

homing.related <- c(

  "GPR183", # ranked for Tcm [3] but not very distinguising. functions not very clear, seem to relate to T/B homing within lymph nodes (generally related to 'central') but well summarized [17]
)

myeloid.markers <- c(
  
  "ITGAM", 
  "PTPRC", # also CD45, expressed in all nucleated cells of hematopoietic origin,[135] kinase, involved in BCR/TCR signaling [136]
  
)

dc.markers <- c(

  "CD40", # expressed in some DC & B cell [53], binds CD40L to activate CD4 T cell
  "CD40LG", # expressed in most CD4 & some CD8 T cell [53]
  
  "CD1C", # expressed in cDC2-CDC1 but not other myeloid cells [114] expressed in APC, related to MHC-I, involved in presenting lipid antigen to T cell exact function not known [115]
  "BATF3", # used in [114] as marker of cDC1 but also expressed in cDC2 & CD16 Mono. more info on BATF3 & DC available at [116]
  
  "CD103", # differentiates lymph node resident & migratory DCs [120]
  "CD69", # differentiates lymph node resident & migratory DCs [120]
)

cDC1.markers <- c(

  "CLEC9A", # involved in cross-presentation [150] used in [149]

)

# use in mouse, used in [114]
cDC2.markers <- c(
  
  "Cd209a",
  "H2-DMb1",
  
)

pDC.markers <- c(

  "LILRA4", # Lil4ra not in mouse! # highly expressed in pDC [148] used as marker in [149]
)

# use in mouse, used in [114]
pDC.markers <- c(
  "Siglech", "Ccr9", "Tcf4"
)



caf.markers <- c(

  "NTNG1", # expressed by CAF resulting in metabolism conditions favorable for tumor cells, also related to IL15 production & NK cell recruitment [133]
  
  "PRELP", # therapeutic target, linked to MMP & VEGF [166]
  
)

endothelial.markers <- c(

  "PECAM1", # PECAM1 (Platelet And Endothelial Cell Adhesion Molecule 1), found on the surface of platelets, monocytes, neutrophils, and some types of T-cells, required for leukocyte transendothelial migration (TEM) under most inflammatory conditions [137]
  "KDR", # also VEGFR2 [138]
)

epithelial.markers <- c(

  "EPCAM", # Since EpCAM is expressed exclusively in epithelia and epithelial-derived neoplasms, EpCAM can be used as diagnostic marker for various cancers [139]

)

mast.markers <- c(

  "MS4A2", # also FCER1B [140]
  "FCER1A", # [141]

)

cell.adhesion.molecules <- c(

  "ITGA1", # cell adhesion molecule, known as CD49A, alpha unit of integrin [83], express in Trm & Tex [3], express more (same as CD69 & CD103) in tumor specific than bystander CD8 [84]
  "ITGAM", # also CD11B, expressed in macrophage, monocyte, granulocyte & NK [112], expressed in a subset of Myeloid & NK cells but not in T cell [53]
  "ITGAX", # lso CD11c, expressed in macrophage, DC & NK [53] [113]
  
)

t.cell.metabolism <- c(
  
  # dying cells release ATP and thus provides a pro-inflammatory signal, 
  
  "ENTPD1", # CD39, ecto-nuclease, works in cascade with CD73 to convert ATP to adenosine, tumor cell can elevate CD39 expression [85], expressed in Tex & Treg [3] claimed to identify tumor specific from bystander T cell via texramer & cytof expression comparison, this need more validation[84] identifies Tex, CD39 expression induced by IL6 & IL27 [86] coexpression with CD103 identifies tumor-reactive (this is a vague indication) T cell [87]
  "NT5E", # CD73, works in cascade with CD39 and converts AMP to ADO [85], does not express with CD39 may need more validation in different datasets [3]
  
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
  "TCF7", # expressed exclusively in 'progenitor exhausted' [24] this conclusion seem to be supported by many many studies and TCF7 subset associates with improved prognosis. [25~27] TCF associated genes mentioned in [110]
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

coinhibitory.receptors <-c(
  "LAG3", # TARGET # starts from Teff, climaxed at Tex [1~3], interacts with MHC-II [41]  MHCII binding may distinguish it from other targets [45, 51]
  "CTLA4", # TARGET # sequestering target receptors or ligands[47]
  "PDCD1", # TARGET # recruiting SHP2 to attenuate TCR signaling [48] rapidly upregulated following T cell activation []
  "TIM3", # TARGET # involved in synapse formation, recruited by PD1 [49]
  "KLRG1", # expressed less in Tex compared to Teff [1~3] immune checkpoint with less obvious functions than PD1, etc. considered as a 'senescent marker' expressed in effector, etc [21]
)

costimulatory.receptors <-c(
  "CD28", # TARGET # amplify TCR signaling, induce proliferation & IL2 production [41] expressed in GZMK T cells, T naive but not Teff, Tex [1~3] CTLA4 is upregulated following T cell activation, with CD28 subsequently downregulated. [41, 42] the question is, will Tex work without CD28? CD28 is dephosphorelayed by SHP2 recruited by PDL1-PD1 activation, suggests CD28 is the primary target of PD1 activation. [43] failed in clinical trial, perhaps due to super efficiency [44]
  "TNFRSF4", # also known as OX-40, expresses in TNFRSF9+ Treg, but not CD8 Tex. express in CD4 Tex [2]
  "TNFRSF9", # also known as 4-1BB,  very interesting to express only in terminal Tex & Treg, why would 'stimulatory' be on Tex? [1~3] express on antigen-experienced Treg [2]
  "ICOS", # expressed highly in Treg [3] depletion antibody results in increased Teff:Treg ratio [145]
)

inteferons <- c(

  "IFNG", # links to JAK1/JAK2 signaling, IFNG upregulates typeI antigen presentation & increases PDL1 expression [72] direct anti-proliferative effect [need reference]
  
  
)

interleukins <- c(
  
  "IL2RG", # The common gamma chain (γc) (or CD132), also known as interleukin-2 receptor subunit gamma or IL-2RG, is a cytokine receptor sub-unit that is common to the receptor complexes for at least six different interleukin receptors: IL-2, IL-4, IL-7, IL-9, IL-15 and interleukin-21 receptor. [61] expressed on all TILs [1]
  
  "IL2", # TODO, express in Treg, responsible for t cell maintainence [62] # tested in combination with PDL1 blockade and worked (but IL2RA expressed in Treg, IL15 chosen by genentech as 'better-in-class')[57] 
  "IL2RA", # Treg depletion therapy target summarized here [160]
  
  ""
  "IL7R", # in pan-T ranked as a marker. However, expressed in almost all cd8&4 except exhausted [1~3]. involved in VDJ recombination [4]. suggested in Melanoma & BCC, could be skin-cancer enriched? [5] but not validated in [6]. Don't suggest to use when assigning clusters. Could use in retrospection. In fact, almost useless in defining Naive.
  
  
  "IL10" # inhibitory cytokine. promotes T cell exhaustion [52] # not expressed by any TIl [1~3] produced by monocytes [54~55], validated by [53] in specific macrophage subsets. coblockade with PD1 tested [56]
  "IL10RA", # receptor # seem to express low but in all TIL [1~3] 
  "IL10RB", # receptor # seem to express low but in all TIL [1~3] IL10RB expression seems to be subsets of IL10RA [1, 53], why?
  
  "IL12A", # produced by DC, macro etc (failed to be validated in [53, 114]) & activates both T & NK cell. [103, 104] clinical trial minimal effect & severe side effect [104] but overcome by engineering a local injection of IL12 [105]
  "IL12B", # [103] IL12 family cytokines have two components, same expression as IL12A (failed to be validated in [53])
  "IL12RB1", # receptor seem to express in many immune cell types with no obvious pattern (needs more observation) [53]
  
  
  "IL15", # genentech target # the expression of IL15 doesn't seem robust [53] also works on NK cells [134]
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
  
  "CCL2", # not expressed by TIL or TIM [53]
  "CCR2", # Key functional receptor for CCL2 but can also bind CCL7 and CCL12. Its binding with CCL2 on monocytes and macrophages mediates chemotaxis and migration [111] expressed in myeloid & some T & B cell [53]
  
  "CCR4", # Treg depletion target
  "CCL22", # ligand of CCR4, secreted by DC & macro, related to Treg recruitment.[167] upregulated by EGFR mutation. [168]
  
  "CCR7", # well-establishes to Lymph-node homing [63]
  
  "CCL5", # as a chemo-attractant for blood monocytes, T helper cells, etc, [77] induced by IFN-γ, TNFα, or IL-1 in T cells [78] expressed in T & NK [53] expressed by NK to recruit certain DC [123]
  "CCR5", # TARGET # TREG depletion [124] expressed by certain DC subtype [53] claimed to be the target of NK-CCL5 [123]
  
  "CCL19", # CCR7 ligands expressed by HEV epithelial [63], not expressed by T cells [3]
  "CCL21", # CCR7 ligands expressed by HEV epithelial [63], not expressed by T cells [3]
  
  "CXCL1", # need reference
  "CXCR2", # MDSC depletion target. [169]
  
  "CXCL9", # expressed sparsely by certain TAM [53, 114] binds CXCR3 to recruit tumor-infiltrating T cell [117] 
  "CXCL10", # expressed sparsely by certain TAM [53, 114] also binds CXCR3 to recruit tumor-infiltrating T cell [118]
  "CXCL11", # expression not detected [53] also binds CXCR3 to recruit tumor-infiltrating T cell [119]
  "CXCR3", # expressed by DC, B & T [53]
  
  
  "CXCL13", # receptor is CXCR5, CXCL13 is a attractant for B & Tfh to promote TLS formation. CD8 T cell acquire increased expression of CXCL13 along the dysfunctional lineage. Thus Tex should not be considered as inert but with designed functions [5] Expressed in Tex [1~3] together with ITGAE [58]. 

  "CXCL16", # [144] chemoattractant for T cells, binds CXCR6
  
  
  "CXCR4", # ligand is SDF-1. general idea is CXCR4 binds to SDF-1 so that haematepoietic stem cell home to bone marrow, CXCR4 antibody mobilizes stem cell to the blood [100] indiacted to regulate B cell CD20 expression [100] indicated in fig 1d bulk rna that TLS express more [101] validated in [22] patient su001 

  "CX3CL1", # can be either soluble or membrane-bound. membrane-bound form binds integrin regulating leukocyte adhesion to endothelium. soluble-form as chemoattractant for CX3CR1. [170] mentioned as indicating poor prognosis for Atezoluzumab [171]
  
  "XCL1", # secreted by NK, CD8 etc, binds to XCR1 to recruit DC [122, 53] expressed by NK to recruit DC [123]
  "XCL2", # similar to XCL1 but not in mouse [122] 
  "XCR1", # mainly expressed by DC [122]
  
)

other.cytokines <- c(

  "VEGFA", # can be expressed by Macrophage [53] & CD4 (claimed by [108] but not in [53]) # since renal tumor is also treated with VEGF inhibitor [109] this is worth look at
  
  "FLT3L", # ligand of FLT3 [153]
  "FLT3", # TARGET, most common mutation in AML [154], inhibitor shows improved survival over standard-of-care chemotherapy 2019 [155] submitted in China for approval 2020.[156] 
          # also CD135, expressed in many hematopoietic progenitor cells [121] expressed in some Macro & DC [53] mentioned to be used by NK to recruit DC [125]
  
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
  
  "B2M", # truncating mutation leads to loss of MHC-I [70] common component pf HLA isotypes. [] point mutation, deletions or loss of hyterozygosity observed in non-responders(LOH), LOH more 3-fold in non-responder (30% to 10%) than responder, loss of two copies only in non-responder [73] longitutal analysis confirmed its role & translational potential [132]
      # HLA tools available [164]
  "TAP1", # involved in adaptive resistance of immunotherapy[130, 131], a membrane transportor on ER that helps cytosolic-degraded proteins into the ER lumen where MHC-I vesicles are assembled [129] 
  
  "PBRM1", # identified in some cohort but failed to translate into the clinic [151], comments say that single-gene mutation is hard to reflect the complex biology behind ICI [152]

  # dMMR reflected by MSI in CRC
  "POLD, POLE, or MYH", # as mentioned by [161]
  
  "MLH1", "PMS2", # mentioned in crc study [162], essential roles in DNA repair
  
  # impairs T cell infiltration
  "WNT", # [163] in melanoma prevents T cell infiltration, scrapped in [162]
  
  "ALK", "EGFR", # low response in NSCLC PD1 treatment [165]


)

genes.mutation.oncogenic <- c(
  "DNMT3A", # DNA methyl transferase [157] identified in the tumor evolution of FLT3 inhibitor resistance [158]
  "NPM1", # a common mutation in AML originally a shuttle protein between nucleus membrane & plasma [159] identified in cloncal evolution following FLT3 inhibition resistance [158]
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
  "TXNIP", # negatively regulates cell proliferation [96], expressed very very high in naive, less but still high in Tex & treg [3] This was first mentioned by Chris 20201113

)

additional.immunotherapy.targets <- c(
  
  "PCSK9", # TARGET # originally identified in lipid metabolism, claimed blockade of which antagonize MHC-I downregulation. inhibitor & antibody tested in mice. [95] 
  "BRCA1", # TARGET # BRCA1 & BRCA2 are involved in homologous recombination [102]
  "BRCA2", # TARGET # truncating mutations in BRCA2 are associated with superior response compared to those in BRCA1 [102]
  "MAP4K1", # TARGET # BeiGene's potential first-in-class inhibitor, PD1 combination [106] protein HPK1, downregulates TCR signaling [105]
  "FGFR1", # claimed as target that this gene limits T cell infiltration into tumor [142], does this specifically express on fibroblast? should check [143]
  "SerpinB9", # claimed is an inhibitor of Serine protease GZMB [146]
  "PAK4", # kinase identified in Kinome-wide screening involved in tumor associated endothelial cell & vascularization, inhibition promotes T cell infiltration to tumor [147]
)

stress.induced.genes <- c(

  # heat shock proteins. whether to ignore this gene in choosing variable features is a debate. ref [5] mentions that some studies identify this as signature of Tex while some study ignored this gene.
  # hsp are named according to molecular weight [126] initially discovered in heat shock but later discovered in a wide range of stress. Intrincially involved in MHC antigen presentation (HSPs associated with proteasomal processing of antigen [126])
  "HSPA6", 
  
)


