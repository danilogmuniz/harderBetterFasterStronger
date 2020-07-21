# harderBetterFasterStronger
Data and scripts of the manuscript "Harder, better, faster, stronger: Weapon size is more sexually dimorphic than weapon biomechanical components in two freshwater anomuran species", published on the Journal of Morphology

Link to the paper
https://onlinelibrary.wiley.com/doi/abs/10.1002/jmor.21234

Guide to the files:

hbfs.dat.txt - all data used in the analysis

about.hbfs.dat.txt - meaning of the column names of the data in hbfs.dat.txt

model.stan - stan model used in most analysis

model.simple.stan - stan model used in the analysis of mechanical advantage

run.analysis.r - script that loads the data and stan models and run all analysis

RData files contain all mcmc fits produced by run.analysis.r:

  - hfds.fit.ap   - apodeme model (as a function of claw size)
  - hfds.fit.apt  - apodeme model (as a function of body size)
  - hfds.fit.cs   - claw size model 
  - hfds.fit.maTL - mechanical advantage model
  - hfds.fit.pca  - claw shape model
