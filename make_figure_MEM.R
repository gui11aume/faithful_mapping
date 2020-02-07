mem = log10(as.matrix(read.table("results_mem_19.txt")))

k = 20:160
ylim = c(-6,0)
badcol = colorRampPalette(c("steelblue", "royalblue4"))(6)
goodcol = colorRampPalette(c("steelblue1", "steelblue2"))(4)

pdf("MEM_19.pdf", height=6, width=6, useDingbats=FALSE)

par(mar=c(3.5,3.5,1.5,1.5))

plot(k, mem[1,], type="n",
   panel.first=grid(), ylim=ylim,
   bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
lines(k, mem[1,], col=goodcol[1], lwd=2)
lines(k, mem[2,], col=goodcol[2], lwd=2)
lines(k, mem[3,], col=goodcol[3], lwd=2)
lines(k, mem[4,], col=goodcol[4], lwd=2)
lines(k, mem[5,], col=badcol[1], lwd=2)
lines(k, mem[6,], col=badcol[2], lwd=2)
lines(k, mem[7,], col=badcol[3], lwd=2)
lines(k, mem[8,], col=badcol[4], lwd=2)
lines(k, mem[9,], col=badcol[5], lwd=2)
lines(k, mem[10,], col=badcol[6], lwd=2)

title(xlab="Read size (nucleotides)", ylab="Probability of missing the target (log10)",
   col.lab="grey25", line=2.2)
axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25")
axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")

legend(x="bottomleft", lwd=1.5, col=c("white", goodcol, badcol[1:6]),
   legend=c("", "1","5","10","20","50","100","200","400", "800","1600"),
   inset=.02, bg="white", box.col="white", text.col="grey25", cex=.8)
text(x=20, y=-3.8, "Nb paralogs (N)", col="grey25", adj=c(0,0), cex=.8)

dev.off()
