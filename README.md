# harderBetterFasterStronger
Data and analysis scripts of the manuscript "Harder, better, faster, stronger: Weapon size is more sexually dimorphic than weapon biomechanical components in two freshwater anomuran species", published on the Journal of Morphology. Models are written in the stan modelling language and the rest is written in R. The only package needed to run the analysis is rstan.

Link to the paper
https://onlinelibrary.wiley.com/doi/abs/10.1002/jmor.21234

Guide to the files:

hbfs.dat.txt - all data used in the analysis

about.hbfs.dat.txt - meaning of the column names of the data in hbfs.dat.txt

model.stan - stan model used in most analysis

model.simple.stan - stan model used in the analysis of mechanical advantage

run.analysis.r - script that loads the data and stan models and runs all analyses

RData files contain all mcmc fits produced by run.analysis.r:

  - hfds.fit.ap   - apodeme model (as a function of claw size)
  - hfds.fit.apt  - apodeme model (as a function of body size)
  - hfds.fit.cs   - claw size model 
  - hfds.fit.maTL - mechanical advantage model
  - hfds.fit.pca  - claw shape model

Other useful links:

about the stan modelling language
https://mc-stan.org
https://mc-stan.org/docs/2_23/stan-users-guide-2_23.pdf

about R
https://www.r-project.org
https://cran.r-project.org/doc/contrib/Paradis-rdebuts_en.pdf

about package rstan
https://cran.r-project.org/web/packages/rstan/index.html
