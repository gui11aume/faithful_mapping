acc = c("ldacc.txt", "mdacc.txt", "sdacc.txt",
    "lhacc.txt", "mhacc.txt", "shacc.txt",
    "lpacc.txt", "mpacc.txt", "spacc.txt")
bwaacc = c("ldacc-BWA.txt", "mdacc-BWA.txt", "sdacc-BWA.txt",
    "lhacc-BWA.txt", "mhacc-BWA.txt", "shacc-BWA.txt",
    "lpacc-BWA.txt", "mpacc-BWA.txt", "spacc-BWA.txt")
bt2acc = c("ldacc-BT2.txt", "mdacc-BT2.txt", "sdacc-BT2.txt",
    "lhacc-BT2.txt", "mhacc-BT2.txt", "shacc-BT2.txt",
    "lpacc-BT2.txt", "mpacc-BT2.txt", "spacc-BT2.txt")

accdat = list()
for (fname in acc) {
   accdat[[fname]] = read.table(fname)
}

bwaaccdat = list()
for (fname in bwaacc) {
   bwaaccdat[[fname]] = read.table(fname)
}

bt2accdat = list()
for (fname in bt2acc) {
   bt2accdat[[fname]] = read.table(fname)
}

pdf("acc.pdf", height=6, width=6, useDingbats=FALSE)
par(mfrow=c(3,3))
par(mar=c(2,2,1,1))

for (i in 1:9) {
   dat = accdat[[i]]
   bwadat = bwaaccdat[[i]]
   bt2dat = bt2accdat[[i]]

   x = c((max(dat$V1)+1), dat$V1, 0); y = c(0, dat$V2, 1)
   bwax = c((max(bwadat$V1)+1), bwadat$V1, 0); bway = c(0, bwadat$V2, 1)
   bt2x = c((max(bt2dat$V1)+1), bt2dat$V1, 0); bt2y = c(0, bt2dat$V2, 1)

   plot(x, y, type="n",
      panel.first=grid(), ylim=c(0,1),
      bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
   points(bwax, bway, col="plum3", type="s", lwd=1.5)
   points(bt2x, bt2y, col="palevioletred3", type="s", lwd=1.5)
   points(x, y, col="steelblue", type="s", lwd=1.5)

   axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25")
   axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")
}

legend(x="topright", inset=.01, lwd=1.5, text.col="grey30",
   col=c("steelblue", "plum3", "palevioletred3"),
   legend=c("MMP", "BWA-MEM", "Bowtie2"), bg="white", box.col=NA)

dev.off()
