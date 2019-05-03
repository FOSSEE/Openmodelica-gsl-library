package gsl
  package data_types
    model gsl_permutation
      extends ExternalObject;

      function constructor
        input Integer N;
        output gsl_permutation p;
      
        external "C" p = gsl_permutation_alloc(N) annotation(
          Include = "#include <gsl/gsl_permutation.h>",
          Library = "gsl",
          Library = "gslcblas");
      end constructor;

      function destructor "Release storage of p"
        input gsl_permutation p;
      
        external "C" gsl_permutation_free(p) annotation(
          Include = "#include <gsl/gsl_permutation.h>",
          Library = "gsl",
          Library = "gslcblas");
      end destructor;
    end gsl_permutation;

    record gsl_sf_result
      Real val;
      Real err;
    end gsl_sf_result;

    record gsl_sf_result_e10
      Real val;
      Real err;
      Integer e10;
    end gsl_sf_result_e10;
  end data_types;

  package mathematical
    function gsl_log1p
      //This function computes the value of log(1 + x) in a way that is accurate for small x
      input Real x;
      output Real y;
    
      external "C" y = log1p(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_log1p;

    function gsl_expm1
      //this function computes the value of exp(x)-1
      input Real x;
      output Real y;
    
      external "C" y = gsl_expm1(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_expm1;

    function gsl_hypot
      //this function computes the value of sqrt(x^2+y^2) in a way which avoids overflow
      input Real x;
      input Real y;
      output Real z;
    
      external "C" z = gsl_hypot(x, y) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_hypot;

    function gsl_hypot3
      //This function calculates the value of sqrt(x^2+y^2+z^2)
      input Real x;
      input Real y;
      input Real z;
      output Real o;
    
      external "C" o = gsl_hypot3(x, y, z) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_hypot3;

    function gsl_acosh
      // this function calculates the value of arccosh(x)
      input Real x;
      output Real y;
    
      external "C" y = acosh(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_acosh;

    function gsl_asinh
      // this function calculates the value of arcsinh(x)
      input Real x;
      output Real y;
    
      external "C" y = asinh(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_asinh;

    function gsl_atanh
      // this function calculates the value of arctanh(x)
      input Real x;
      output Real y;
    
      external "C" y = atanh(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_atanh;

    function gsl_ldexp
      //this function computes the value of x*2^e
      input Real x;
      // y should be given the value e
      output Real z;
    protected
      constant Real y = Modelica.Constants.e;
    
      external "C" z = gsl_ldexp(x, y) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end gsl_ldexp;

    function gsl_frexp
      //This function splits the number x into its normalized fraction f and exponent e, such that x = f ∗ 2^e
      //   and 0.5 <= f < 1. The function returns f and stores the exponent in e.
      input Real x;
      output Integer e;
      // it stores the exponent in y
      output Real z;
    
      external "C" z = gsl_frexp(x, e) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_frexp;

    function gsl_pow_int
      //this function computes x^n
      input Real x;
      input Integer n;
      output Real y;
    
      external "C" y = gsl_pow_int(x, n) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_int;

    function gsl_pow_2
      //This function calculates square fo the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_2(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_2;

    function gsl_pow_3
      //This function calculates cube of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_3(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_3;

    function gsl_pow_4
      //This function calculates number to the power of 4 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_4(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_4;

    function gsl_pow_5
      //This function calculates number to the power of 5 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_5(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_5;

    function gsl_pow_6
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_6(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_6;

    function gsl_pow_7
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_7(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_7;

    function gsl_pow_8
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_8(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_8;

    function gsl_pow_9
      //This function calculates number to the power of 6 of the given number
      input Real x;
      output Real y;
    
      external "C" y = gsl_pow_9(x) annotation(
        Library = "gsl",
        Library = "gslcblas");
    end gsl_pow_9;

    function GSL_SIGN
      //This function outputs -1 for negative number and +1 if the number is positive
      input Real x;
      output Integer y;
    
      external "C" y = GSL_SIGN(x) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_SIGN;

    function GSL_IS_ODD
      //This function outputs 1 if number is odd else if number is even it returns zero
      input Integer x;
      output Integer y;
    
      external "C" y = GSL_IS_ODD(x) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_IS_ODD;

    function GSL_IS_EVEN
      //This function outputs 0 if number is odd else if number is even it returns 1
      input Integer x;
      output Integer y;
    
      external "C" y = GSL_IS_EVEN(x) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_IS_EVEN;

    function GSL_MAX
      //  This function calculates the maximum of two numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX(a, b) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX;

    function GSL_MAX_DBL
      //  This function calculates the maximum of the given two floating point numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX_DBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX_DBL;

    function GSL_MIN_DBL
      //This function calculates the minimum of two given floating point numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MIN_DBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MIN_DBL;

    function GSL_MAX_INT
      //  This function calculates the maximum of two given integers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX_INT(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX_INT;

    function GSL_MIN_INT
      //  This function calculates the minimum of the two numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MIN_INT(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MIN_INT;

    function GSL_MAX_LDBL
      //  This function calculates the maximum of two long double numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MAX_LDBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MAX_LDBL;

    function GSL_MIN_LDBL
      //  This function calculates the minimum of two long double numbers
      input Real a;
      input Real b;
      output Real c;
    
      external "C" c = GSL_MIN_LDBL(a, b) annotation(
        Inline = true,
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end GSL_MIN_LDBL;

    function gsl_fcmp
      //This function determines whether x and y are approximately equal if they are equal within the range of epsilon it returns zero,if a>b it returns -1 and if b<a it returns 1
      input Real a;
      input Real b;
      output Real c;
    protected
      constant Real z = Modelica.Constants.eps;
    
      external "C" c = gsl_fcmp(a, b, z) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_math.h>");
    end gsl_fcmp;

    /**/
  end mathematical;

  package COMPLEX
    function gsl_complex_rect
      input Real x;
      input Real y;
      output Real z[2];
    
      external "C" z = gsl_complex_rect(x, y) annotation(
        Library = "gsl",
        Library = "gslcblas",
        Include = "#include<gsl/gsl_complex.h>",
        Include = "#include<gsl/gsl_complex_math.h>");
    end gsl_complex_rect;
  end COMPLEX;

  package Permutation
    function gsl_permutation_init
      input gsl.data_types.gsl_permutation p;
    
      external "C" gsl_permutation_init(p) annotation(
        Include = "#include <gsl/gsl_permutation.h>",
        Library = "gsl",
        Library = "gslcblas");
    end gsl_permutation_init;

    function gsl_permutation_get
      input gsl.data_types.gsl_permutation p;
      input Integer i;
      output Integer y;
    
      external "C" y = gsl_permutation_get(p, i) annotation(
        Include = "#include <gsl/gsl_permutation.h>",
        Library = "gsl",
        Library = "gslcblas");
    end gsl_permutation_get;

    function gsl_ran_shuffle
      input gsl.data_types.gsl_rng r;
      input gsl.data_types.gsl_permutation p;
      input Integer N;
    
      external "C" gsl_ran_shuffle(r, p, N, 8) annotation(
        Include = "#include <gsl/gsl_permutation.h>",
        Include = "#include <gsl/gsl_rng.h>",
        Include = "#include <gsl/gsl_randist.h>",
        Library = "gsl",
        Library = "gslcblas");
    end gsl_ran_shuffle;

    /*gsl_ran_shuffle(r, p.data, N, sizeof(size_t))*/
  end Permutation;

  package Special_functions
    package chap_7_5_1
      function gsl_sf_bessel_J0
        // The function  takes  a real number x as the input and calculates the zeroth order bessel function
        input Real x;
        //input to the bessel function
        output Real y;
      
        external "C" y = gsl_sf_bessel_J0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_J0;

      function gsl_sf_bessel_J0_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_J0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_J0_e;

      function gsl_sf_bessel_J1
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_J1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_J1;

      function gsl_sf_bessel_J1_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_J1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_J1_e;

      function gsl_sf_bessel_Jn
        input Real x;
        input Integer n;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Jn(n, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Jn;

      function gsl_sf_bessel_Jn_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Jn_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Jn_e;

      function gsl_sf_bessel_Jn_array
        input Integer nmin;
        input Integer nmax;
        input Real x;
        output Real result_array[nmax - nmin];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Jn_array(nmin, nmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Jn_array;
    end chap_7_5_1;

    package chap_7_5_2
      function gsl_sf_bessel_Y0
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Y0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Y0;

      function gsl_sf_bessel_Y0_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Y0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Y0_e;

      function gsl_sf_bessel_Y1
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Y1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Y1;

      function gsl_sf_bessel_Y1_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Y1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Y1_e;

      function gsl_sf_bessel_Yn
        input Real x;
        input Integer n;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Yn(n, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Yn;

      function gsl_sf_bessel_Yn_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Yn_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Yn_e;

      function gsl_sf_bessel_Yn_array
        input Integer nmin;
        input Integer nmax;
        input Real x;
        output Real result_array[nmax - nmin];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Yn_array(nmin, nmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Yn_array;
    end chap_7_5_2;

    package chap_7_5_3
      function gsl_sf_bessel_I0
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_I0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I0;

      function gsl_sf_bessel_I0_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_I0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I0_e;

      function gsl_sf_bessel_I1
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_I1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I1;

      function gsl_sf_bessel_I1_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_I1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I1_e;

      function gsl_sf_bessel_In
        input Real x;
        input Integer n;
        output Real y;
      
        external "C" y = gsl_sf_bessel_In(n, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_In;

      function gsl_sf_bessel_In_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_In_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_In_e;

      function gsl_sf_bessel_In_array
        input Integer nmin;
        input Integer nmax;
        input Real x;
        output Real result_array[nmax - nmin];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_In_array(nmin, nmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_In_array;

      function gsl_sf_bessel_I0_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_I0_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I0_scaled;

      function gsl_sf_bessel_I0_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_I0_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I0_scaled_e;

      function gsl_sf_bessel_I1_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_I1_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I1_scaled;

      function gsl_sf_bessel_I1_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_I1_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_I1_scaled_e;

      function gsl_sf_bessel_In_scaled
        input Real x;
        input Integer n;
        output Real y;
      
        external "C" y = gsl_sf_bessel_In_scaled(n, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_In_scaled;

      function gsl_sf_bessel_In_scaled_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_In_scaled_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_In_scaled_e;

      function gsl_sf_bessel_In_scaled_array
        input Integer nmin;
        input Integer nmax;
        input Real x;
        output Real result_array[nmax - nmin];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_In_scaled_array(nmin, nmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_In_scaled_array;
    end chap_7_5_3;

    package chap_7_5_4
      function gsl_sf_bessel_K0
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_K0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K0;

      function gsl_sf_bessel_K0_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_K0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K0_e;

      function gsl_sf_bessel_K1
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_K1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K1;

      function gsl_sf_bessel_K1_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_K1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K1_e;

      function gsl_sf_bessel_Kn
        input Real x;
        input Integer n;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Kn(n, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Kn;

      function gsl_sf_bessel_Kn_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Kn_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Kn_e;

      function gsl_sf_bessel_Kn_array
        input Integer nmin;
        input Integer nmax;
        input Real x;
        output Real result_array[nmax - nmin];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Kn_array(nmin, nmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Kn_array;

      function gsl_sf_bessel_K0_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_K0_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K0_scaled;

      function gsl_sf_bessel_K0_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_K0_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K0_scaled_e;

      function gsl_sf_bessel_K1_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_K1_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K1_scaled;

      function gsl_sf_bessel_K1_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_K1_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_K1_scaled_e;

      function gsl_sf_bessel_Kn_scaled
        input Real x;
        input Integer n;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Kn_scaled(n, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Kn_scaled;

      function gsl_sf_bessel_Kn_scaled_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Kn_scaled_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Kn_scaled_e;

      function gsl_sf_bessel_Kn_scaled_array
        input Integer nmin;
        input Integer nmax;
        input Real x;
        output Real result_array[nmax - nmin];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Kn_scaled_array(nmin, nmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Kn_scaled_array;
    end chap_7_5_4;

    package chap_7_5_5
      function gsl_sf_bessel_j0
        //this function computes the regular spherical bessels function j0(x)=sin(x)/x
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_j0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_j0;

      function gsl_sf_bessel_j0_e
        // This function computes spherical bessels zero order function j(x)=sin(x)/x
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_j0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_j0_e;

      function gsl_sf_bessel_j1
        //This function computes the 1st order spherical bessels function j1(x)=(sin(x)/x-cos(x))/x
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_j1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_j1;

      function gsl_sf_bessel_j1_e
        //This function computes the 1st order spherical bessels function j1(x)=(sin(x)/x-cos(x))/x
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_j1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_j1_e;

      function gsl_sf_bessel_j2
        //This function computes the 2nd order regular spherical bessels function j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x.
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_j2(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_j2;

      function gsl_sf_bessel_j2_e
        //This function computes the 2nd order regular spherical bessels function j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x.
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_j2_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_j2_e;

      function gsl_sf_bessel_jl
        input Integer l;
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_jl(l, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_jl;

      function gsl_sf_bessel_jl_e
        input Integer l;
        //order of the bessel function
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_jl_e(l, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_jl_e;

      function gsl_sf_bessel_jl_array
        // input Integer nmin;
        input Integer lmax;
        input Real x;
        output Real result_array[lmax];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_jl_array(lmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_jl_array;

      function gsl_sf_bessel_jl_steed_array
        // input Integer nmin;
        input Integer lmax;
        input Real x;
        output Real result_array[lmax];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_jl_steed_array(lmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_jl_steed_array;
    end chap_7_5_5;

    package chap_7_5_6
      function gsl_sf_bessel_y0
        //this function computes the regular spherical bessels function y0(x)=sin(x)/x
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_y0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_y0;

      function gsl_sf_bessel_y0_e
        // This function computes spherical bessels zero order function j(x)=sin(x)/x
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_y0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_y0_e;

      function gsl_sf_bessel_y1
        //This function computes the 1st order spherical bessels function y1(x)=(sin(x)/x-cos(x))/x
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_y1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_y1;

      function gsl_sf_bessel_y1_e
        //This function computes the 1st order spherical bessels function y1(x)=(sin(x)/x-cos(x))/x
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_y1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_y1_e;

      function gsl_sf_bessel_y2
        //This function computes the 2nd order regular spherical bessels function j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x.
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_y2(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_y2;

      function gsl_sf_bessel_y2_e
        //This function computes the 2nd order regular spherical bessels function j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x.
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_y2_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_y2_e;

      function gsl_sf_bessel_yl
        input Integer l;
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_yl(l, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_yl;

      function gsl_sf_bessel_yl_e
        input Integer l;
        //order of the bessel function
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_yl_e(l, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_yl_e;

      function gsl_sf_bessel_yl_array
        // input Integer nmin;
        input Integer lmax;
        input Real x;
        output Real result_array[lmax];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_yl_array(lmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_yl_array;
    end chap_7_5_6;

    package chap_7_5_7
      //regular modified spherical bessel functions

      function gsl_sf_bessel_i0_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_i0_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_i0_scaled;

      function gsl_sf_bessel_i0_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_i0_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_i0_scaled_e;

      function gsl_sf_bessel_i1_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_i1_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_i1_scaled;

      function gsl_sf_bessel_i1_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_i1_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_i1_scaled_e;

      function gsl_sf_bessel_i2_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_i2_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_i2_scaled;

      function gsl_sf_bessel_i2_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_i2_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_i2_scaled_e;

      function gsl_sf_bessel_il_scaled
        input Real x;
        input Integer l;
        output Real y;
      
        external "C" y = gsl_sf_bessel_il_scaled(l, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_il_scaled;

      function gsl_sf_bessel_il_scaled_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_il_scaled_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_il_scaled_e;

      function gsl_sf_bessel_il_scaled_array
        input Integer lmax;
        input Real x;
        output Real result_array[lmax];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_il_scaled_array(lmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_il_scaled_array;
    end chap_7_5_7;

    package chap_7_5_8
      function gsl_sf_bessel_k0_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_k0_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_k0_scaled;

      function gsl_sf_bessel_k0_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_k0_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_k0_scaled_e;

      function gsl_sf_bessel_k1_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_k1_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_k1_scaled;

      function gsl_sf_bessel_k1_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_k1_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_k1_scaled_e;

      function gsl_sf_bessel_k2_scaled
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_k2_scaled(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_k2_scaled;

      function gsl_sf_bessel_k2_scaled_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_k2_scaled_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_k2_scaled_e;

      function gsl_sf_bessel_kl_scaled
        input Real x;
        input Integer l;
        output Real y;
      
        external "C" y = gsl_sf_bessel_kl_scaled(l, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_kl_scaled;

      function gsl_sf_bessel_kl_scaled_e
        input Real x;
        input Integer n;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_kl_scaled_e(n, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_kl_scaled_e;

      function gsl_sf_bessel_kl_scaled_array
        input Integer lmax;
        input Real x;
        output Real result_array[lmax];
        output Integer y;
      
        external "C" y = gsl_sf_bessel_kl_scaled_array(lmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_kl_scaled_array;
    end chap_7_5_8;

    package chap_7_5_9
      function gsl_sf_bessel_Jnu
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Jnu(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Jnu;

      function gsl_sf_bessel_Jnu_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Jnu_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Jnu_e;
    end chap_7_5_9;

    package chap_7_5_10
      function gsl_sf_bessel_Ynu
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Ynu(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Ynu;

      function gsl_sf_bessel_Ynu_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Ynu_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Ynu_e;
    end chap_7_5_10;

    package chap_7_5_11
      function gsl_sf_bessel_Inu
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Inu(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Inu;

      function gsl_sf_bessel_Inu_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Inu_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Inu_e;

      function gsl_sf_bessel_Inu_scaled
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Inu_scaled(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Inu_scaled;

      function gsl_sf_bessel_Inu_scaled_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Inu_scaled_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Inu_scaled_e;
    end chap_7_5_11;

    package chap_7_5_12
      //Irregular modified bessels function

      function gsl_sf_bessel_Knu
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Knu(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Knu;

      function gsl_sf_bessel_Knu_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Knu_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Knu_e;

      //Irregular modified bessels function

      function gsl_sf_bessel_lnKnu
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_lnKnu(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_lnKnu;

      function gsl_sf_bessel_lnKnu_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_lnKnu_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_lnKnu_e;

      function gsl_sf_bessel_Knu_scaled
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_Knu_scaled(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Knu_scaled;

      function gsl_sf_bessel_Knu_scaled_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_Knu_scaled_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_Knu_scaled_e;
    end chap_7_5_12;

    package chap_7_5_13
      function gsl_sf_bessel_zero_J0
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_zero_J0(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_zero_J0;

      function gsl_sf_bessel_zero_J0_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_zero_J0_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_zero_J0_e;

      function gsl_sf_bessel_zero_J1
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_bessel_zero_J1(x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_zero_J1;

      function gsl_sf_bessel_zero_J1_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_zero_J1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_zero_J1_e;

      function gsl_sf_bessel_zero_Jnu
        input Real x;
        input Real nu;
        output Real y;
      
        external "C" y = gsl_sf_bessel_zero_Jnu(nu, x) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_zero_Jnu;

      function gsl_sf_bessel_zero_Jnu_e
        input Real x;
        input Real nu;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_bessel_zero_Jnu_e(nu, x, result) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_zero_Jnu_e;
    end chap_7_5_13;

    package chap_7_6
      //clausen function

      function gsl_sf_clausen
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_clausen(x) annotation(
          Library = "gsl",
          Library = "gslcblas",
          Include = "#include<gsl/gsl_sf_clausen.h>");
      end gsl_sf_clausen;

      function gsl_sf_clausen_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_clausen_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_clausen.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_clausen_e;
    end chap_7_6;

    package chap_7_7_1
      function gsl_sf_hydrogenicR_1
        input Real Z;
        //atomic number of the atom
        input Real r;
        //radus of the atom
        output Real R;
        //lowest-order normalized hydrogenic bound state radial wavefunction
      
        external "C" R = gsl_sf_hydrogenicR_1(Z, r) annotation(
          Include = "#include <gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_hydrogenicR_1;

      function gsl_sf_hydrogenicR_1_e
        input Real Z;
        //atomic number of the atom
        input Real r;
        //radus of the atom
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
        //lowest-order normalized hydrogenic bound state radial wavefunction
      
        external "C" y = gsl_sf_hydrogenicR_1_e(Z, r, result) annotation(
          Include = "#include <gsl/gsl_sf_coulomb.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_hydrogenicR_1_e;

      function gsl_sf_hydrogenicR
        input Integer n;
        //order of the wavefunction
        input Integer l;
        input Real Z;
        //atomic number of the atom
        input Real r;
        //radus of the atom
        output Real R;
        //lowest-order normalized hydrogenic bound state radial wavefunction
      
        external "C" R = gsl_sf_hydrogenicR(n, l, Z, r) annotation(
          Include = "#include <gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_hydrogenicR;

      function gsl_sf_hydrogenicR_e
        input Integer n;
        input Integer l;
        input Real Z;
        //atomic number of the atom
        input Real r;
        //radus of the atom
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
        //lowest-order normalized hydrogenic bound state radial wavefunction
      
        external "C" y = gsl_sf_hydrogenicR_e(n, l, Z, r, result) annotation(
          Include = "#include <gsl/gsl_sf_coulomb.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_hydrogenicR_e;
    end chap_7_7_1;

    package chap_7_7_2
      function gsl_sf_coulomb_wave_FG_e
        input Real eta;
        // eta=Z/k,where Z is atomic number
        input Real x;
        input Real L_F;
        input Integer k;
        //L_F-k>-1/2
        output gsl.data_types.gsl_sf_result F;
        //coulomb wave function
        output gsl.data_types.gsl_sf_result Fp;
        //derivative of wave function
        output gsl.data_types.gsl_sf_result G;
        //coulomb wave function
        output gsl.data_types.gsl_sf_result Gp;
        //derivative of wave function
        output Real exp_F;
        //out of bound error exponenet stored here
        output Real exp_G;
        //out of bound error exponent stored here
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_wave_FG_e(eta, x, L_F, k, F, Fp, G, Gp, exp_F, exp_G) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_wave_FG_e;

      /*
        int gsl_sf_coulomb_wave_F_array(double L_min, int kmax, double eta, double x, double fc_array[],
        double * F_exponent)
      */

      function gsl_sf_coulomb_wave_F_array
        input Real L_min;
        input Integer kmax;
        input Real eta;
        input Real x;
        output Real fc_array[kmax];
        output Real F_exponent;
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_wave_F_array(L_min, kmax, eta, x, fc_array, F_exponent) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_wave_F_array;

      /*
        
        int gsl_sf_coulomb_wave_FG_array(double L_min, int kmax, double eta, double x, double fc_array[],
        double gc_array[], double * F_exponent, double * G_exponent)*/

      function gsl_sf_coulomb_wave_FG_array
        input Real L_min;
        input Integer kmax;
        input Real eta;
        input Real x;
        output Real fc_array[kmax];
        output Real gc_array[kmax];
        output Real F_exponent;
        output Real G_exponent;
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_wave_FG_array(L_min, kmax, eta, x, fc_array, gc_array, F_exponent, G_exponent) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_wave_FG_array;

      function gsl_sf_coulomb_wave_FGp_array
        input Real L_min;
        input Integer kmax;
        input Real eta;
        input Real x;
        output Real fc_array[kmax];
        output Real fcp_array[kmax];
        output Real gc_array[kmax];
        output Real gcp_array[kmax];
        output Real F_exponent;
        output Real G_exponent;
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_wave_FGp_array(L_min, kmax, eta, x, fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_wave_FGp_array;

      function gsl_sf_coulomb_wave_sphF_array
        input Real L_min;
        input Integer kmax;
        input Real eta;
        input Real x;
        output Real fc_array[kmax];
        output Real F_exponent;
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_wave_sphF_array(L_min, kmax, eta, x, fc_array, F_exponent) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_wave_sphF_array;
    end chap_7_7_2;

    package chap_7_7_3
      function gsl_sf_coulomb_CL_e
        input Real L;
        input Real eta;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_CL_e(L, eta, result) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_CL_e;

      function gsl_sf_coulomb_CL_array
        input Real Lmin;
        input Integer kmax;
        input Real eta;
        output Real cl[kmax];
        output Integer y;
      
        external "C" y = gsl_sf_coulomb_CL_array(Lmin, kmax, eta, cl) annotation(
          Include = "#include<gsl/gsl_sf_coulomb.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coulomb_CL_array;
    end chap_7_7_3;

    package chap_7_8_1
      /*
        
        double 
      int gsl_sf_coupling_3j_e(int two_ja, int two_jb, int two_jc, int two_ma, int two_mb, int two_mc,
      gsl_sf_result * result)
      These routines compute the Wigner 3-j coefficient,*/

      function gsl_sf_coupling_3j
        input Integer two_ja;
        input Integer two_jb;
        input Integer two_jc;
        input Integer two_ma;
        input Integer two_mb;
        input Integer two_mc;
        output Real y;
      
        external "C" y = gsl_sf_coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc) annotation(
          Include = "#include<gsl/gsl_sf_coupling.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coupling_3j;

      function gsl_sf_coupling_3j_e
        input Integer two_ja;
        input Integer two_jb;
        input Integer two_jc;
        input Integer two_ma;
        input Integer two_mb;
        input Integer two_mc;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result) annotation(
          Include = "#include<gsl/gsl_sf_coupling.h>",
          Include = "#include<gsl/gsl_sf_result>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coupling_3j_e;
    end chap_7_8_1;

    package chap_7_8_2
      function gsl_sf_coupling_6j
        input Integer two_ja;
        input Integer two_jb;
        input Integer two_jc;
        input Integer two_ma;
        input Integer two_mb;
        input Integer two_mc;
        output Real y;
      
        external "C" y = gsl_sf_coupling_6j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc) annotation(
          Include = "#include<gsl/gsl_sf_coupling.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coupling_6j;

      function gsl_sf_coupling_6j_e
        input Integer two_ja;
        input Integer two_jb;
        input Integer two_jc;
        input Integer two_ma;
        input Integer two_mb;
        input Integer two_mc;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, result) annotation(
          Include = "#include<gsl/gsl_sf_coupling.h>",
          Include = "#include<gsl/gsl_sf_result>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coupling_6j_e;
    end chap_7_8_2;

    /* 
     
     double gsl_sf_coupling_9j(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf,
    int two_jg, int two_jh, int two_ji)
    int gsl_sf_coupling_9j_e(int two_ja, int two_jb, int two_jc, int two_jd, int two_je, int two_jf, int two_jg,
    int two_jh, int two_ji, gsl_sf_result * result)
    These routines compute the Wigner 9-j coeffici
      
     */

    package chap_7_8_3
      function gsl_sf_coupling_9j
        input Integer two_ja;
        input Integer two_jb;
        input Integer two_jc;
        input Integer two_jd;
        input Integer two_je;
        input Integer two_jf;
        input Integer two_jg;
        input Integer two_jh;
        input Integer two_ji;
        output Real y;
      
        external "C" y = gsl_sf_coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji) annotation(
          Include = "#include<gsl/gsl_sf_coupling.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coupling_9j;

      function gsl_sf_coupling_9j_e
        input Integer two_ja;
        input Integer two_jb;
        input Integer two_jc;
        input Integer two_jd;
        input Integer two_je;
        input Integer two_jf;
        input Integer two_jg;
        input Integer two_jh;
        input Integer two_ji;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, result) annotation(
          Include = "#include<gsl/gsl_sf_coupling.h>",
          Include = "#include<gsl/gsl_sf_result>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_coupling_9j_e;
    end chap_7_8_3;

    package chap_7_9
      function gsl_sf_dawson
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_dawson(x) annotation(
          Include = "#include <gsl/gsl_sf_dawson.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_dawson;

      function gsl_sf_dawson_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_dawson_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_dawson.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_dawson_e;
    end chap_7_9;

    package chap_7_10
      // double gsl_sf_debye_1(double x)

      function gsl_sf_debye_1
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_debye_1(x) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_1;

      function gsl_sf_debye_1_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_debye_1_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_1_e;

      function gsl_sf_debye_2
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_debye_2(x) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_2;

      function gsl_sf_debye_2_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_debye_2_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_2_e;

      function gsl_sf_debye_3
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_debye_3(x) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_3;

      function gsl_sf_debye_3_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_debye_3_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_3_e;

      function gsl_sf_debye_4
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_debye_4(x) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_4;

      function gsl_sf_debye_4_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_debye_4_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_4_e;

      function gsl_sf_debye_5
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_debye_5(x) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_5;

      function gsl_sf_debye_5_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_debye_5_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_5_e;

      function gsl_sf_debye_6
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_debye_6(x) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_6;

      function gsl_sf_debye_6_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_debye_6_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_debye.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_debye_6_e;
    end chap_7_10;

    package chap_7_11_1
      function gsl_sf_dilog
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_dilog(x) annotation(
          Include = "#include <gsl/gsl_sf_dilog.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_dilog;

      function gsl_sf_dilog_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_dilog_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_dilog.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_dilog_e;
    end chap_7_11_1;

    package chap_7_11_2
      function gsl_sf_complex_dilog_e
        input Real r;
        input Real theta;
        output gsl.data_types.gsl_sf_result result_re;
        output gsl.data_types.gsl_sf_result result_im;
        output Integer y;
      
        external "C" y = gsl_sf_complex_dilog_e(r, theta, result_re, result_im) annotation(
          Include = "#include<gsl/gsl_sf_dilog.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_complex_dilog_e;

      /* int gsl_sf_complex_dilog_e(double r, double theta, gsl_sf_result * result_re, gsl_sf_result * re-
      sult_im)*/
    end chap_7_11_2;

    package chap_7_12
      function gsl_sf_multiply
        input Real x;
        input Real y;
        output Real z;
      
        external "C" z = gsl_sf_multiply(x, y) annotation(
          Include = "#include<gsl/gsl_sf_elementary.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_multiply;

      function gsl_sf_multiply_e
        input Real x;
        input Real y;
        output gsl.data_types.gsl_sf_result result;
        output Integer z;
      
        external "C" z = gsl_sf_multiply_e(x, y, result) annotation(
          Include = "#include<gsl/gsl_sf_elementary.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_multiply_e;

      function gsl_sf_multiply_err_e
        input Real x;
        input Real dx;
        input Real y;
        input Real dy;
        output gsl.data_types.gsl_sf_result result;
        output Integer z;
      
        external "C" z = gsl_sf_multiply_err_e(x, dx, y, dy, result) annotation(
          Include = "#include<gsl/gsl_sf_elementary.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_multiply_err_e;
    end chap_7_12;

    package chap_7_15_1
      //double gsl_sf_erf(double x)
      //int gsl_sf_erf_e(double x, gsl_sf_result * result)

      function gsl_sf_erf
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_erf(x) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erf;

      function gsl_sf_erf_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_erf_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Include = "#include<gsl/gsl.sf.result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erf_e;
    end chap_7_15_1;

    package chap_7_15_2
      function gsl_sf_erfc
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_erfc(x) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erfc;

      function gsl_sf_erfc_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_erfc_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Include = "#include<gsl/gsl.sf.result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erfc_e;
    end chap_7_15_2;

    package chap_7_15_3
      function gsl_sf_log_erfc
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_log_erfc(x) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_log_erfc;

      function gsl_sf_log_erfc_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_log_erfc_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Include = "#include<gsl/gsl.sf.result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_log_erfc_e;
    end chap_7_15_3;

    package chap_7_15_4
      /*
      double gsl_sf_hazard(double x)
      int gsl_sf_erf_Z_e(double x, gsl_sf_result * result)
      double gsl_sf_erf_Q(double x)
      int gsl_sf_erf_Q_e(double x, gsl_sf_result * result)*/

      function gsl_sf_erf_Z
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_erf_Z(x) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erf_Z;

      function gsl_sf_erf_Z_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_erf_Z_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Include = "#include<gsl/gsl.sf.result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erf_Z_e;

      function gsl_sf_erf_Q
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_erf_Q(x) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erf_Q;

      function gsl_sf_erf_Q_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_erf_Q_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Include = "#include<gsl/gsl.sf.result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_erf_Q_e;

      /*double gsl_sf_hazard(double x)
      int gsl_sf_hazard_e(double x, gsl_sf_result * result)*/

      function gsl_sf_hazard
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_hazard(x) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_hazard;

      function gsl_sf_hazard_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_hazard_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_erf.h>",
          Include = "#include<gsl/gsl.sf.result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_hazard_e;
    end chap_7_15_4;

    package chap_7_16_1
      /*double gsl_sf_exp(double x)
      int gsl_sf_exp_e(double x, gsl_sf_result * result)
      These routines provide an exponential function exp(x) using GSL semantics and error checking.
      int gsl_sf_exp_e10_e(double x, gsl_sf_result_e10 * result)
      This function computes the exponential exp(x) using the gsl_sf_result_e10 type to return a result with
      extended range. This function may be useful if the value of exp(x) would overflow the numeric range of
      double.
      double gsl_sf_exp_mult(double x, double y)

      These routines exponentiate x and multiply by the factor y to return the product y exp(x).
      int gsl_sf_exp_mult_e10_e(const double x, const double y, gsl_sf_result_e10 * result)*/

      function gsl_sf_exp
        input Real x;
        //input to the exp function
        output Real y;
      
        external "C" y = gsl_sf_exp(x) annotation(
          Include = "#include <gsl/gsl_sf_exp.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp;

      function gsl_sf_exp_e
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_exp_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_exp.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_e;

      function gsl_sf_exp_e10_e
        input Real x;
        output gsl.data_types.gsl_sf_result_e10 result;
        output Integer y;
      
        external "C" y = gsl_sf_exp_e10_e(x, result) annotation(
          Include = "#include <gsl/gsl_sf_exp.h>",
          Include = "#include <gsl/gsl_sf_result_e10.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_e10_e;

      function gsl_sf_exp_mult
        input Real x;
        input Real y;
        output Real z;
      
        external "C" z = gsl_sf_exp_mult(x, y) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Library = "gsl",
          Library = "gslcbla)");
      end gsl_sf_exp_mult;

      function gsl_sf_exp_mult_e
        input Real x;
        input Real y;
        output gsl.data_types.gsl_sf_result result;
        output Integer z;
      
        external "C" z = gsl_sf_exp_mult_e(x, y, result) annotation(
          Include = "#include <gsl/gsl_sf_exp.h>",
          Include = "#include <gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_mult_e;

      function gsl_sf_exp_mult_e10_e
        input Real x;
        input Real y;
        output gsl.data_types.gsl_sf_result_e10 result;
        output Integer z;
      
        external "C" z = gsl_sf_exp_mult_e10_e(x, y, result) annotation(
          Include = "#include <gsl/gsl_sf_exp.h>",
          Include = "#include <gsl/gsl_sf_result_e10.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_mult_e10_e;
    end chap_7_16_1;

    package chap_7_16_2
      function gsl_sf_expm1
        //This routines compute the quantity exp(x) − 1 using an algorithm that is accurate for small x.
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_expm1(x) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expm1;

      function gsl_sf_expm1_e
        //This routines compute the quantity exp(x) − 1 using an algorithm that is accurate for small x.
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_expm1_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expm1_e;

      function gsl_sf_exprel
        //These routines compute the quantity (exp(x) − 1)/x using an algorithm that is accurate for small x
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_exprel(x) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exprel;

      function gsl_sf_exprel_e
        //These routines compute the quantity (exp(x) − 1)/x using an algorithm that is accurate for small x
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_exprel_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exprel_e;

      function gsl_sf_exprel_2
        //This routines compute the quantity 2(exp(x) − 1 − x)/x^2 using an algorithm that is accurate for small x
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_exprel_2(x) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exprel_2;

      function gsl_sf_exprel_2_e
        //This routines compute the quantity 2(exp(x) − 1 − x)/x^2 using an algorithm that is accurate for small x
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_exprel_2_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exprel_2_e;

      function gsl_sf_exprel_n
        input Integer n;
        input Real x;
        output Real z;
      
        external "C" z = gsl_sf_exprel_n(n, x) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exprel_n;

      function gsl_sf_exprel_n_e
        input Integer n;
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_exprel_n_e(n, x, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exprel_n_e;
    end chap_7_16_2;

    package chap_7_16_3
      function gsl_sf_exp_err_e
        //This function exponentiates x with an associated absolute error dx
        input Real x;
        input Real dx;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_exp_err_e(x, dx, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_err_e;

      function gsl_sf_exp_err_e10_e
        //This function exponentiates a quantity x with an associated absolute error dx using the gsl_sf_result_e10
        input Real x;
        input Real dx;
        output gsl.data_types.gsl_sf_result_e10 result;
        output Integer y;
      
        external "C" y = gsl_sf_exp_err_e10_e(x, dx, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result_e10.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_err_e10_e;

      function gsl_sf_exp_mult_err_e
        //This routine computes the product y exp(x) for the quantities x, y with associated absolute errors dx, dy.
        input Real x;
        input Real dx;
        input Real y;
        input Real dy;
        output gsl.data_types.gsl_sf_result result;
        output Integer z;
      
        external "C" z = gsl_sf_exp_mult_err_e(x, dx, y, dy, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_mult_err_e;

      function gsl_sf_exp_mult_err_e10_e
        //This routine computes the product y exp(x) for the quantities x, y with associated absolute errors dx, dy usingthe gsl_sf_result_e10 type to return a result with extended range
        input Real x;
        input Real dx;
        input Real y;
        input Real dy;
        output gsl.data_types.gsl_sf_result_e10 result;
        output Integer z;
      
        external "C" z = gsl_sf_exp_mult_err_e10_e(x, dx, y, dy, result) annotation(
          Include = "#include<gsl/gsl_sf_exp.h>",
          Include = "#include<gsl/gsl_sf_result_e10.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_exp_mult_err_e10_e;
    end chap_7_16_3;

    package chap_7_17_1
      function gsl_sf_expint_E1
        //These routines compute the exponential integral E 1 (x),
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_expint_E1(x) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_E1;

      function gsl_sf_expint_E1_e
        //These routines compute the exponential integral E 1 (x),
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_expint_E1_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_E1_e;

      function gsl_sf_expint_E2
        //These routines compute the exponential integral E 2 (x),
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_expint_E2(x) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_E2;

      function gsl_sf_expint_E2_e
        //These routines compute the exponential integral E 2 (x),
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_expint_E2_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_E2_e;

      function gsl_sf_expint_En
        //These routines compute the exponential integral E n (x),
        input Integer n;
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_expint_En(n, x) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_En;

      function gsl_sf_expint_En_e
        //These routines compute the exponential integral E 2 (x),
        input Integer n;
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_expint_En_e(n, x, result) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_En_e;
    end chap_7_17_1;

    package chap_7_17_2
      function gsl_sf_expint_Ei
        //These routines compute the exponential integral Ei(x)
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_expint_Ei(x) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_Ei;

      function gsl_sf_expint_Ei_e
        //These routines compute the exponential integral Ei(x)
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_expint_Ei_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_expint_Ei_e;
    end chap_7_17_2;

    package chap_7_17_3
      function gsl_sf_Shi
        //hyperbolic integrals
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_Shi(x) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_Shi;

      function gsl_sf_Shi_e
        //hyperbolic integral
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_Shi_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_Shi_e;
      
      
      
    function gsl_sf_Chi
        //hyperbolic integrals
        input Real x;
        output Real y;
      
        external "C" y = gsl_sf_Chi(x) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_Chi;
    
      function gsl_sf_Chi_e
        //hyperbolic integral
        input Real x;
        output gsl.data_types.gsl_sf_result result;
        output Integer y;
      
        external "C" y = gsl_sf_Chi_e(x, result) annotation(
          Include = "#include<gsl/gsl_sf_expint.h>",
          Include = "#include<gsl/gsl_sf_result.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_Chi_e;
    end chap_7_17_3;
    
    package chap_7_17_4
    function gsl_sf_expint_3
    input Real x;
    output Real y;
    external "C" y=gsl_sf_expint_3(x)annotation(Include="#include<gsl/gsl_sf_expint.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_expint_3;
    
    function gsl_sf_expint_3_e
    input Real x;
    output gsl.data_types.gsl_sf_result result;
    output Integer y;
    external "C" y=gsl_sf_expint_3_e(x,result)annotation(Include="#include<gsl/gsl_sf_expint.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_expint_3_e;
    end chap_7_17_4;
    
    package chap_7_17_5
    function gsl_sf_Si
    input Real x;
    output Real y;
    external "C" y=gsl_sf_Si(x)annotation(Include="#include<gsl/gsl_sf_expint.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_Si;
    
    function gsl_sf_Si_e
    input Real x;
    output gsl.data_types.gsl_sf_result result;
    output Integer y;
    external "C" y=gsl_sf_Si_e(x,result)annotation(Include="#include<gsl/gsl_sf_expint.h>",Include="#include<gsl/gsl_sf_result>",Library="gsl",Library="gslcbas");
    end gsl_sf_Si_e;
    
    function gsl_sf_Ci
    input Real x;
    output Real y;
    external "C" y=gsl_sf_Ci(x)annotation(Include="#include<gsl/gsl_sf_expint.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_Ci;
    
    function gsl_sf_Ci_e
    input Real x;
    output gsl.data_types.gsl_sf_result result;
    output Integer y;
    external "C" y=gsl_sf_Ci_e(x,result)annotation(Include="#include<gsl/gsl_sf_expint.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_Ci_e;
    end chap_7_17_5;
    
    package chap_7_18_1
    
    
    function gsl_sf_fermi_dirac_m1
    input  Real x;
    output Real y;
    external "C" y=gsl_sf_fermi_dirac_m1(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_fermi_dirac_m1;
    
    
  //int gsl_sf_fermi_dirac_m1_e(double x, gsl_sf_result * result)
  function gsl_sf_fermi_dirac_m1_e
  input Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_m1_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas",Include="#include<gsl/gsl_sf_result.h>");
  end gsl_sf_fermi_dirac_m1_e;
  
  //double gsl_sf_fermi_dirac_0(double x)
  function gsl_sf_fermi_dirac_0
  input Real x;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_0(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_0;
  
  function gsl_sf_fermi_dirac_0_e
  input Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_0_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_0_e;
  
  
  //double gsl_sf_fermi_dirac_1(double x)
  function gsl_sf_fermi_dirac_1
  input Real x;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_1(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_1;
  
  //int gsl_sf_fermi_dirac_1_e(double x, gsl_sf_result * result)
  function gsl_sf_fermi_dirac_1_e
  input  Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_1_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_1_e;
  
  
  
  //double gsl_sf_fermi_dirac_2(double x)
  function gsl_sf_fermi_dirac_2
  input Real x;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_2(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_2;
  
  //int gsl_sf_fermi_dirac_2_e(double x, gsl_sf_result * result)
  function gsl_sf_fermi_dirac_2_e
  input  Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_2_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_2_e;
  
  
  
  
  
  
  //double gsl_sf_fermi_dirac_int(int j, double x)
  function gsl_sf_fermi_dirac_int
  input Integer j;
  input Real x;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_int(j,x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_int;
  
  function gsl_sf_fermi_dirac_int_e
  input Integer j;
  input Real x;
  output gsl.data_types.gsl_sf_result result;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_int_e(j,x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_int_e;
  
  
  
  
  
  
  
  
  
  
  
  
  
  function gsl_sf_fermi_dirac_mhalf
    input  Real x;
    output Real y;
    external "C" y=gsl_sf_fermi_dirac_mhalf(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
    end gsl_sf_fermi_dirac_mhalf;
    
    
  
  function gsl_sf_fermi_dirac_mhalf_e
  input Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_mhalf_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas",Include="#include<gsl/gsl_sf_result.h>");
  end gsl_sf_fermi_dirac_mhalf_e;
  
  
  function gsl_sf_fermi_dirac_half
  input Real x;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_half(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_half;
  
  function gsl_sf_fermi_dirac_half_e
  input Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_half_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_half_e;
  
  
  
  function gsl_sf_fermi_dirac_3half
  input Real x;
  output Real y;
  external "C" y=gsl_sf_fermi_dirac_3half(x)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_3half;
  
  
  function gsl_sf_fermi_dirac_3half_e
  input  Real x;
  output gsl.data_types.gsl_sf_result result;
  output Integer y;
  external "C" y=gsl_sf_fermi_dirac_3half_e(x,result)annotation(Include="#include<gsl/gsl_sf_fermi_dirac.h>",Include="#include<gsl/gsl_sf_result.h>",Library="gsl",Library="gslcblas");
  end gsl_sf_fermi_dirac_3half_e;
  
  
    end chap_7_18_1;
  end Special_functions;

  package Examples
    package Mathematical
      model gsl_log1p
        //This model computes the value of log(1 + x) in a way that is accurate for small x by calling the function gsl_log1p(x)
        parameter Real x = -2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_log1p(x);
      end gsl_log1p;

      model gsl_expm1
        //This model computes the value of exp(x)-1 in a way that is accurate for small x by calling the function gsl_expm1
        parameter Real x = 0.01;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_expm1(x);
      end gsl_expm1;

      model gsl_hypot
        //it calculates the value of sqrt(x^2+y^2)
        parameter Real x = 2;
        parameter Real y = 2.1;
        Real z;
      algorithm
        z := gsl.mathematical.gsl_hypot(x, y);
      end gsl_hypot;

      model gsl_hypot3
        //this example calculates the value of sqrt(x^2+y^2+z^2) by calling the function gsl_hypot3
        parameter Real x = 2.0;
        parameter Real y = 2.1;
        parameter Real z = 2.2;
        Real o;
      algorithm
        o := gsl.mathematical.gsl_hypot3(x, y, z);
      end gsl_hypot3;

      model gsl_acosh
        //this example calls gsl_acosh to calculate the inverse of cosh
        parameter Real x = 2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_acosh(x);
      end gsl_acosh;

      model gsl_asinh
        //this example calls gsl_asinh to calculate the inverse of sinh
        parameter Real x = 2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_asinh(x);
      end gsl_asinh;

      model gsl_atanh
        //this example calls gsl_atanh to calculate the inverse of tanh
        parameter Real x = 0.5;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_atanh(x);
      end gsl_atanh;

      model gsl_ldexp
        //this function computes the value of x*2^e by calling the function gsl_ldexp
        parameter Real x = 2.0;
        //  constant Real y = Modelica.Constants.e;
        // y should be given the value e
        Real z;
      algorithm
        z := gsl.mathematical.gsl_ldexp(x);
      end gsl_ldexp;

      model gsl_frexp
        //This model calls the function gsl_frexp and splits the number x into its normalized fraction f and exponent e, such that x = f ∗ 2^e
        //   and 0.5 <= f < 1. The function returns f and stores the exponent in e.
        parameter Real x = 2;
        Integer e;
        // it stores the exponent in y
        output Real z;
      algorithm
        (e, z) := gsl.mathematical.gsl_frexp(x);
      end gsl_frexp;

      model gsl_pow_int
        //this function computes x^n
        parameter Real x = 0;
        parameter Integer n = 0;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_int(x, n);
      end gsl_pow_int;

      model gsl_pow_2
        //This function calculates square fo the given number
        parameter Real x = 2.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_2(x);
      end gsl_pow_2;

      model gsl_pow_3
        //This function calculates cube of the given number
        parameter Real x = 2.02;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_3(x);
      end gsl_pow_3;

      model gsl_pow_4
        //This function calculates number to the power of 4 of the given number
        parameter Real x = 0.02;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_4(x);
      end gsl_pow_4;

      model gsl_pow_5
        //This model calculates number to the power of 5 of the given number by calling the function gsl_pow_5(x)
        parameter Real x = 0.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_5(x);
      end gsl_pow_5;

      model gsl_pow_6
        //This model calculates number to the power of 6 of the given number by calling the the function gsl_pow_6(x)
        parameter Real x = 2.0;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_6(x);
      end gsl_pow_6;

      model gsl_pow_7
        //This function calculates number to the power of 7 by calling the function gsl_pow_7(x)
        parameter Real x = 2.0;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_7(x);
      end gsl_pow_7;

      model gsl_pow_8
        //This model calculates number to the power of 8 by calling the function gsl_pow_8
        parameter Real x = 2.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_8(x);
      end gsl_pow_8;

      model gsl_pow_9
        //This function calculates number to the power of 9 of the given number
        parameter Real x = 2.2;
        Real y;
      algorithm
        y := gsl.mathematical.gsl_pow_9(x);
      end gsl_pow_9;

      model GSL_SIGN
        //This model calculates the sign of the number by calling the function GSL_SIGN(x)
        parameter Real x = -4;
        Integer y;
      algorithm
        y := gsl.mathematical.GSL_SIGN(x);
      end GSL_SIGN;

      model GSL_IS_ODD
        //This model outputs 1 for odd number and 0 if the number is even by calling the function GSL_IS_ODD(x)
        parameter Integer x = 2;
        Real y(start = 0);
      algorithm
        y := gsl.mathematical.GSL_IS_ODD(x);
      end GSL_IS_ODD;

      model GSL_IS_EVEN
        //This model outputs 1 for odd number and 0 if the number is even by calling the function GSL_IS_EVEN(x)
        parameter Integer x = 2;
        Real y;
      algorithm
        y := gsl.mathematical.GSL_IS_EVEN(x);
      end GSL_IS_EVEN;

      model GSL_MAX
        //This model calls the function GSL_MAX(a,b) which return the maximum of a and b
        parameter Real a = 1.0;
        parameter Real b = 2.0;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX(a, b);
      end GSL_MAX;

      model GSL_MAX_DBL
        //  This model gives the maximum of two double numbers by calling the function GSL_MAX_DBL
        parameter Real a = 2.0;
        parameter Real b = 3.0;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX_DBL(a, b);
      end GSL_MAX_DBL;

      model GSL_MIN_DBL
        //  This model gives the minimum of two double numbers by calling the function GSL_MIN_DBL
        parameter Real a = 2.0;
        parameter Real b = 3.0;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MIN_DBL(a, b);
      end GSL_MIN_DBL;

      model GSL_MAX_INT
        //  This model gives the maximum of two integers by calling the function GSL_MAX_INT
        parameter Real a = 2;
        parameter Real b = 3;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX_INT(a, b);
      end GSL_MAX_INT;

      model GSL_MIN_INT
        //  This model gives the minimum of two integers by calling the function GSL_MIN_INT
        parameter Real a = 2.5;
        parameter Real b = 3;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MIN_INT(a, b);
      end GSL_MIN_INT;

      model GSL_MAX_LDBL
        //  This model gives the maximum of two Real numbers by calling the function GSL_MAX_LDBL
        parameter Real a = 2.00001;
        parameter Real b = 3.00001;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MAX_LDBL(a, b);
      end GSL_MAX_LDBL;

      model GSL_MIN_LDBL
        //  This model gives the minimum of two Real by calling the function GSL_MAX_DBL
        parameter Real a = 2.00001;
        parameter Real b = 3.00001;
        Real c;
      algorithm
        c := gsl.mathematical.GSL_MIN_LDBL(a, b);
      end GSL_MIN_LDBL;

      model gsl_fcmp
        //This model calls the function gsl_fcmp(a,b) and returns zero if they are equal in given range and -1 if a<b and +1 if a>b
        parameter Real a = 4.0;
        parameter Real b = 2.2;
        Real c;
      algorithm
        c := gsl.mathematical.gsl_fcmp(a, b);
      end gsl_fcmp;

      /**/
    end Mathematical;

    package Permutation
      /*this model initialise the permutation with 10 elements to {0,1,2,3,4,5,6,7,8,9}*/
      //this model calls the function gsl_permutation_init(p) to initialize the permutation to {0,1,2,3,4,5,6,7,8,9}
      //this model calls the function gsl_permutation_init(p) to initialize the permutation to {0,1,2,3,4,5,6,7,8,9}
      //this model calls the function gsl_permutation_init(p) to initialize the permutation to {0,1,2,3,4,,

      model gsl_per_init
        /*this model initializes the  permutation p to{0,1,2,3,4,5,6,7,8,9}*/
        parameter Integer N = 10;
        gsl.data_types.gsl_permutation p = gsl.data_types.gsl_permutation(N);
        Integer y[10];
      algorithm
        gsl.Permutation.gsl_permutation_init(p);
        for i in 1:10 loop
          y[i] := gsl.Permutation.gsl_permutation_get(p, i - 1);
        end for;
      end gsl_per_init;
    end Permutation;

    package COMPLEX
      model gsl_complex_rect
        /*this model calls the function gsl_complex_rect*/
        parameter Real a = 10;
        parameter Real b = 4;
        Real z[2];
      algorithm
        z := gsl.COMPLEX.gsl_complex_rect(a, b);
      end gsl_complex_rect;
    end COMPLEX;

    package special_functions
      package chap_7_5_1
        model gsl_sf_bessel_J0
          //this model calls the function gsl_sf_bessel_J0 by taking value of x as input and returning y as output
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_J0(x);
        end gsl_sf_bessel_J0;

        model gsl_sf_bessel_J0_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_J0_e(x);
        end gsl_sf_bessel_J0_e;

        model gsl_sf_bessel_J1
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_J1(x);
        end gsl_sf_bessel_J1;

        model gsl_sf_bessel_J1_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_J1_e(x);
        end gsl_sf_bessel_J1_e;

        model gsl_sf_bessel_Jn
          parameter Real x = 10;
          parameter Integer n = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_Jn(x, n);
        end gsl_sf_bessel_Jn;

        model gsl_sf_bessel_Jn_e
          parameter Real x = 10;
          parameter Integer n = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_Jn_e(x, n);
        end gsl_sf_bessel_Jn_e;

        model gsl_sf_bessel_Jn_array
          parameter Integer nmin = 2;
          parameter Integer nmax = 10;
          parameter Real x = 4;
          Real result_array[nmax - nmin];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_1.gsl_sf_bessel_Jn_array(nmin, nmax, x);
        end gsl_sf_bessel_Jn_array;
      end chap_7_5_1;

      package chap_7_5_2
        model gsl_sf_bessel_Y0
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Y0(x);
        end gsl_sf_bessel_Y0;

        model gsl_sf_bessel_Y0_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Y0_e(x);
        end gsl_sf_bessel_Y0_e;

        model gsl_sf_bessel_Y1
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Y1(x);
        end gsl_sf_bessel_Y1;

        model gsl_sf_bessel_Y1_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Y1_e(x);
        end gsl_sf_bessel_Y1_e;

        model gsl_sf_bessel_Yn
          parameter Real x = 10;
          parameter Integer n = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Yn(x, n);
        end gsl_sf_bessel_Yn;

        model gsl_sf_bessel_Yn_e
          parameter Real x = 10;
          parameter Integer n = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Yn_e(x, n);
        end gsl_sf_bessel_Yn_e;

        model gsl_sf_bessel_Yn_array
          parameter Integer nmin = 2;
          parameter Integer nmax = 10;
          parameter Real x = 4;
          Real result_array[nmax - nmin];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_2.gsl_sf_bessel_Yn_array(nmin, nmax, x);
        end gsl_sf_bessel_Yn_array;
      end chap_7_5_2;

      package chap_7_5_3
        model gsl_sf_bessel_I0
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I0(x);
        end gsl_sf_bessel_I0;

        model gsl_sf_bessel_I0_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I0_e(x);
        end gsl_sf_bessel_I0_e;

        model gsl_sf_bessel_I1
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I1(x);
        end gsl_sf_bessel_I1;

        model gsl_sf_bessel_I1_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I1_e(x);
        end gsl_sf_bessel_I1_e;

        model gsl_sf_bessel_In
          parameter Real x = 10;
          parameter Integer n = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_In(x, n);
        end gsl_sf_bessel_In;

        model gsl_sf_bessel_In_e
          parameter Real x = 10;
          parameter Integer n = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_In_e(x, n);
        end gsl_sf_bessel_In_e;

        model gsl_sf_bessel_In_array
          parameter Integer nmin = 2;
          parameter Integer nmax = 10;
          parameter Real x = 4;
          Real result_array[nmax - nmin];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_In_array(nmin, nmax, x);
        end gsl_sf_bessel_In_array;

        model gsl_sf_bessel_I0_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I0_scaled(x);
        end gsl_sf_bessel_I0_scaled;

        model gsl_sf_bessel_I0_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I0_scaled_e(x);
        end gsl_sf_bessel_I0_scaled_e;

        model gsl_sf_bessel_I1_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I1_scaled(x);
        end gsl_sf_bessel_I1_scaled;

        model gsl_sf_bessel_I1_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_I1_scaled_e(x);
        end gsl_sf_bessel_I1_scaled_e;

        model gsl_sf_bessel_In_scaled
          parameter Real x = 10;
          parameter Integer n = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_In_scaled(x, n);
        end gsl_sf_bessel_In_scaled;

        model gsl_sf_bessel_In_scaled_e
          parameter Real x = 10;
          parameter Integer n = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_In_scaled_e(x, n);
        end gsl_sf_bessel_In_scaled_e;

        model gsl_sf_bessel_In_scaled_array
          parameter Integer nmin = 2;
          parameter Integer nmax = 10;
          parameter Real x = 4;
          Real result_array[nmax - nmin];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_3.gsl_sf_bessel_In_scaled_array(nmin, nmax, x);
        end gsl_sf_bessel_In_scaled_array;
      end chap_7_5_3;

      package chap_7_5_4
        model gsl_sf_bessel_K0
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K0(x);
        end gsl_sf_bessel_K0;

        model gsl_sf_bessel_K0_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K0_e(x);
        end gsl_sf_bessel_K0_e;

        model gsl_sf_bessel_K1
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K1(x);
        end gsl_sf_bessel_K1;

        model gsl_sf_bessel_K1_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K1_e(x);
        end gsl_sf_bessel_K1_e;

        model gsl_sf_bessel_Kn
          parameter Real x = 10;
          parameter Integer n = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_Kn(x, n);
        end gsl_sf_bessel_Kn;

        model gsl_sf_bessel_Kn_e
          parameter Real x = 10;
          parameter Integer n = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_Kn_e(x, n);
        end gsl_sf_bessel_Kn_e;

        model gsl_sf_bessel_Kn_array
          parameter Integer nmin = 2;
          parameter Integer nmax = 10;
          parameter Real x = 4;
          Real result_array[nmax - nmin];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_Kn_array(nmin, nmax, x);
        end gsl_sf_bessel_Kn_array;

        model gsl_sf_bessel_K0_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K0_scaled(x);
        end gsl_sf_bessel_K0_scaled;

        model gsl_sf_bessel_K0_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K0_scaled_e(x);
        end gsl_sf_bessel_K0_scaled_e;

        model gsl_sf_bessel_K1_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K1_scaled(x);
        end gsl_sf_bessel_K1_scaled;

        model gsl_sf_bessel_K1_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_K1_scaled_e(x);
        end gsl_sf_bessel_K1_scaled_e;

        model gsl_sf_bessel_Kn_scaled
          parameter Real x = 10;
          parameter Integer n = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_Kn_scaled(x, n);
        end gsl_sf_bessel_Kn_scaled;

        model gsl_sf_bessel_Kn_scaled_e
          parameter Real x = 10;
          parameter Integer n = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_Kn_scaled_e(x, n);
        end gsl_sf_bessel_Kn_scaled_e;

        model gsl_sf_bessel_Kn_scaled_array
          parameter Integer nmin = 2;
          parameter Integer nmax = 10;
          parameter Real x = 4;
          Real result_array[nmax - nmin];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_4.gsl_sf_bessel_Kn_scaled_array(nmin, nmax, x);
        end gsl_sf_bessel_Kn_scaled_array;
      end chap_7_5_4;

      package chap_7_5_5
        model gsl_sf_bessel_j0
          //This model calls the function gsl_sf_bessel_j0 to calculate the value of spherical bessel function j0(x)=sin(x)/x
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j0(x);
        end gsl_sf_bessel_j0;

        model gsl_sf_bessel_j0_e
          //This model calls the function gsl_sf_bessel_j0 to calculate the value of spherical bessel function j0(x)=sin(x)/x
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j0_e(x);
        end gsl_sf_bessel_j0_e;

        model gsl_sf_bessel_j1
          //This model calls the function gsl_sf_bessel_j1 to calculate the value of spherical bessel function j1(x)=(sin(x)/x - cos(x))/x
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j1(x);
        end gsl_sf_bessel_j1;

        model gsl_sf_bessel_j1_e
          //This model calls the function gsl_sf_bessel_j1 to calculate the value of spherical bessel function j1(x)=(sin(x)/x -cos(x))/x
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j1_e(x);
        end gsl_sf_bessel_j1_e;

        model gsl_sf_bessel_j2
          //These routines compute the regular spherical Bessel function of second order, j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j2(x);
        end gsl_sf_bessel_j2;

        model gsl_sf_bessel_j2_e
          //These routines compute the regular spherical Bessel function of second order, j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j2_e(x);
        end gsl_sf_bessel_j2_e;

        model gsl_sf_bessel_jl
          //These routines compute the regular spherical Bessel function of order l, j1(x), for l ≥ 0 and x ≥ 0.
          parameter Integer l = 10;
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl(l, x);
        end gsl_sf_bessel_jl;

        model gsl_sf_bessel_jl_e
          parameter Integer l = 10;
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_e(l, x);
        end gsl_sf_bessel_jl_e;

        model gsl_sf_bessel_jl_array
          // parameter Integer nmin;
          parameter Integer lmax = 10;
          parameter Real x = 10;
          Real result_array[lmax];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_array(lmax, x);
        end gsl_sf_bessel_jl_array;

        model gsl_sf_bessel_jl_steed_array
          // parameter Integer nmin;
          parameter Integer lmax = 10;
          parameter Real x = 10;
          Real result_array[lmax];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_steed_array(lmax, x);
        end gsl_sf_bessel_jl_steed_array;
      end chap_7_5_5;

      package chap_7_5_6
        model gsl_sf_bessel_j0
          //This model calls the function gsl_sf_bessel_j0 to calculate the value of irregular spherical irregular spherical bessel function j0(x)=sin(x)/x
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j0(x);
        end gsl_sf_bessel_j0;

        model gsl_sf_bessel_j0_e
          //This model calls the function gsl_sf_bessel_j0 to calculate the value of irregular spherical bessel function j0(x)=sin(x)/x
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j0_e(x);
        end gsl_sf_bessel_j0_e;

        model gsl_sf_bessel_j1
          //This model calls the function gsl_sf_bessel_j1 to calculate the value of irregular spherical bessel function j1(x)=(sin(x)/x - cos(x))/x
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j1(x);
        end gsl_sf_bessel_j1;

        model gsl_sf_bessel_j1_e
          //This model calls the function gsl_sf_bessel_j1 to calculate the value of irregular spherical bessel function j1(x)=(sin(x)/x -cos(x))/x
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j1_e(x);
        end gsl_sf_bessel_j1_e;

        model gsl_sf_bessel_j2
          //These routines compute the regular irregular spherical Bessel function of second order, j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j2(x);
        end gsl_sf_bessel_j2;

        model gsl_sf_bessel_j2_e
          //These routines compute the irregular spherical Bessel function of second order, j 2 (x) = ((3/x 2 − 1) sin(x) −3 cos(x)/x)/x
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_j2_e(x);
        end gsl_sf_bessel_j2_e;

        model gsl_sf_bessel_jl
          //These routines compute the  irregular spherical Bessel function of order l, j1(x), for l ≥ 0 and x ≥ 0.
          parameter Integer l = 10;
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl(l, x);
        end gsl_sf_bessel_jl;

        model gsl_sf_bessel_jl_e
          parameter Integer l = 10;
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_e(l, x);
        end gsl_sf_bessel_jl_e;

        model gsl_sf_bessel_jl_array
          // parameter Integer nmin;
          parameter Integer lmax = 10;
          parameter Real x = 10;
          Real result_array[lmax];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_array(lmax, x);
        end gsl_sf_bessel_jl_array;
      end chap_7_5_6;

      package chap_7_5_7
        model gsl_sf_bessel_i0_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_i0_scaled(x);
        end gsl_sf_bessel_i0_scaled;

        model gsl_sf_bessel_i0_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_i0_scaled_e(x);
        end gsl_sf_bessel_i0_scaled_e;

        model gsl_sf_bessel_i1_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_i1_scaled(x);
        end gsl_sf_bessel_i1_scaled;

        model gsl_sf_bessel_i1_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_i1_scaled_e(x);
        end gsl_sf_bessel_i1_scaled_e;

        model gsl_sf_bessel_i2_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_i2_scaled(x);
        end gsl_sf_bessel_i2_scaled;

        model gsl_sf_bessel_i2_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_i2_scaled_e(x);
        end gsl_sf_bessel_i2_scaled_e;

        model gsl_sf_bessel_il_scaled
          parameter Real x = 10;
          parameter Integer l = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_il_scaled(x, l);
        end gsl_sf_bessel_il_scaled;

        model gsl_sf_bessel_il_scaled_e
          parameter Real x = 10;
          parameter Integer l = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_il_scaled_e(x, l);
        end gsl_sf_bessel_il_scaled_e;

        model gsl_sf_bessel_il_scaled_array
          parameter Integer lmax = 10;
          parameter Real x = 4;
          Real result_array[lmax];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_7.gsl_sf_bessel_il_scaled_array(lmax, x);
        end gsl_sf_bessel_il_scaled_array;
      end chap_7_5_7;

      package chap_7_5_8
        model gsl_sf_bessel_k0_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_k0_scaled(x);
        end gsl_sf_bessel_k0_scaled;

        model gsl_sf_bessel_k0_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_k0_scaled_e(x);
        end gsl_sf_bessel_k0_scaled_e;

        model gsl_sf_bessel_k1_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_k1_scaled(x);
        end gsl_sf_bessel_k1_scaled;

        model gsl_sf_bessel_k1_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_k1_scaled_e(x);
        end gsl_sf_bessel_k1_scaled_e;

        model gsl_sf_bessel_k2_scaled
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_k2_scaled(x);
        end gsl_sf_bessel_k2_scaled;

        model gsl_sf_bessel_k2_scaled_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_k2_scaled_e(x);
        end gsl_sf_bessel_k2_scaled_e;

        model gsl_sf_bessel_kl_scaled
          parameter Real x = 10;
          parameter Integer l = 1;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_kl_scaled(x, l);
        end gsl_sf_bessel_kl_scaled;

        model gsl_sf_bessel_kl_scaled_e
          parameter Real x = 10;
          parameter Integer l = 1;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_kl_scaled_e(x, l);
        end gsl_sf_bessel_kl_scaled_e;

        model gsl_sf_bessel_kl_scaled_array
          parameter Integer lmax = 10;
          parameter Real x = 4;
          Real result_array[lmax];
          Integer y;
        algorithm
          (result_array, y) := gsl.Special_functions.chap_7_5_8.gsl_sf_bessel_kl_scaled_array(lmax, x);
        end gsl_sf_bessel_kl_scaled_array;
      end chap_7_5_8;

      package chap_7_5_9
        model gsl_sf_bessel_Jnu
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_9.gsl_sf_bessel_Jnu(nu, x);
        end gsl_sf_bessel_Jnu;

        model gsl_sf_bessel_Jnu_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_9.gsl_sf_bessel_Jnu_e(x, nu);
        end gsl_sf_bessel_Jnu_e;
      end chap_7_5_9;

      package chap_7_5_10
        model gsl_sf_bessel_Ynu
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_10.gsl_sf_bessel_Ynu(nu, x);
        end gsl_sf_bessel_Ynu;

        model gsl_sf_bessel_Ynu_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_10.gsl_sf_bessel_Ynu_e(x, nu);
        end gsl_sf_bessel_Ynu_e;
      end chap_7_5_10;

      package chap_7_5_11
        model gsl_sf_bessel_Inu
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_11.gsl_sf_bessel_Inu(nu, x);
        end gsl_sf_bessel_Inu;

        model gsl_sf_bessel_Inu_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_11.gsl_sf_bessel_Inu_e(x, nu);
        end gsl_sf_bessel_Inu_e;

        model gsl_sf_bessel_Inu_scaled
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_11.gsl_sf_bessel_Inu_scaled(x, nu);
        end gsl_sf_bessel_Inu_scaled;

        model gsl_sf_bessel_Inu_scaled_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_11.gsl_sf_bessel_Inu_scaled_e(x, nu);
        end gsl_sf_bessel_Inu_scaled_e;
      end chap_7_5_11;

      package chap_7_5_12
        model gsl_sf_bessel_Knu
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_12.gsl_sf_bessel_Knu(nu, x);
        end gsl_sf_bessel_Knu;

        model gsl_sf_bessel_Knu_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_12.gsl_sf_bessel_Knu_e(x, nu);
        end gsl_sf_bessel_Knu_e;

        model gsl_sf_bessel_lnKnu
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_12.gsl_sf_bessel_lnKnu(nu, x);
        end gsl_sf_bessel_lnKnu;

        model gsl_sf_bessel_lnKnu_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_12.gsl_sf_bessel_lnKnu_e(x, nu);
        end gsl_sf_bessel_lnKnu_e;

        model gsl_sf_bessel_Knu_scaled
          parameter Real x = 10;
          parameter Real nu = 1.5;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_5_12.gsl_sf_bessel_Knu_scaled(x, nu);
        end gsl_sf_bessel_Knu_scaled;

        model gsl_sf_bessel_Knu_scaled_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_12.gsl_sf_bessel_Knu_scaled_e(x, nu);
        end gsl_sf_bessel_Knu_scaled_e;
      end chap_7_5_12;

      package chap_7_5_13
        model gsl_sf_bessel_zero_J0
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_13.gsl_sf_bessel_zero_J0(x);
        end gsl_sf_bessel_zero_J0;

        model gsl_sf_bessel_zero_J0_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_13.gsl_sf_bessel_zero_J0_e(x);
        end gsl_sf_bessel_zero_J0_e;

        model gsl_sf_bessel_zero_J1
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_13.gsl_sf_bessel_zero_J1(x);
        end gsl_sf_bessel_zero_J1;

        model gsl_sf_bessel_zero_J1_e
          parameter Real x = 10;
          output gsl.data_types.gsl_sf_result result;
          output Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_13.gsl_sf_bessel_zero_J1_e(x);
        end gsl_sf_bessel_zero_J1_e;

        model gsl_sf_bessel_zero_Jnu
          parameter Real x = 10;
          parameter Real nu = 1.5;
          output Real y;
        algorithm
          y := gsl.Special_functions.chap_7_5_13.gsl_sf_bessel_zero_Jnu(nu, x);
        end gsl_sf_bessel_zero_Jnu;

        model gsl_sf_bessel_zero_Jnu_e
          parameter Real x = 10;
          parameter Real nu = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_5_13.gsl_sf_bessel_zero_Jnu_e(nu, x);
        end gsl_sf_bessel_zero_Jnu_e;
      end chap_7_5_13;

      package chap_7_6
        model gsl_sf_clausen
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_6.gsl_sf_clausen(x);
        end gsl_sf_clausen;

        model gsl_sf_clausen_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_6.gsl_sf_clausen_e(x);
        end gsl_sf_clausen_e;
      end chap_7_6;

      package chap_7_7_1
        model gsl_sf_hydrogenicR_1
          parameter Real Z = 10;
          parameter Real r = 10;
          Real R;
        algorithm
          R := gsl.Special_functions.chap_7_7_1.gsl_sf_hydrogenicR_1(Z, r);
        end gsl_sf_hydrogenicR_1;

        model gsl_sf_hydrogenicR_1_e
          parameter Real Z = 10;
          parameter Real r = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_7_1.gsl_sf_hydrogenicR_1_e(Z, r);
        end gsl_sf_hydrogenicR_1_e;

        model gsl_sf_hydrogenicR
          parameter Integer n = 1;
          parameter Integer l = 0;
          parameter Real Z = 10;
          parameter Real r = 0.1;
          Real R;
        algorithm
          R := gsl.Special_functions.chap_7_7_1.gsl_sf_hydrogenicR(n, l, Z, r);
        end gsl_sf_hydrogenicR;

        model gsl_sf_hydrogenicR_e
          parameter Integer n = 1;
          parameter Integer l = 0;
          parameter Real Z = 10;
          parameter Real r = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_7_1.gsl_sf_hydrogenicR_e(n, l, Z, r);
        end gsl_sf_hydrogenicR_e;
      end chap_7_7_1;

      package chap_7_7_2
        model gsl_sf_coulomb_wave_FG_e
          parameter Real eta = 1;
          // eta=Z/k,where Z is atomic number
          parameter Real x = 0.1;
          parameter Real L_F = 1;
          parameter Integer k = 1;
          //L_F-k>-1/2
          gsl.data_types.gsl_sf_result F;
          //coulomb wave function
          gsl.data_types.gsl_sf_result Fp;
          //derivative of wave function
          gsl.data_types.gsl_sf_result G;
          //coulomb wave function
          gsl.data_types.gsl_sf_result Gp;
          //derivative of wave function
          Real exp_F;
          //out of bound error exponenet stored here
          Real exp_G;
          //out of bound error exponent stored here
          Integer y;
        algorithm
          (F, Fp, G, Gp, exp_F, exp_G, y) := gsl.Special_functions.chap_7_7_2.gsl_sf_coulomb_wave_FG_e(eta, x, L_F, k);
        end gsl_sf_coulomb_wave_FG_e;

        model gsl_sf_coulomb_wave_F_array
          parameter Real L_min = 1;
          parameter Integer kmax = 2;
          parameter Real eta = 1;
          parameter Real x = 1;
          Real fc_array[kmax];
          Real F_exponent;
          Integer y;
        algorithm
          (fc_array, F_exponent, y) := gsl.Special_functions.chap_7_7_2.gsl_sf_coulomb_wave_F_array(L_min, kmax, eta, x);
        end gsl_sf_coulomb_wave_F_array;

        model gsl_sf_coulomb_wave_FG_array
          parameter Real L_min = 1;
          parameter Integer kmax = 2;
          parameter Real eta = 1;
          parameter Real x = 1.5;
          Real fc_array[kmax];
          Real gc_array[kmax];
          Real F_exponent;
          Real G_exponent;
          Integer y;
        algorithm
          (fc_array, gc_array, F_exponent, G_exponent, y) := gsl.Special_functions.chap_7_7_2.gsl_sf_coulomb_wave_FG_array(L_min, kmax, eta, x);
        end gsl_sf_coulomb_wave_FG_array;

        model gsl_sf_coulomb_wave_FGp_array
          parameter Real L_min = 1;
          parameter Integer kmax = 2;
          parameter Real eta = 1;
          parameter Real x = 1.5;
          Real fc_array[kmax];
          Real fcp_array[kmax];
          Real gc_array[kmax];
          Real gcp_array[kmax];
          Real F_exponent;
          Real G_exponent;
          Integer y;
        algorithm
          (fc_array, fcp_array, gc_array, gcp_array, F_exponent, G_exponent, y) := gsl.Special_functions.chap_7_7_2.gsl_sf_coulomb_wave_FGp_array(L_min, kmax, eta, x);
        end gsl_sf_coulomb_wave_FGp_array;

        model gsl_sf_coulomb_wave_sphF_array
          parameter Real L_min = 1;
          parameter Integer kmax = 2;
          parameter Real eta = 1;
          parameter Real x = 1.5;
          Real fc_array[kmax];
          Real F_exponent;
          Integer y;
        algorithm
          (fc_array, F_exponent, y) := gsl.Special_functions.chap_7_7_2.gsl_sf_coulomb_wave_sphF_array(L_min, kmax, eta, x);
        end gsl_sf_coulomb_wave_sphF_array;
      end chap_7_7_2;

      package chap_7_7_3
        model gsl_sf_coulomb_CL_e
          parameter Real L = 1;
          parameter Real eta = 1.5;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_7_3.gsl_sf_coulomb_CL_e(L, eta);
        end gsl_sf_coulomb_CL_e;

        model gsl_sf_coulomb_CL_array
          parameter Real Lmin = 1;
          parameter Integer kmax = 2;
          parameter Real eta = 1.5;
          Real cl[kmax];
          Integer y;
        algorithm
          (cl, y) := gsl.Special_functions.chap_7_7_3.gsl_sf_coulomb_CL_array(Lmin, kmax, eta);
        end gsl_sf_coulomb_CL_array;
      end chap_7_7_3;

      package chap_7_8_1
        model gsl_sf_coupling_3j
          parameter Integer two_ja = 0;
          parameter Integer two_jb = 0;
          parameter Integer two_jc = 0;
          parameter Integer two_ma = 0;
          parameter Integer two_mb = 0;
          parameter Integer two_mc = 0;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_8_1.gsl_sf_coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc);
        end gsl_sf_coupling_3j;

        model gsl_sf_coupling_3j_e
          parameter Integer two_ja = 0;
          parameter Integer two_jb = 0;
          parameter Integer two_jc = 0;
          parameter Integer two_ma = 0;
          parameter Integer two_mb = 0;
          parameter Integer two_mc = 0;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_8_1.gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc);
        end gsl_sf_coupling_3j_e;
      end chap_7_8_1;

      package chap_7_8_2
        model gsl_sf_coupling_6j
          parameter Integer two_ja = 0;
          parameter Integer two_jb = 0;
          parameter Integer two_jc = 0;
          parameter Integer two_ma = 0;
          parameter Integer two_mb = 0;
          parameter Integer two_mc = 0;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_8_2.gsl_sf_coupling_6j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc);
        end gsl_sf_coupling_6j;

        model gsl_sf_coupling_6j_e
          parameter Integer two_ja = 0;
          parameter Integer two_jb = 0;
          parameter Integer two_jc = 0;
          parameter Integer two_ma = 0;
          parameter Integer two_mb = 0;
          parameter Integer two_mc = 0;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_8_2.gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc);
        end gsl_sf_coupling_6j_e;
      end chap_7_8_2;

      package chap_7_8_3
        model gsl_sf_coupling_9j
          parameter Integer two_ja = 0;
          parameter Integer two_jb = 0;
          parameter Integer two_jc = 0;
          parameter Integer two_jd = 0;
          parameter Integer two_je = 0;
          parameter Integer two_jf = 0;
          parameter Integer two_jg = 0;
          parameter Integer two_jh = 0;
          parameter Integer two_ji = 0;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_8_3.gsl_sf_coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji);
        end gsl_sf_coupling_9j;

        model gsl_sf_coupling_9j_e
          parameter Integer two_ja = 0;
          parameter Integer two_jb = 0;
          parameter Integer two_jc = 0;
          parameter Integer two_jd = 0;
          parameter Integer two_je = 0;
          parameter Integer two_jf = 0;
          parameter Integer two_jg = 0;
          parameter Integer two_jh = 0;
          parameter Integer two_ji = 0;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_8_3.gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji);
        end gsl_sf_coupling_9j_e;
      end chap_7_8_3;

      package chap_7_9
        model gsl_sf_dawson
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_9.gsl_sf_dawson(x);
        end gsl_sf_dawson;

        model gsl_sf_dawson_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_9.gsl_sf_dawson_e(x);
        end gsl_sf_dawson_e;
      end chap_7_9;

      package chap_7_10
        model gsl_sf_debye_1
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_10.gsl_sf_debye_1(x);
        end gsl_sf_debye_1;

        model gsl_sf_debye_1_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_10.gsl_sf_debye_1_e(x);
        end gsl_sf_debye_1_e;

        model gsl_sf_debye_2
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_10.gsl_sf_debye_2(x);
        end gsl_sf_debye_2;

        model gsl_sf_debye_2_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_10.gsl_sf_debye_2_e(x);
        end gsl_sf_debye_2_e;

        model gsl_sf_debye_3
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_10.gsl_sf_debye_3(x);
        end gsl_sf_debye_3;

        model gsl_sf_debye_3_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_10.gsl_sf_debye_3_e(x);
        end gsl_sf_debye_3_e;

        model gsl_sf_debye_4
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_10.gsl_sf_debye_4(x);
        end gsl_sf_debye_4;

        model gsl_sf_debye_4_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_10.gsl_sf_debye_4_e(x);
        end gsl_sf_debye_4_e;

        model gsl_sf_debye_5
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_10.gsl_sf_debye_5(x);
        end gsl_sf_debye_5;

        model gsl_sf_debye_5_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_10.gsl_sf_debye_5_e(x);
        end gsl_sf_debye_5_e;

        model gsl_sf_debye_6
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_10.gsl_sf_debye_6(x);
        end gsl_sf_debye_6;

        model gsl_sf_debye_6_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_10.gsl_sf_debye_6_e(x);
        end gsl_sf_debye_6_e;
      end chap_7_10;

      package chap_7_11_1
        model gsl_sf_dilog
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_11_1.gsl_sf_dilog(x);
        end gsl_sf_dilog;

        model gsl_sf_dilog_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_11_1.gsl_sf_dilog_e(x);
        end gsl_sf_dilog_e;
      end chap_7_11_1;

      package chap_7_11_2
        model gsl_sf_complex_dilog_e
          parameter Real r = 10;
          parameter Real theta = 1;
          gsl.data_types.gsl_sf_result result_re;
          gsl.data_types.gsl_sf_result result_im;
          Integer y;
        algorithm
          (result_re, result_im, y) := gsl.Special_functions.chap_7_11_2.gsl_sf_complex_dilog_e(r, theta);
        end gsl_sf_complex_dilog_e;
      end chap_7_11_2;

      package chap_7_12
        model gsl_sf_multiply
          parameter Real x = 2.5;
          parameter Real y = 2.5;
          Real z;
        algorithm
          z := gsl.Special_functions.chap_7_12.gsl_sf_multiply(x, y);
        end gsl_sf_multiply;

        model gsl_sf_multiply_e
          parameter Real x = 2.5;
          parameter Real y = 2.5;
          gsl.data_types.gsl_sf_result result;
          Integer z;
        algorithm
          (result, z) := gsl.Special_functions.chap_7_12.gsl_sf_multiply_e(x, y);
        end gsl_sf_multiply_e;

        model gsl_sf_multiply_err_e
          parameter Real x = 2;
          parameter Real dx = 0.5;
          parameter Real y = 2;
          parameter Real dy = 0.2;
          gsl.data_types.gsl_sf_result result;
          Integer z;
        algorithm
          (result, z) := gsl.Special_functions.chap_7_12.gsl_sf_multiply_err_e(x, dx, y, dy);
        end gsl_sf_multiply_err_e;
      end chap_7_12;

      package chap_7_15_1
        model gsl_sf_erf
          parameter Real x = 2;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_15_1.gsl_sf_erf(x);
        end gsl_sf_erf;

        model gsl_sf_erf_e
          parameter Real x = 2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_15_1.gsl_sf_erf_e(x);
        end gsl_sf_erf_e;
      end chap_7_15_1;

      package chap_7_15_2
        model gsl_sf_erfc
          parameter Real x = 2;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_15_2.gsl_sf_erfc(x);
        end gsl_sf_erfc;

        model gsl_sf_erfc_e
          parameter Real x = 2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_15_2.gsl_sf_erfc_e(x);
        end gsl_sf_erfc_e;
      end chap_7_15_2;

      package chap_7_15_3
        model gsl_sf_log_erfc
          parameter Real x = 2;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_15_3.gsl_sf_log_erfc(x);
        end gsl_sf_log_erfc;

        model gsl_sf_log_erfc_e
          parameter Real x = 2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_15_3.gsl_sf_log_erfc_e(x);
        end gsl_sf_log_erfc_e;
      end chap_7_15_3;

      package chap_7_15_4
        model gsl_sf_erf_Z
          parameter Real x = 2;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_15_4.gsl_sf_erf_Z(x);
        end gsl_sf_erf_Z;

        model gsl_sf_erf_Z_e
          parameter Real x = 2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_15_4.gsl_sf_erf_Z_e(x);
        end gsl_sf_erf_Z_e;

        model gsl_sf_erf_Q
          parameter Real x = 2;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_15_4.gsl_sf_erf_Q(x);
        end gsl_sf_erf_Q;

        model gsl_sf_erf_Q_e
          parameter Real x = 2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_15_4.gsl_sf_erf_Q_e(x);
        end gsl_sf_erf_Q_e;

        model gsl_sf_hazard
          parameter Real x = 2;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_15_4.gsl_sf_hazard(x);
        end gsl_sf_hazard;

        model gsl_sf_hazard_e
          parameter Real x = 2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_15_4.gsl_sf_hazard_e(x);
        end gsl_sf_hazard_e;
      end chap_7_15_4;

      package chap_7_16_1
        model gsl_sf_exp
          //this model calls the function gsl_sf_exp by taking value of x as input and returning y as output
          parameter Real x = 10;
          Real y(start = 1);
        algorithm
          y := gsl.Special_functions.chap_7_16_1.gsl_sf_exp(x);
        end gsl_sf_exp;

        model gsl_sf_exp_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_1.gsl_sf_exp_e(x);
        end gsl_sf_exp_e;

        model gsl_sf_exp_e10_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result_e10 result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_1.gsl_sf_exp_e10_e(x);
        end gsl_sf_exp_e10_e;

        model gsl_sf_exp_mult
          //this model calls the function gsl_sf_exp by taking value of x as input and returning y as output
          parameter Real x = 10;
          parameter Real y = 10;
          Real z;
        algorithm
          z := gsl.Special_functions.chap_7_16_1.gsl_sf_exp_mult(x, y);
        end gsl_sf_exp_mult;

        model gsl_sf_exp_mult_e
          parameter Real x = 10;
          parameter Real y = 10;
          gsl.data_types.gsl_sf_result result;
          Integer z;
        algorithm
          (result, z) := gsl.Special_functions.chap_7_16_1.gsl_sf_exp_mult_e(x, y);
        end gsl_sf_exp_mult_e;

        model gsl_sf_exp_mult_e10_e
          parameter Real x = 10;
          parameter Real y = 10;
          gsl.data_types.gsl_sf_result_e10 result;
          Integer z;
        algorithm
          (result, z) := gsl.Special_functions.chap_7_16_1.gsl_sf_exp_mult_e10_e(x, y);
        end gsl_sf_exp_mult_e10_e;
      end chap_7_16_1;

      package chap_7_16_2
        model gsl_sf_expm1
          parameter Real x = 0.00034;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_16_2.gsl_sf_expm1(x);
        end gsl_sf_expm1;

        model gsl_sf_expm1_e
          parameter Real x = 0.000002;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_2.gsl_sf_expm1_e(x);
        end gsl_sf_expm1_e;

        model gsl_sf_exprel
          parameter Real x = 0.000002;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_16_2.gsl_sf_exprel(x);
        end gsl_sf_exprel;

        model gsl_sf_exprel_e
          parameter Real x = 0.002;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_2.gsl_sf_exprel_e(x);
        end gsl_sf_exprel_e;

        model gsl_sf_exprel_2
          parameter Real x = 0.002;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_16_2.gsl_sf_exprel_2(x);
        end gsl_sf_exprel_2;

        model gsl_sf_exprel_2_e
          parameter Real x = 0.002;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_2.gsl_sf_exprel_2_e(x);
        end gsl_sf_exprel_2_e;

        model gsl_sf_exprel_n
          parameter Integer n = 2;
          parameter Real x = 0.002;
          Real z;
        algorithm
          z := gsl.Special_functions.chap_7_16_2.gsl_sf_exprel_n(n, x);
        end gsl_sf_exprel_n;

        model gsl_sf_exprel_n_e
          parameter Integer n = 2;
          parameter Real x = 0.2;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_2.gsl_sf_exprel_n_e(n, x);
        end gsl_sf_exprel_n_e;
      end chap_7_16_2;

      package chap_7_16_3
        model gsl_sf_exp_err_e
          //This model calls the function gsl_sf_exp_err_e which exponentiates x with an associated absolute error dx
          parameter Real x = 0.15;
          parameter Real dx = 0.00015;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_3.gsl_sf_exp_err_e(x, dx);
        end gsl_sf_exp_err_e;

        model gsl_sf_exp_err_e10_e
          //this model calls the function gsl_sf_exp_err_e10_e which exponentiates x with an associated absolute error dx
          parameter Real x = 0.15;
          parameter Real dx = 0.000015;
          gsl.data_types.gsl_sf_result_e10 result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_16_3.gsl_sf_exp_err_e10_e(x, dx);
        end gsl_sf_exp_err_e10_e;

        model gsl_sf_exp_mult_err_e
          parameter Real x = 0.15;
          parameter Real dx = 0.0000000015;
          parameter Real y = 1;
          parameter Real dy = 0.00000001;
          gsl.data_types.gsl_sf_result result;
          Integer z;
        algorithm
          (result, z) := gsl.Special_functions.chap_7_16_3.gsl_sf_exp_mult_err_e(x, dx, y, dy);
        end gsl_sf_exp_mult_err_e;

        model gsl_sf_exp_mult_err_e10_e
          parameter Real x = 0.15;
          parameter Real dx = 0.0000000015;
          parameter Real y = 1;
          parameter Real dy = 0.000000001;
          gsl.data_types.gsl_sf_result_e10 result;
          Integer z;
        algorithm
          (result, z) := gsl.Special_functions.chap_7_16_3.gsl_sf_exp_mult_err_e10_e(x, dx, y, dy);
        end gsl_sf_exp_mult_err_e10_e;
      end chap_7_16_3;

      package chap_7_17_1
        model gsl_sf_expint_E1
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_17_1.gsl_sf_expint_E1(x);
        end gsl_sf_expint_E1;

        model gsl_sf_expint_E1_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_17_1.gsl_sf_expint_E1_e(x);
        end gsl_sf_expint_E1_e;

        model gsl_sf_expint_E2
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_17_1.gsl_sf_expint_E2(x);
        end gsl_sf_expint_E2;

        model gsl_sf_expint_E2_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_17_1.gsl_sf_expint_E2_e(x);
        end gsl_sf_expint_E2_e;

        model gsl_sf_expint_En
          parameter Integer n = 2;
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_17_1.gsl_sf_expint_En(n, x);
        end gsl_sf_expint_En;

        model gsl_sf_expint_En_e
          parameter Integer n = 4;
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_17_1.gsl_sf_expint_En_e(n, x);
        end gsl_sf_expint_En_e;
      end chap_7_17_1;

      package chap_7_17_2
        model gsl_sf_expint_Ei
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_17_2.gsl_sf_expint_Ei(x);
        end gsl_sf_expint_Ei;

        model gsl_sf_expint_Ei_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_17_2.gsl_sf_expint_Ei_e(x);
        end gsl_sf_expint_Ei_e;
      end chap_7_17_2;

      package chap_7_17_3
        model gsl_sf_Shi
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_17_3.gsl_sf_Shi(x);
        end gsl_sf_Shi;

        model gsl_sf_Shi_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_17_3.gsl_sf_Shi_e(x);
        end gsl_sf_Shi_e;
        
        
        model gsl_sf_Chi
          parameter Real x = 10;
          Real y;
        algorithm
          y := gsl.Special_functions.chap_7_17_3.gsl_sf_Chi(x);
        end gsl_sf_Chi;
      
        model gsl_sf_Chi_e
          parameter Real x = 10;
          gsl.data_types.gsl_sf_result result;
          Integer y;
        algorithm
          (result, y) := gsl.Special_functions.chap_7_17_3.gsl_sf_Chi_e(x);
        end gsl_sf_Chi_e;
      end chap_7_17_3;
      
      package chap_7_17_4
       model gsl_sf_expint_3
       parameter Real x=10;
       Real y;
       algorithm
       y:=gsl.Special_functions.chap_7_17_4.gsl_sf_expint_3(x);
       end gsl_sf_expint_3;
       
       model gsl_sf_expint_3_e
       parameter Real x=10;
       gsl.data_types.gsl_sf_result result;
       Integer y;
       algorithm
       (result,y):=gsl.Special_functions.chap_7_17_4.gsl_sf_expint_3_e(x);
       end gsl_sf_expint_3_e;
      end chap_7_17_4;
      
      package chap_7_17_5
      
      model gsl_sf_Si
      parameter Real x=10;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_17_5.gsl_sf_Si(x);
      end gsl_sf_Si;
      
      model gsl_sf_Si_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_17_5.gsl_sf_Si_e(x);
      end gsl_sf_Si_e;
      
      model gsl_sf_Ci
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_17_5.gsl_sf_Ci(x);
      end gsl_sf_Ci;
      
      model gsl_sf_Ci_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_17_5.gsl_sf_Ci_e(x);
      end gsl_sf_Ci_e;
      end chap_7_17_5;
      
      package chap_7_18_1
      
      
      model gsl_sf_fermi_dirac_m1
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_m1(x);
      end gsl_sf_fermi_dirac_m1;
      
      
      model gsl_sf_fermi_dirac_m1_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_m1_e(x);
      end gsl_sf_fermi_dirac_m1_e;
      
      model gsl_sf_fermi_dirac_0
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_0(x);
      end gsl_sf_fermi_dirac_0;
      
      model gsl_sf_fermi_dirac_0_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_0_e(x);
      end gsl_sf_fermi_dirac_0_e;
      
       model gsl_sf_fermi_dirac_1
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_1(x);
      end gsl_sf_fermi_dirac_1;
      
      model gsl_sf_fermi_dirac_1_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_1_e(x);
      end gsl_sf_fermi_dirac_1_e;
      
      
      
       model gsl_sf_fermi_dirac_2
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_2(x);
      end gsl_sf_fermi_dirac_2;
      
      model gsl_sf_fermi_dirac_2_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_2_e(x);
      end gsl_sf_fermi_dirac_2_e;
      
      
      model gsl_sf_fermi_dirac_int
      parameter Integer j=2;
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_int(j,x);
      end gsl_sf_fermi_dirac_int;
      
      model gsl_sf_fermi_dirac_int_e
      parameter Integer j=2;
      parameter Real x=3;
      gsl.data_types.gsl_sf_result result;
      Real y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_int_e(j,x);
      end gsl_sf_fermi_dirac_int_e;
      
      
      model gsl_sf_fermi_dirac_mhalf
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_mhalf(x);
      end gsl_sf_fermi_dirac_mhalf;
      
      
      model gsl_sf_fermi_dirac_mhalf_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_mhalf_e(x);
      end gsl_sf_fermi_dirac_mhalf_e;
      
      model gsl_sf_fermi_dirac_half
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_half(x);
      end gsl_sf_fermi_dirac_half;
      
      model gsl_sf_fermi_dirac_half_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_half_e(x);
      end gsl_sf_fermi_dirac_half_e;
      
       model gsl_sf_fermi_dirac_3half
      parameter Real x=2;
      Real y;
      algorithm
      y:=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_3half(x);
      end gsl_sf_fermi_dirac_3half;
      
      model gsl_sf_fermi_dirac_3half_e
      parameter Real x=2;
      gsl.data_types.gsl_sf_result result;
      Integer y;
      algorithm
      (result,y):=gsl.Special_functions.chap_7_18_1.gsl_sf_fermi_dirac_3half_e(x);
      end gsl_sf_fermi_dirac_3half_e;
    
      
      
      
      end chap_7_18_1;
      
      
    end special_functions;
  end Examples;
end gsl;