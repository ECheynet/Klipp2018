## Friction velocity calculation with Klipp's method (2018)

[![View Friction velocity estimate from the Reynolds stress tensor on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://se.mathworks.com/matlabcentral/fileexchange/66015-friction-velocity-estimate-from-the-reynolds-stress-tensor)
[![DOI](https://zenodo.org/badge/260771307.svg)](https://zenodo.org/badge/latestdoi/260771307)


[![Donation](https://camo.githubusercontent.com/a37ab2f2f19af23730565736fb8621eea275aad02f649c8f96959f78388edf45/68747470733a2f2f77617265686f7573652d63616d6f2e636d68312e707366686f737465642e6f72672f316339333962613132323739393662383762623033636630323963313438323165616239616439312f3638373437343730373333613266326636393664363732653733363836393635366336343733326536393666326636323631363436373635326634343666366536313734363532643432373537393235333233303664363532353332333036313235333233303633366636363636363536353264373936353663366336663737363737323635363536653265373337363637)](https://www.buymeacoffee.com/echeynet)


The friction velocity is computed using a Matlab implementation of the method proposed by Klipp [1]. This method has the advantage to avoid the correction of instrument tilt by using the Reynolds stress tensor invariants. In [1], the friction velocity calculated for neutral conditions is found to be in good agreement with the standard method. Larger discrepancies are expected for non-neutral conditions or low wind speeds but produce a dimensionless shear that scales well with the non-dimensional Obukhov length. Type of application: Micrometeorology, surface layer turbulence.


## Content

The present Matlab submission contains:

- A function "frictionVelocity.m", which computes the friction velocity using the standard method or the one proposed in [1]. The latter method is more appropriate in complex terrain and a neutral atmosphere.
- An example file "Example1.mlx" that compares the 2 methods
- A data file "data.mat" that contains simulated wind turbulent velocity records


## Reference
[1] Klipp, C. (2018). Turbulent friction velocity calculated from the Reynolds stress tensor. Journal of the Atmospheric Sciences, (2018).
