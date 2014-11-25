MATLAB_DSP
==========

This repository contains several MATLAB scripts applicable to Digital Signal Processing.

Description of m scripts:

conv_rt.m:  function conv_rt(x, h); 
            Convolve in real-time two finite-length Matlab row vectors, x and h 
            returning sequence object, y, 
            via circular buffer method.
            
deconv.m: function deconv(y, h); 
          deconvolve finite-length Matlab sequence object, y, 
          given impulse response sequence object, h, 
          returning sequence object, x.
