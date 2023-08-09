# Correcting the bias of overlap with the weak instrument in Mendelian Randomization

The `IVW_exact_olap` is a function for correcting the bias of overlap between the study of genetic variant-exposure association and genetic-variant-outcome association. We extend
the method in [Bowden et al, 2018](https://academic.oup.com/ije/article/48/3/728/5251908) to account for the correlation due to the overlap in the two studies.  The source of this function is from [GitHub of Wes Spiller](https://github.com/WSpiller/RadialMR). We just add the correlation part to take into account sample overlapping. 

---
### Reference:
* Jack Bowden and others, Improving the accuracy of two-sample summary-data Mendelian randomization: moving beyond the NOME assumption, _International Journal of Epidemiology_, 48(3), June 2019, Pages 728–742, [https://doi.org/10.1093/ije/dyy258](https://doi.org/10.1093/ije/dyy258])
