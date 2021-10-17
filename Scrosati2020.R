rm(list=ls())
library(readxl)
library(worrms)
library(rglobi)
library(stringr)
library(igraph)

data=read_excel("H:/Literature/Scrosati2020_DataS1.xlsx",
                sheet = "Sheet1",
                na="")
data=as.data.frame(data)

taxa = data[,3]

taxa = taxa %>% str_replace(" sp.*", "")

mat = get_interaction_matrix(taxa, 
                             taxa, "eats")
matr = as.matrix(mat[,-1])
rownames(matr) = taxa
colnames(matr) = rownames(matr)

g=graph_from_adjacency_matrix(matr, mode = "directed")
which(degree(g)==0)

plot(g, 
     layout=layout_in_circle,
     edge.arrow.size=.1,
     vertex.label.color="black",
     main = "bla")

tkplot(g, 
       layout=layout_in_circle,
       edge.arrow.size=.1,
       vertex.label.color="black",
       main = "bla")


try = wm_records_name(name = "Cirratulus cirratus")
wm_name2id(name = "Cirratulus cirratus")

attr=wm_attr_data(id = 107381, include_inherited = TRUE)
wm_attr_category(id = 107381)
