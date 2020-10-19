conventional.T.cell.markers <- c(
  'CD3D',
  'CD4',
  'CD8A',
  'FOXP3'
)

cytotoxic.markers <- c(
  'GZMA',
  'GZMB',
  'GZMK',
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
  
  "IL7R", # in pan-T ranked as a marker. However, expressed in almost all cd8&4 except exhausted [1~3]. involved in VDJ recombination [4]. suggested in Melanoma & BCC, could be skin-cancer enriched? [5] Don't suggest to use when assigning clusters. Could use in retrospection.
  ""
)

# references:
# 1. Landscape of infiltrating T cells in liver cancer revealed by single-cell sequencing, Cell, 2017
# 2. Global characterization of T cells in non-small-cell lung cancer by single-cell sequencing, Nature Medicine, 2018
# 3. Lineage tracking reveals dynamic relationships of T cells in colorectal cancer, Nature, 2018
# 4. https://en.wikipedia.org/wiki/Interleukin-7_receptor
# 5. CD8+ T cell states in human cancer: insights from single-cell analysis, Nature review cancer, 2020

