;; Regression test GAUSSIAN for GSLL, automatically generated
;;
;; Copyright 2009 Liam M. Healy
;; Distributed under the terms of the GNU General Public License
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(in-package :gsl)

(LISP-UNIT:DEFINE-TEST GAUSSIAN
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST
    (LIST 1.3391860811867589d0 -0.8810099183143839d0
	  16.744084062537738d0 7.336411072925795d0
	  9.975246316020124d0 -12.775020810027664d0
	  -23.967152827332075d0 -6.79280164729211d0
	  -0.3909131843358723d0 8.935555455208181d0
	  -0.17647794589783283d0))
   (MULTIPLE-VALUE-LIST
    (LET ((RNG (MAKE-RANDOM-NUMBER-GENERATOR +MT19937+ 0)))
      (LOOP FOR I FROM 0 TO 10 COLLECT
	   (sample rng :gaussian :sigma 10.0d0)))))
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST 0.039894228040143274d0)
   (MULTIPLE-VALUE-LIST (GAUSSIAN-PDF 0.0d0 10.0d0)))
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST
    (LIST 7.648734260124924d0 -11.307312946196086d0
	  4.523361654215173d0 -4.5181725947577185d0
	  13.64676540828912d0 3.553650119391929d0
	  -5.567035948404032d0 10.097727863788887d0
	  2.519120940798607d0 -9.024585521868676d0
	  -9.463283369593537d0))
   (MULTIPLE-VALUE-LIST
    (LET ((RNG (MAKE-RANDOM-NUMBER-GENERATOR +MT19937+ 0)))
      (LOOP FOR I FROM 0 TO 10 COLLECT
	   (sample rng :gaussian-ziggurat :sigma 10.0d0)))))
  ;; Automatically converted from cdf/test.c
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 0.0d0) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 1.d-32) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 1.d-16) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 1.d-8) 0.5000000039894228d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 0.5d0) 0.6914624612740131d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 0.7d0) 0.758036347776927d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 5.0d0) 0.9999997133484281d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 10.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 30.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 40.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P 1.d10) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -1.d-32) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -1.d-16) 0.49999999999999994d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -1.d-8) 0.4999999960105772d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -0.5d0) 0.3085375387259869d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -0.7d0) 0.241963652223073d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -5.0d0) 2.866515718791939d-7 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -10.0d0) 7.619853024160525d-24 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -30.0d0) 4.906713927148187d-198 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-P -1.d10) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 0.0d0) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 1.d-32) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 1.d-16) 0.49999999999999994d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 1.d-8) 0.4999999960105772d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 0.5d0) 0.3085375387259869d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 0.7d0) 0.241963652223073d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 5.0d0) 2.866515718791939d-7 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 10.0d0) 7.619853024160525d-24 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 30.0d0) 4.906713927148187d-198 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q 1.d10) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -1.d-32) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -1.d-16) 0.5d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -1.d-8) 0.5000000039894228d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -0.5d0) 0.6914624612740131d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -0.7d0) 0.758036347776927d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -5.0d0) 0.9999997133484281d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -10.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -30.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -40.0d0) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-Q -1.d10) 1.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.9999997133d0) 5.0d0 1.d-4)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.9999683288d0) 4.0d0 1.d-6)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.998650102d0) 3.0d0 1.d-8)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.977249868051821d0) 2.0d0 1.d-14)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.841344746068543d0) 1.0d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.691462461274013d0) 0.5d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.655421741610324d0) 0.4d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.617911422188953d0) 0.3d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.579259709439103d0) 0.2d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.539827837277029d0) 0.1d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.5d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.460172162722971d0) -0.1d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.420740290560897d0) -0.2d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.382088577811047d0) -0.3d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.344578258389676d0) -0.4d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.308537538725987d0) -0.5d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.158655253931457d0) -1.0d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.022750131948179d0) -2.0d0 1.d-14)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 0.001349898d0) -3.0d0 1.d-8)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 3.16712d-5) -4.0d0 1.d-6)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 2.86648d-7) -5.0d0 1.d-4)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-PINV 7.61985302416052d-24) -10.0d0 1.d-4)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 7.61985302416052d-24) 10.0d0 1.d-4)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 2.86648d-7) 5.0d0 1.d-4)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 3.16712d-5) 4.0d0 1.d-6)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.001349898d0) 3.0d0 1.d-8)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.022750131948179d0) 2.0d0 1.d-14)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.158655253931457d0) 1.0d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.308537538725987d0) 0.5d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.344578258389676d0) 0.4d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.382088577811047d0) 0.3d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.420740290560897d0) 0.2d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.460172162722971d0) 0.1d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.5d0) 0.0d0 +TEST-TOL0+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.539827837277029d0) -0.1d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.579259709439103d0) -0.2d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.617911422188953d0) -0.3d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.655421741610324d0) -0.4d0 +TEST-TOL1+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.691462461274013d0) -0.5d0 +TEST-TOL2+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.841344746068543d0) -1.0d0 +TEST-TOL3+)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.977249868051821d0) -2.0d0 1.d-14)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.998650102d0) -3.0d0 1.d-8)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.9999683288d0) -4.0d0 1.d-6)
  (ASSERT-TO-TOLERANCE (UGAUSSIAN-QINV 0.9999997133d0) -5.0d0 1.d-4)
  ;; Automatically converted from cdf/test_auto.c
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d10 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d9 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d8 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d7 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1000000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -100000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -10000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -100.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -10.0d0 1.3d0) 7.225229227927d-15 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 7.225229227926508d-15 1.3d0) -10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.0d0 1.3d0) 0.2208781637125d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.22087816371245972d0 1.3d0) -1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -0.1d0 1.3d0) 0.4693423696034d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.4693423696033875d0 1.3d0) -0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -0.01d0 1.3d0) 0.4969312434916d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.49693124349158196d0 1.3d0) -0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -0.001d0 1.3d0) 0.499693121353d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.4996931213530323d0 1.3d0) -0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-4 1.3d0) 0.4999693121323d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-5 1.3d0) 0.4999969312132d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-6 1.3d0) 0.4999996931213d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-7 1.3d0) 0.4999999693121d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-8 1.3d0) 0.4999999969312d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-9 1.3d0) 0.4999999996931d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P -1.d-10 1.3d0) 0.4999999999693d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 0.0d0 1.3d0) 0.5d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.5d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-10 1.3d0) 0.5000000000307d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-9 1.3d0) 0.5000000003069d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-8 1.3d0) 0.5000000030688d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-7 1.3d0) 0.5000000306879d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-6 1.3d0) 0.5000003068787d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-5 1.3d0) 0.5000030687868d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d-4 1.3d0) 0.5000306878677d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 0.001d0 1.3d0) 0.500306878647d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.5003068786469678d0 1.3d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 0.01d0 1.3d0) 0.5030687565084d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.503068756508418d0 1.3d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 0.1d0 1.3d0) 0.5306576303966d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.5306576303966125d0 1.3d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.0d0 1.3d0) 0.7791218362875d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-PINV 0.7791218362875403d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 10.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 100.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 10000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 100000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1000000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d7 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d8 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d9 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-P 1.d10 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d10 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d9 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d8 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d7 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1000000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 100000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 10000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 100.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 10.0d0 1.3d0) 7.225229227927d-15 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 7.225229227926508d-15 1.3d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.0d0 1.3d0) 0.2208781637125d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.22087816371245972d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 0.1d0 1.3d0) 0.4693423696034d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.4693423696033875d0 1.3d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 0.01d0 1.3d0) 0.4969312434916d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.49693124349158196d0 1.3d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 0.001d0 1.3d0) 0.499693121353d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.4996931213530323d0 1.3d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-4 1.3d0) 0.4999693121323d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-5 1.3d0) 0.4999969312132d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-6 1.3d0) 0.4999996931213d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-7 1.3d0) 0.4999999693121d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-8 1.3d0) 0.4999999969312d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-9 1.3d0) 0.4999999996931d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 1.d-10 1.3d0) 0.4999999999693d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q 0.0d0 1.3d0) 0.5d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.5d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-10 1.3d0) 0.5000000000307d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-9 1.3d0) 0.5000000003069d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-8 1.3d0) 0.5000000030688d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-7 1.3d0) 0.5000000306879d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-6 1.3d0) 0.5000003068787d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-5 1.3d0) 0.5000030687868d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d-4 1.3d0) 0.5000306878677d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -0.001d0 1.3d0) 0.500306878647d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.5003068786469678d0 1.3d0) -0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -0.01d0 1.3d0) 0.5030687565084d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.503068756508418d0 1.3d0) -0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -0.1d0 1.3d0) 0.5306576303966d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.5306576303966125d0 1.3d0) -0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.0d0 1.3d0) 0.7791218362875d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-QINV 0.7791218362875403d0 1.3d0) -1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -10.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -100.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -10000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -100000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1000000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d7 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d8 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d9 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (GAUSSIAN-Q -1.d10 1.3d0) 1.0d0 +TEST-TOL6+))
