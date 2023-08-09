#bx and by are the G-X and G-Y association, and se_x and se_y are their standard errors
#cor the correlation between bx and by
#cor it can be obtained from the intercept of LDSC regression
IVW_exact_olap <- function(bx,by,se_x, se_y,cor){
  #b_j is the ratio estimate
  b_j= by/bx
  ob = function(a){
    b = a[1]
    # we add the covariance part to correct the correlation
    w = 1/(se_y^2/bx^2 + (b^2)*se_x^2/bx^2-2*b/bx^2*cor*se_x*se_y)  
    q =  sum(w*(b_j - b)^2)
  }
  # bhat is the estimate of causal effect
  bhat      = optimize(ob,interval=c(-3,3))$minimum
  # calculate the weight using causal estimate
  W         = 1/(se_y^2/bx^2 + (bhat^2)*se_x^2/bx^2 - 
                   2*bhat/bx^2*cor*se_x*se_y)
  # calculate the standard error of causal estimate
  se        = sqrt(1/sum(W))
  sumstat    = c(bhat,se,bhat-qnorm(0.975)*se, bhat+qnorm(0.975)*se)
  return(sumstat)
}
