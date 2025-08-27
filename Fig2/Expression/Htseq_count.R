
tiff("Bufo_bufo.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Bufo bufo
expr_data <- matrix(c(0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Liver", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Bufo bufo"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()


tiff("Platyplectrum_ornatum.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Platyplectrum ornatum
expr_data <- matrix(c(124, 0, 0, 0, 0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad", "Brain", "Heart", "Muscle")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Platyplectrum ornatum"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()


tiff("Allobates_femoralis.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Allobates femoralis
expr_data <- matrix(c(0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Skin", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, 1), main = expression(bold(italic("Allobates femoralis"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Oophaga_sylvatica.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Oophaga sylvatica
expr_data <- matrix(c(0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Skin", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Oophaga sylvatica"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Rhinella_marina.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Rhinella marina
expr_data <- matrix(c(9645, 9, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad", "Spleen")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Rhinella marina"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Bufo_gargarizans.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Bufo gargarizans
expr_data <- matrix(c(0, 0, 0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Heart", "Muscle", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, 1), main = expression(bold(italic("Bufo gargarizans"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Pseudophryne_corroboree.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Pseudophryne corroboree
expr_data <- matrix(c(36990, 107), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Pseudophryne corroboree"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Engystomops_pustulosus.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Engystomops pustulosus
expr_data <- matrix(c(17175, 5, 1, 15, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad and other tissues", "Whole body", "Hippocampus")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Engystomops pustulosus"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data),cex.names = 0.7)
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Xenopus_tropicalis.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Xenopus tropicalis
expr_data <- matrix(c(5796, 4, 10, 7, 3, 2), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Adult gonad", "Gonad/mesonephros", "Heart")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Xenopus tropicalis"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Bufotes_viridis.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Bufotes viridis
expr_data <- matrix(c(4123, 101, 2469, 125, 1, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Adult gonad", "Gonad/Gosner46", "Heart/Gosner46", "Liver/Gosner46")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Bufotes viridis"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data),cex.names = 0.7)
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Rana_pipiens.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Rana pipiens
expr_data <- matrix(c(5218, 11, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Rana pipiens"))), ylab = "Expression Level", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()




tiff("Rana_temporaria.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
##Rana temporaria

expr_data <- matrix(c(
  3, 2,   # Gosner stage 23 : Male, Female
  3, 3,	# Gosner stage 27 : Male, Female
1, 0,	# Gosner stage 31 : Male, Female
 8, 8,  # Gosner stage 43 : Male, Female
 2, 33,  # Gosner stage 46 : Male, Female
2727, 251,  # Gonad : Male, Female
 4, 3,  # Brain : Male, Female
 0, 0  # Liver : Male, Female
 
), nrow = 2, byrow = FALSE,dimnames = list(c("Male", "Female"), c("Gosner23", "Gosner27","Gosner31","Gosner43","Gosner46","Gonad","Brain","Liver")))
barplot(expr_data, beside = TRUE,col = c("skyblue", "lightpink"),ylim = c(0, max(expr_data) + 1),main = expression(bold(italic("Rana temporaria"))),ylab = "Expression Level",xlab = "Tissue",names.arg = colnames(expr_data),cex.names = 0.55)
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()




tiff("Xenopus_laevis.tiff", width = 6000, height = 10000, res = 1000)
par(mar = c(12.5, 6, 4, 2))  # bigger bottom margin for x labels

# Create a matrix:
# Rows = 4 (Dmrt1L Male, dmrt1l Female, dmrt1s Male, dmrt1s Female)
# Columns = 3 tissues
expr_data <- matrix(c(
  2,    1,  3007,   # dmrt1l Male
  22,   8,     0,   # dmrt1l Female
  0,    4,   911,   # dmrt1s Male
  0,    1,     0    # dmrt1s Female
), nrow = 4, byrow = TRUE)

colnames(expr_data) <- c("Whole blood", "Gonad/mesonephros", "Gonad")
rownames(expr_data) <- c("Dmrt1L Male", "Dmrt1L Female", "Dmrt1S Male", "Dmrt1S Female")

# Colors for the 4 categories:
colors <- c("dodgerblue", "lightblue", "tomato", "pink")

barplot(expr_data,
        beside = TRUE,
        col = colors,
        ylim = c(0, max(expr_data)*1.1),
        main = expression(bold(italic("Xenopus laevis"))),
        ylab = "Expression Level",
        xlab = "",
        cex.names = 1.2,
        las = 2,
        names.arg = colnames(expr_data))

legend("topleft", legend = rownames(expr_data), fill = colors, cex = 1.2)

dev.off()




tiff("Xenopus_borealis.tiff", width = 6000, height = 10000, res = 1000)
par(mar = c(12.5, 6, 4, 2))  # bigger bottom margin for x labels

# Create a matrix:
# Rows = 4 (Dmrt1L Male, dmrt1l Female, dmrt1s Male, dmrt1s Female)
# Columns = 3 tissues
expr_data <- matrix(c(
  0,    7,  5,   # dmrt1l Male
  0,   7,     8,   # dmrt1l Female
  0,    0,   0,   # dmrt1s Male
  0, 0,     0    # dmrt1s Female
), nrow = 4, byrow = TRUE)

colnames(expr_data) <- c("Liver", "Gonad/mesonephros", "Gonad/mesenephros")
rownames(expr_data) <- c("Dmrt1L Male", "Dmrt1L Female", "Dmrt1S Male", "Dmrt1S Female")

# Colors for the 4 categories:
colors <- c("dodgerblue", "lightblue", "tomato", "pink")

barplot(expr_data,
        beside = TRUE,
        col = colors,
        ylim = c(0, max(expr_data)*100),
        main = expression(bold(italic("Xenopus borealis"))),
        ylab = "Expression Level",
        xlab = "",
        cex.names = 1.2,
        las = 2,
        names.arg = colnames(expr_data))

legend("topleft", legend = rownames(expr_data), fill = colors, cex = 1.2)

dev.off()


