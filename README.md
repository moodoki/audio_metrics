Audio Metrics
=============

PESQ ([ITU Recommendation P.862](http://www.itu.int/rec/T-REC-P.862/en))
====

Disclaimer: I do not own this implementation. This is ITU's reference
implementation, the original zip archive can be downloaded
[here](http://www.itu.int/rec/T-REC-P.862/en). 

There are no dependencies other than the standard C library. Verification files
can be also be found in the original archive.

Changes from original:

- Added a Makefile for easy compilation. 

PEAQ ([ITU Recommendation BS.1387](https://www.itu.int/rec/R-REC-BS.1387/en))
====

Disclaimer: I do not own this implementation. MATLAB implementation by Peter
Kabal, original project page (with many other useful software)
[here](http://www-mmsp.ece.mcgill.ca/Documents/Software/), original archive
[here](http://www-mmsp.ece.mcgill.ca/Documents/Downloads/PQevalAudio/PQe:alAudio-v1r0.tar.gz).

Changes from original:
- fixed function calls with wrong case (will cause errors on case sensitive
  flesystems)
- replaced deprecated `wavread` with `audioread` and `audioinfo`
