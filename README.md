## Summary

The friction velocity is computed using a Matlab implementation of the method proposed by Klipp [1]. This method has the advantage to avoid the correction of instrument tilt by using the Reynolds stress tensor invariants. In [1], the friction velocity calculated for neutral conditions is found to be in good agreement with the standard method. Larger discrepancies are expected for non-neutral conditions or low wind speeds but produce a dimensionless shear that scales well with the non-dimensional Obukhov length. Type of application: Micrometeorology, surface layer turbulence.


## Content

The present Matlab submission contains:

- A function "frictionVelocity.m", which computes the friction velocity using the standard method or the one proposed in [1]. The latter method is more appropriate in complex terrain and a neutral atmosphere.
- An example file "Example1.mlx" that compares the 2 methods
- A data file "data.mat" that contains simulated wind turbulent velocity records


## Reference
[1] Klipp, C. (2018). Turbulent friction velocity calculated from the Reynolds stress tensor. Journal of the Atmospheric Sciences, (2018).
