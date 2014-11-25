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

dtft.m: function dtft(x, w); 
		Evaluate the Discrete Time Fourier Transform of Matlab sequence object, x, at
        radial frequencies given by double array w. 
        Returns a double array, y.

dtft2.m:	function dtft2(x, w);
			Evaluate the DTFT of Matlab sequence object, x, at 
            frequencies given by array w. Return values are a structure 
			with y.real (real part) and y.imag (imaginary part)

