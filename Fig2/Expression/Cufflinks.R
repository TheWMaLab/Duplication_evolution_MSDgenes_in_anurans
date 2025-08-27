
tiff("Bufo_bufo.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Bufo bufo
expr_data <- matrix(c(0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Liver", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+5), main = expression(bold(italic("Bufo bufo"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()


tiff("Platyplectrum_ornatum.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Platyplectrum ornatum
expr_data <- matrix(c(57.8939, 0, 0, 0, 0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad", "Brain", "Heart", "Muscle")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+5), main = expression(bold(italic("Platyplectrum ornatum"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()


tiff("Allobates_femoralis.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Allobates femoralis
expr_data <- matrix(c(0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Skin", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, 1), main = expression(bold(italic("Allobates femoralis"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Oophaga_sylvatica.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Oophaga sylvatica
expr_data <- matrix(c(0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Skin", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+5), main = expression(bold(italic("Oophaga sylvatica"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Rhinella_marina.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Rhinella marina
expr_data <- matrix(c(138.808, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad", "Spleen")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+5), main = expression(bold(italic("Rhinella marina"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Bufo_gargarizans.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Bufo gargarizans
expr_data <- matrix(c(0, 0, 0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Heart", "Muscle", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, 1), main = expression(bold(italic("Bufo gargarizans"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Pseudophryne_corroboree.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Pseudophryne corroboree
expr_data <- matrix(c(162.047, 0.646264), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Pseudophryne corroboree"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Engystomops_pustulosus.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Engystomops pustulosus
expr_data <- matrix(c(83.2403, 0, 0, 0.545411, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad and other tissues", "Whole body", "Hippocampus")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Engystomops pustulosus"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data),cex.names = 0.7)
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Xenopus_tropicalis.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Xenopus tropicalis
expr_data <- matrix(c(115.921, 0, 0.218236, 0.168483, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Adult gonad", "Gonad/mesonephros", "Heart")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Xenopus tropicalis"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Bufotes_viridis.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Bufotes viridis
expr_data <- matrix(c(223.217, 4.97045, 113.704, 5.61039, 0, 0, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Adult gonad", "Gonad/Gosner46", "Heart/Gosner46", "Liver/Gosner46")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+1), main = expression(bold(italic("Bufotes viridis"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data),cex.names = 0.7)
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()

tiff("Rana_pipiens.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
## Rana pipiens
expr_data <- matrix(c(80.2011, 0.14987, 0, 0), nrow = 2, byrow = FALSE, dimnames = list(c("Male", "Female"), c("Gonad", "Liver")))
barplot(expr_data, beside = TRUE, col = c("skyblue", "lightpink"), ylim = c(0, max(expr_data)+5), main = expression(bold(italic("Rana pipiens"))), ylab = "FPKM", xlab = "Tissue", names.arg = colnames(expr_data))
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()




tiff("Rana_temporaria.tiff", width = 5000, height = 5000, res = 1000)
par(mfrow = c(1, 1), mar = c(4, 4, 3, 1))  # 10 rows, 1 column layout
##Rana temporaria

expr_data <- matrix(c(
  0, 0,   # Gosner stage 23 : Male, Female
  0, 0,	# Gosner stage 27 : Male, Female
0, 0,	# Gosner stage 31 : Male, Female
 0, 0,  # Gosner stage 43 : Male, Female
 0, 0.41215,  # Gosner stage 46 : Male, Female
27.0086, 3.26501,  # Gonad : Male, Female
 0.121088, 0.248629,  # Brain : Male, Female
 0, 0  # Liver : Male, Female
 
), nrow = 2, byrow = FALSE,dimnames = list(c("Male", "Female"), c("Gosner23", "Gosner27","Gosner31","Gosner43","Gosner46","Gonad","Brain","Liver")))
barplot(expr_data, beside = TRUE,col = c("skyblue", "lightpink"),ylim = c(0, max(expr_data) + 5),main = expression(bold(italic("Rana temporaria"))),ylab = "FPKM",xlab = "Tissue",names.arg = colnames(expr_data),cex.names = 0.55)
legend("topright", legend = rownames(expr_data), fill = c("skyblue", "lightpink"))
dev.off()




tiff("Xenopus_laevis.tiff", width = 6000, height = 10000, res = 1000)
par(mar = c(12.5, 6, 4, 2))  # bigger bottom margin for x labels

# Create a matrix:
# Rows = 4 (Dmrt1L Male, dmrt1l Female, dmrt1s Male, dmrt1s Female)
# Columns = 3 tissues
expr_data <- matrix(c(
  0,    0,  56.332,   # dmrt1l Male
  0.73365,   0.292029,     0,   # dmrt1l Female
  0,    0,   19.1814,   # dmrt1s Male
  0,    0,     0    # dmrt1s Female
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
        ylab = "FPKM",
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
  0,    0.208178,  0.10989,   # dmrt1l Male
  0,   0.265796,     0.211837,   # dmrt1l Female
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
        ylab = "FPKM",
        xlab = "",
        cex.names = 1.2,
        las = 2,
        names.arg = colnames(expr_data))

legend("topleft", legend = rownames(expr_data), fill = colors, cex = 1.2)

dev.off()


