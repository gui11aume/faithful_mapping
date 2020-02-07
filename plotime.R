d100 = c(66,  105, 104)
d75  = c(45,  81,  91)
d50  = c(33,  59,  66)
h100 = c(88,  248, 272)
h75  = c(71,  193, 184)
h50  = c(47,  152, 96)
p100 = c(117, 539, 465)
p75  = c(99,  480, 326)
p50  = c(76,  424, 171)

dmem = c(0.63, 0.37, 0.30)
hmem = c(8.5,  5.5,  3.4)
pmem = c(56,   36,   28)

pdf("timem.pdf", height=2, width=6, useDingbats=FALSE)
par(mfrow=c(1,4))
par(mar=c(1,2,1,1))

x = c(0.8,1.0,1.2, 1.8,2.0,2.2, 2.8,3.0,3.2)

COL = c("steelblue", "plum3", "palevioletred3")

plot(x, c(d100, d75, d50), type="n",
   panel.first=grid(nx=NA, ny=NULL), ylim=c(0,120), xlim=c(0.5, 3.5),
   bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
points(x, c(d100, d75, d50), col=COL, type="h", lwd=2.5)
axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")
axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25",
   at=1:3, labels=c(100,75,50), tick=FALSE, line=-1.2)

plot(x, c(h100, h75, h50), type="n",
   panel.first=grid(nx=NA, ny=NULL), ylim=c(0,300), xlim=c(0.5, 3.5),
   bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
points(x, c(h100, h75, h50), col=COL, type="h", lwd=2.5)
axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")
axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25",
   at=1:3, labels=c(100,75,50), tick=FALSE, line=-1.2)

plot(x, c(p100, p75, p50), type="n",
   panel.first=grid(nx=NA, ny=NULL), ylim=c(0,600), xlim=c(0.5, 3.5),
   bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
points(x, c(p100, p75, p50), col=COL, type="h", lwd=2.5)
axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")
axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25",
   at=1:3, labels=c(100,75,50), tick=FALSE, line=-1.2)

plot(x, c(dmem, hmem, pmem), type="n",
   panel.first=grid(nx=NA, ny=NULL), ylim=c(0,60), xlim=c(0.5, 3.5),
   bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
points(x, c(dmem, hmem, pmem), col=COL, type="h", lwd=2.5)
axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")
axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25",
   at=1:3, labels=c("Droso.","Human", "Pine"), tick=FALSE, line=-1.2)

legend(x="topleft", inset=.01, lwd=1.5, text.col="grey30",
   col=c("steelblue", "plum3", "palevioletred3"),
   legend=c("MMP", "BWA-MEM", "Bowtie2"), bg="white",
   box.col=NA, cex=.9)

dev.off()
