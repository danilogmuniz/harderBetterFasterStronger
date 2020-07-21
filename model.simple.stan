//===================================================================
//Simplified ANCOVA (one continuous and one categorical predictor)
//with varying sigmas
//===================================================================
//specification of the data the model needs
data
{
    int <lower = 1> N; //total number of observations
    int <lower = 1> M; //number of categories
    
    real y[N];
    real x[N];
    int cat[N];//numerical category for each individual
    
}
//===================================================================
//specification of the parameters
parameters
{
  
  vector [M] A; //intercepts
  vector [M] B; //slopes

  vector  <lower = 0> [M] sigmas; //standard errors
  
}
//===================================================================
//actual model (likelihood)
model
{
  vector[N] mu; //vector of expected mean values
  
  for(i in 1:N)
  {
    mu[i] = A[cat[i]] + B[cat[i]] * x[i]; //expected mean for each observation
    
    y[i] ~ normal(mu[i], sigmas[cat[i]]); //likelihood
  }
}

//===================================================================
