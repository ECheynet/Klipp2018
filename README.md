## Friction velocity calculation with Klipp's method (2018)

[![View Friction velocity estimate from the Reynolds stress tensor on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://se.mathworks.com/matlabcentral/fileexchange/66015-friction-velocity-estimate-from-the-reynolds-stress-tensor)
[![DOI](https://zenodo.org/badge/260771307.svg)](https://zenodo.org/badge/latestdoi/260771307)
<a href="https://www.buymeacoffee.com/echeynet" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 25px !important;width: 120px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>


The friction velocity is computed using a Matlab implementation of the method proposed by Klipp [1]. This method has the advantage to avoid the correction of instrument tilt by using the Reynolds stress tensor invariants. In [1], the friction velocity calculated for neutral conditions is found to be in good agreement with the standard method. Larger discrepancies are expected for non-neutral conditions or low wind speeds but produce a dimensionless shear that scales well with the non-dimensional Obukhov length. Type of application: Micrometeorology, surface layer turbulence.


## Content

The present Matlab submission contains:

- A function "frictionVelocity.m", which computes the friction velocity using the standard method or the one proposed in [1]. The latter method is more appropriate in complex terrain and a neutral atmosphere.
- An example file "Example1.mlx" that compares the 2 methods
- A data file "data.mat" that contains simulated wind turbulent velocity records


## Reference
[1] Klipp, C. (2018). Turbulent friction velocity calculated from the Reynolds stress tensor. Journal of the Atmospheric Sciences, (2018).
