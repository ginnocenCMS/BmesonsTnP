rm an.log
rm Results/*.root
rm Plots/*.pdf


#-----------------------ConvertIntoRootFiles-------------------

time root -b > an.log 2>&1 <<EOI
.x ConvertIntoRootFiles.C("Trg")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x ConvertIntoRootFiles.C("Trk")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x ConvertIntoRootFiles.C("MuonID")
.q
EOI

#-----------------------CompareMCData-------------------

time root -b > an.log 2>&1 <<EOI
.x CompareMCData.C("Trg")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMCData.C("Trk")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMCData.C("MuonID")
.q
EOI

#-----------------------CompareMCData-------------------



time root -b > an.log 2>&1 <<EOI
.x CompareMethods.C("Trg","Pt","MC")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMethods.C("Trk","Pt","MC")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMethods.C("MuID","Pt","MC")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMethods.C("Trg","Pt","Data")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMethods.C("Trk","Pt","Data")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x CompareMethods.C("MuID","Pt","Data")
.q
EOI


#-----------------------save plots-------------------



time root -b > an.log 2>&1 <<EOI
.x SaveFitPlots.C("Data","Trigger")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x SaveFitPlots.C("Data","Tracking")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x SaveFitPlots.C("Data","MuonID")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x SaveFitPlots.C("MC","Trigger")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x SaveFitPlots.C("MC","Tracking")
.q
EOI

time root -b > an.log 2>&1 <<EOI
.x SaveFitPlots.C("MC","MuonID")
.q
EOI



