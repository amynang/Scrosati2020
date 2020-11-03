rm(list=ls())
library(readxl)
library(worrms)

data=read_excel("H:/Literature/Scrosati2020_DataS1.xlsx",
                sheet = "Sheet1",
                na="")


try = wm_records_name(name = "Cirratulus cirratus")
wm_name2id(name = "Cirratulus cirratus")

attr=wm_attr_data(id = 107381, include_inherited = TRUE)
wm_attr_category(id = 107381)
