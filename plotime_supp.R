
plot_panel = function(y100, y75, y50) {
   x = c(0.8,1.0,1.2, 1.8,2.0,2.2, 2.8,3.0,3.2)
   COL = c("steelblue", "plum3", "palevioletred3")
   ylim = ceiling(c(0, max(y100, y75, y50)) / 200) * 200

   plot(x, c(y100, y75, y50), type="n", ylim=ylim,
      panel.first=grid(nx=NA, ny=NULL), xlim=c(0.5, 3.5),
      bty="n", xaxt="n", yaxt="n", xlab="", ylab="")
   points(x, c(y100, y75, y50), col=COL, type="h", lwd=2.5)
   axis(side=2, cex.axis=.8, col="grey50", col.axis="grey25")
   axis(side=1, cex.axis=.8, col="grey50", col.axis="grey25",
      at=1:3, labels=c(100,75,50), tick=FALSE, line=-1.2)

}

pdf("timem_supp.pdf", height=6, width=6, useDingbats=FALSE)
par(mfrow=c(3,3))
par(mar=c(1,2,1,1))

# 2% error rate.
d100 = c(91,  152, 120)
d75  = c(64,  107, 80)
d50  = c(46,  68,  47)
h100 = c(132, 331, 276)
h75  = c(99,  261, 192)
h50  = c(67,  167, 100)
p100 = c(190, 725, 527)
p75  = c(147, 622, 333)
p50  = c(97,  476, 176)

plot_panel(d100, d75, d50)
plot_panel(h100, h75, h50)
plot_panel(p100, p75, p50)

# 5% error rate.
d100 = c(124, 232,  123)
d75  = c(95,  150,  83)
d50  = c(58,  78,   44)
h100 = c(208, 494,  237)
h75  = c(146, 332,  164)
h50  = c(98,  170,  87)
p100 = c(334, 1288, 474)
p75  = c(238, 832,  319)
p50  = c(157, 476,  159)

plot_panel(d100, d75, d50)
plot_panel(h100, h75, h50)
plot_panel(p100, p75, p50)

# 10% error rate.
d100 = c(145, 218,  72)
d75  = c(105, 132,  52)
d50  = c(57,  63,   30)
h100 = c(248, 455,  145)
h75  = c(174, 279,  103)
h50  = c(100, 140,  62)
p100 = c(406, 1220, 267)
p75  = c(279, 751,  187)
p50  = c(154, 385,  107)

plot_panel(d100, d75, d50)
plot_panel(h100, h75, h50)
plot_panel(p100, p75, p50)

legend(x="topright", inset=.01, lwd=1.5, text.col="grey30",
   col=c("steelblue", "plum3", "palevioletred3"),
   legend=c("MMP", "BWA-MEM", "Bowtie2"), bg="white",
   box.col=NA, cex=.9)

dev.off()
