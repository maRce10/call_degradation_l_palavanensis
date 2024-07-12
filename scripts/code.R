library(Rraven)
library(warbleR)
library(baRulho)

devtools::install("~/Dropbox/R_package_testing/baRulho/")

dat <- imp_raven(path = "/home/marce/Descargas/Recordings L. palavanensis (A&D)/Recordings L. palavanensis (A&D)/", warbler.format = TRUE, all.data = TRUE, name.from.file = TRUE, ext.case = "upper")

est <- selection_table(X = dat, extended = TRUE, path = "/home/marce/Descargas/Recordings L. palavanensis (A&D)/Recordings L. palavanensis (A&D)/")


master_sels <- master_sound_file(X = est, file.name = "master_l.palavanensis", dest.path = "/home/marce/Descargas/Recordings L. palavanensis (A&D)")


write.csv(master_sels, "/home/marce/Descargas/Recordings L. palavanensis (A&D)/master_l.palavanensis_annotations.csv", row.names = FALSE)
