# Load the necessary library
library(ggplot2)

# Create a data frame with the results
data <- data.frame(
  GO_Term = c(
    "Positive regulation of leukocyte apoptotic process (GO:2000108)",
    "Positive regulation of T cell migration (GO:2000406)",
    "Monocyte chemotaxis (GO:0002548)",
    "Positive regulation of lymphocyte migration (GO:2000403)",
    "Regulation of T cell migration (GO:2000404)",
    "Positive regulation of ERK1 and ERK2 cascade (GO:0070374)",
    "Positive regulation of GTPase activity (GO:0043547)",
    "Regulation of ERK1 and ERK2 cascade (GO:0070372)",
    "Regulation of GTPase activity (GO:0043087)",
    "Positive regulation of hydrolase activity (GO:0051345)",
    "Regulation of protein localization (GO:0032880)",
    "Regulation of hydrolase activity (GO:0051336)",
    "Regulation of cellular localization (GO:0060341)",
    "Positive regulation of intracellular signal transduction (GO:1902533)",
    "Cell-cell signaling (GO:0007267)",
    "Positive regulation of catalytic activity (GO:0043085)",
    "Positive regulation of signaling (GO:0023056)",
    "Positive regulation of cell communication (GO:0010647)"
  ),
  Fold_Enrichment = c(
    2.05E-05,
    2.96E-05,
    4.44E-05,
    4.44E-05,
    5.75E-05,
    1.15E-05,
    2.38E-05,
    3.11E-05,
    5.55E-05,
    2.92E-06,
    1.56E-05,
    2.32E-05,
    2.46E-05,
    2.76E-05,
    3.80E-05,
    4.09E-05,
    4.16E-06,
    4.17E-06
  )
)

# Create a bar plot
ggplot(data, aes(x = reorder(GO_Term, Fold_Enrichment), y = Fold_Enrichment)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  labs(x = "GO Term", y = "Fold Enrichment", title = "Gene Ontology Term Enrichment Analysis") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

