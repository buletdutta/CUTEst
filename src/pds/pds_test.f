C     ( Last modified on 5 Jan 2013 at 17:10:00 )

C  Dummy SEARCH etc testing pds_main interface to CUTEst
C  Nick Gould, 5th January 2013

      SUBROUTINE SEARCH(N,OUT,MAX,SCHEME,INDEX,LIST,UNIQUE,FACTOR,ERROR)
      INTEGER :: N, MAX, OUT, UNIQUE, FACTOR, ERROR
      INTEGER :: SCHEME(-1:N,-N:((MAX-N*N-3*N-2)/(N+2)))
      INTEGER :: INDEX(-N:((MAX-N*N-3*N-2)/(N+2)))
      INTEGER :: LIST((MAX-N*N-3*N-2)/(N+2))
      unique = 1
      factor = 1
      error = 0
      RETURN
      END

      SUBROUTINE GETSS(N,IN,SSS,SCHEME,FACTOR,RESIZE,ERROR)
      INTEGER :: N, IN, SSS, SCHEME(-1:N,SSS), RESIZE, ERROR
      DOUBLE PRECISION :: FACTOR
      error = 0
      RETURN
      END

      SUBROUTINE PDS(N,LPR,TYPE,SCALE,DEBUG,TOL,MAXITR,SSS,FCN,FACTOR,
     *             SCHEME,RESIZE,S,INDEX,FBEST,LENGTH,COUNT,EDGE,C,PLUS)
      INTEGER :: N, LPR, TYPE, DEBUG, MAXITR, SSS
      INTEGER :: SCHEME(-1:N,SSS), RESIZE, INDEX(N+1), COUNT
      DOUBLE PRECISION SCALE, TOL, FACTOR, S(N,N+1), FBEST, LENGTH
      DOUBLE PRECISION EDGE(N), C(-3:N+1), PLUS(-3:N+1)
      EXTERNAL :: FCN
      CALL FCN( n, S(1,1), FBEST )
      RETURN
      END 

      SUBROUTINE RESULT(N,COUNT,S,FBEST,INDEX,OUT)
      INTEGER :: N, COUNT, INDEX(N+1), OUT
      DOUBLE PRECISION :: S(N,N+1), FBEST
      RETURN
      END 