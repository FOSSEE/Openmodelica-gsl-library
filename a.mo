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
        input Real x;
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
      
        external "C" y = gsl_sf_bessel_il_scaled_array( lmax, x, result_array) annotation(
          Include = "#include <gsl/gsl_sf_bessel.h>",
          Library = "gsl",
          Library = "gslcblas");
      end gsl_sf_bessel_il_scaled_array;
    
    end chap_7_5_7;
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
        parameter Integer l=10;
        parameter Real x=10;
        gsl.data_types.gsl_sf_result result;
        Integer y;
        algorithm
        (result,y):=gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_e(l,x);
        end gsl_sf_bessel_jl_e;
        
        model gsl_sf_bessel_jl_array
          // input Integer nmin;
          parameter Integer lmax=10;
           parameter Real x=10;
           Real result_array[lmax];
           Integer y;
           algorithm
        (result_array,y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_array(lmax, x);
        end gsl_sf_bessel_jl_array;
        
        
        model gsl_sf_bessel_jl_steed_array
          // input Integer nmin;
          parameter Integer lmax=10;
           parameter Real x=10;
           Real result_array[lmax];
           Integer y;
           algorithm
        (result_array,y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_steed_array(lmax, x);
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
        parameter Integer l=10;
        parameter Real x=10;
        gsl.data_types.gsl_sf_result result;
        Integer y;
        algorithm
        (result,y):=gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_e(l,x);
        end gsl_sf_bessel_jl_e;
        
        model gsl_sf_bessel_jl_array
          // input Integer nmin;
          parameter Integer lmax=10;
           parameter Real x=10;
           Real result_array[lmax];
           Integer y;
           algorithm
        (result_array,y) := gsl.Special_functions.chap_7_5_5.gsl_sf_bessel_jl_array(lmax, x);
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
    end special_functions;
  end Examples;
end gsl;