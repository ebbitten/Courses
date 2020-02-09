(define atom?
  (lambda (x)
          (and (not (pair? x)) (not (null? x)))))

(atom? (quote ()))

'atom

(quote atom)

(quote (atom))



(atom? "Harry")

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom?(car l))(lat?(cdr l)))
      (else #f))))

(define member?
  (lambda (a lat)
          (cond
            ((null? lat) #f)
            (else (or (eq?(car lat) a)
                      (member? a (cdr lat)))))))

(define rember
  (lambda (a lat)
    (cond
      ((null? lat)(quote ()))
      (else (cond
             ((eq? (car lat) a) (cdr lat))
             (else (cons (car lat)
                         (rember a
                                 (cdr lat)))))))))

(define rember
  (lambda (a lat)
    (cond
      ((null? lat)(quote ()))
                  ((eq? (car lat) a) (cdr lat))
                  (else (cons (car lat)
                              (rember a
                                      (cdr lat)))))))

(define firsts
  (lambda (lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cons (car (car lat)) (firsts (cdr lat)))))))

(define insertR
  (lambda(new old lat)
    (cond
      ((null? lat)(quote ()))
      ((eq? (car lat) old) (cons old (cons new (cdr lat))))
      (else cons (car lat) (insertR new old (cdr lat))))))

(define insertL
  (lambda(new old lat)
    (cond
      ((null? lat)(quote ()))
      ((eq? (car lat) old) (cons new (cons old (cdr lat))))
      (else cons (car lat) (insertL new old (cdr lat))))))

(define subst
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cond
         ((eq? (car lat) old) ( cons new (cdr lat)))
         (else cons (car lat) (subst new old (cdr lat))))))))

(define subst2
  (lambda (new o1 o2 lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cond
         ((eq? (car lat) o1) (cons new (cdr lat)))
         ((eq? (car lat) o2) (cons new (cdr lat)))
         (else
          (cons (car lat)
                (subst2 new o1 o2 (cdr lat)))))))))

(define multirember
  (lambda (a lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cond
         (eq? (car lat) a) (multirember a (cdr lat))
         (else
          (cons (car lat) (multirember a (cdr lat)))))))))

(define multiinsertR
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cond
         ((eq? (car lat) old) (cons old
                                   (cons new
                                         (multiinsertR new old (cdr lat)))))
         (else
          (cons (car lat) (multiinsertR new old (cdr lat)))))))))

(define multiinsertL
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cond
         ((eq? (car lat) old)
          (cons new
                (cons old
                      (multiinsertL new old (cdr lat)))))
         (else
          (cons (car lat)
                (multiinsertL new old (cdr lat)))))))))

(define multisubst
  (lambda (new old lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cond
         ((eq? (car lat) old)(cons new (multisubst new old (cdr lat))))
         (else
          (cons (car lat) (multisubst new old (cdr lat)))))))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define plus
  (lambda (n1 n2)
    (cond
      ((zero? n2)n1)
      (else
       (plus (add1 n1) (sub1 n2))))))
(define subtract
  (lambda (n1 n2)
    (cond
      ((zero? n2)n1)
      (else
       (sub1 (subtract
              n1 (sub1 n2)))))))

(define addtup
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else
       (plus (car tup) (addtup (cdr tup)))))))

(define multiply
  (lambda (n1 n2)
    (cond
      ((zero? n2) 0)
      (else
       (plus
        n1  (multiply n1 (sub1 n2)))))))

(define tup+
  (lambda (tup1 tup2)
    (cond
      ((and (null? tup1)(null? tup2))(quote()))
      ((null? tup1)tup2)
      ((null? tup2)tup1)
      (else
       (cons
        (plus (car tup1) (car tup2))
        (tup+ (cdr tup1) (cdr tup2)))))))

(define gt
  (lambda (n1 n2)
    (cond
      ((zero? n1)#f)
      ((zero? n2)#t)
      (else
       (gt (sub1 n1) (sub1 n2))))))

(define lt
  (lambda (n1 n2)
    (gt n2 n1)))

(define equals
  (lambda (n1 n2 )
    (cond
      ((gt n1 n2)#f)
      ((lt n1 n2)#f)
      (else
       #t))))

(define power
  (lambda (n1 n2)
  (cond
    ((zero? n2)1)
    (else
     (multiply n1 (power n1 (sub1 n2)))))))

(define divide
  (lambda (n m)
    (cond
      ((lt n m)0)
      (else (add1 (divide (subtract n m) m))))))

(define len
  (lambda (lat)
    (cond
      ((null? lat)0)
      (else
       (add1 (len (cdr lat)))))))

(define pick
  (lambda (n lat)
  (cond
    ((null? lat)(quote()))
    ((zero? n)(car lat))
    (else
     (pick (sub1 n) (cdr lat))))))

(define rempick
  (lambda (n lat)
    (cond
      ((null? lat)(quote()))
      ((zero? n)(cdr lat))
      (else
       (cons (car lat) (rempick (sub1 n) (cdr lat)))))))

(define no-nums
  (lambda (lat)
    (cond
    ((null? lat)(quote()))
    ((number? (car lat))(no-nums (cdr lat)))
    (else
     (cons (car lat) (no-nums(cdr lat)))))))

(define all-nums
  (lambda (lat)
    (cond
      ((null? lat)(quote()))
      ((number? (car lat))
       (cons (car lat) (all-nums (cdr lat))))
      (else
       (all-nums (cdr lat))))))

(define eqan?
  (lambda (a1 a2)
  (cond
    ((and (number? a1)(number? a2))
     (equals a1 a2))
    ((or (number? a1)(number? a2))
     #f)
    (else (eq? a1 a2)))))

(define occur
  (lambda (a lat)
    (cond
      ((null? lat)0)
      (else
       (cond
         ((eqan? (car lat) a)
          (add1 (occur a (cdr lat))))
         (else (occur a (cdr lat))))))))

(define one?
  (lambda (n)
    (cond
      ((zero? (sub1 n))#t)
      (else #f))))

(define rempick
  (lambda (n lat)
    (cond
      ((null? lat)(quote()))
      ((one? n)(cdr lat))
      (else
       (cons (car lat) (rempick (sub1 n) (cdr lat)))))))

(define rember*
  (lambda (a l)
    (cond
      ((null? l)(quote()))
      ((atom? (car l))
       (cond
      ((eqan? a (car l)
              (rember* a (cdr l))))
      (else
       (cons (car l) (rember* a (cdr l))))))
    (else (cons (rember* a (car l)) (rember* a (cdr l)))))))

(define insertR*
  (lambda (new old l)
    (cond
      ((null? l)(quote()))
      ((atom? (car l))
       (cond
         ((eq? old (car l))
          (cons old (cons new (insertR* new old (cdr l)))))
         (else
          (cons (car l) (insertR* new old (cdr l))))))
      (else
       (cons (insertR* new old (car l)) (insertR new old (cdr l)))))))

(define occur*
 (lambda (a l)
   (cond
     ((null? l)(0))
     ((atom? (car l))
      (cond
        ((eq? a (car l))
         (add1 (occur* a (cdr l))))
        (else
         (occur* a (cdr l)))))
      (else
       (plus (occur* a (car l)) (occur* a (cdr l)))))))
         

(define subst*
  (lambda (new old l)
    (cond
      ((null? l)(quote()))
      ((atom? (car l))
       (cond
         ((eq? old (car l))
          (cons new (subst* new old (cdr l))))
         (else
          (cons (car l) (subst* new old (cdrl))))))
      (else
       (cons (subst* new old (car l)) (subst* new old (cdr l)))))))

(define insertL*
  (lambda (new old l)
    (cond
      ((null? l)(quote()))
      ((atom? (car l))
       (cond
         ((eq? old (car l))
          (cons new (cons (car l) (insertL* new old (cdr l)))))
         (else
          (cons (car l) (insertL* new old (cdr l))))))
      (else
       (cons (insertL* new old (car l)) (insertR new old (cdr l)))))))

(define member*
  (lambda (a l)
    (cond
      ((null? l)(#f))
      ((atom? (car l))
       (or (eq? (car l) a)
           (member* a (cdr l))))
      (else
       (or
        (member* a (car l))
        (member* a (cdr l)))))))

(define leftmost
  (lambda (l)
    (cond
      ((atom? (car l))
       (car l))
      (else
       (leftmost (car l))))))

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and
        (atom? (car l1)) (atom? (car l2)))
       (and (eqan (car l1) (car l2))(eqlist? (cdr l1) (cdr l2)))
      ((or
       (atom? (car l1) atom? (car l2)))
       (#f)))
      ((and
        (null? (car l1)) (null? (car l2)))
       (cond
         ((and (null? (cdr l1)) (null? (cdr l2)))) (#t)
         (else
          (eqlist?(cdr l1) (cdr l2)))))
      ((or
        (null? (l1)) (null? (l2)))
       (#f))
      (else
       (and (eqlist? (car l1) (car l2)) (eqlist? (cdr l1) (cdr l2)))))))

(define equall?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
       (eqan? s1 s2))
      ((atom? s1) #f)
      ((atom? s2) #f)
      (else
       (eqlist? s1 s2)))))

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1) (null? l2)) #t)
      ((or (null? l1) (null? l2)) #f)
      (else
       (and (equall? (car l1) (car l2))
            (eqlist? (cdr l1) (cdr l2)))))))

(define rember
  (lambda (s l)
    (cond
      ((null? l)(quote ()))
      ((atom? (car l))
       (cond
         ((equal?(car l) s) (cdr l))
         (else (cons (car l)
                     (rember s (cdr l))))))
       (else
        (cond
          ((equal? (car l) s) (cdr l))
          (else
           (cons (car l)
                 (rember s
                         (cdr l)))))))))
(define rember
  (lambda (s l)
    (cond
      ((null? l)(quote ()))
      ((equall? s (car l))(cdr l))
      (else
       (cons  (car l) (rember s (cdr l)))))))

(define numbered?
  (lambda (aexp)
    (cond
      ((atom? aexp)(number? aexp))
      (else
       (and (numbered? (car aexp))
            (numbered?
             (car (cdr (cdr aexp)))))))))

(define value
  (lambda (aexp)
    (cond
      ((atom? (car aexp))
       (cond
         ((eq? (car aexp) plus)(plus (car (cdr aexp)) (car (cdr (cdr (aexp))))))
         ((eq? (car aexp) multiply)(multiply (car (cdr aexp)) (car (cdr (cdr (aexp))))))
         ((eq? (car aexp) power)(power (car (cdr aexp)) (car (cdr (cdr (aexp))))))
         )))))

(define 1st-sub-exp
  (lambda (aexp)
      (car (cdr aexp))))

(define 2nd-sub-exp
  (lambda (aexp)
    (car (cdr (cdr aexp)))))

(define operator
  (lambda (aexp)
    (car aexp)))

(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      ((eq? (operator next) (quote plus))
       (plus (value (1st-sub-exp nexp))
             (value (2nd-sub-exp nexp))))
      ((eq? (operator nexp) (quote multiply))
       (multiply (value (1st-sub-exp nexp))
                 (value (2nd-sub-exp nexp))))
      (else
       (power (value (1st-sub-exp nexp))
              (value (2nd-sub-exp nexp)))))))

(define set?
 (lambda (lat)
   (cond
     ((null?) #t)
     ((member? (car lat) (cdr lat))
      #f)
     (else (set? (cdr lat))))))

(define makeset
  (lambda (lat)
    (cond
      ((null?)(quote()))
      ((member? (car lat) (cdr lat))(makeset (cdr lat)))
      (else
       (cons (car lat) (makeset (cdr lat)))))))

(define makeset
  (lambda (lat)
    (cond
      ((null?)(quote()))
      (else
       (cons (car lat) (makeset(
             (multirember (car lat) (cdr lat)))))))))

(define subset?
  (lambda (set1 set2)
    (cond
      ((null? set1)#t)
      (else
       (and
        (member? (car set1) set2)
        (subset? (cdr set1) set2))))))

(define eqset?
  (lambda (set1 set2)
    (cond
      ((subset? set1 set2)
       (subset? set2 set1))
      (else #f))))

(define intersect?
  (lambda (set1 set2)
  (cond
    ((null? set1)(#f))
    (else
     (or
      (member? (car set1) set2)
      (intersect? (cdr set1) set2))))))

(define intersect
  (lambda (set1 set2)
    (cond
      ((null? set1)(quote()))
      ((member (car set1) set2)
       (cons (car set1) (intersect (cdr set1) set2)))
      (else
       (intersect (cdr set 1) set2)))))

(define union
  (lambda (set1 set2)
    (cond
      ((null? set1) set2)
      ((member? (car set1) set2)
       (union (cdr set1) set2))
      (else
       (cons (car 1) (union (cdr set1) set2))))))

(define intersectall
  (lambda (l-set)
    (cond
      ((null? (cdr l-set))(car l-set))
      (else
       (intersect (car l-set)
                  (intersectall (cdr l-set)))))))

(define a-pair?
  (lambda (x)
    (cond
      ((atom? x) #f)
      ((null? x) #f)
      ((null? (cdr x)) #f)
      ((null? (cdr (cdr x))) #t)
      (else #f))))

(define first
  (lambda (p)
    (car p)))

(define second
  (lambda (p)
    (car (cdr p))))

(define build
  (lambda (s1 s2)
    (cons s1 (cons s2 (quote ())))))

(define third
  (lambda (l)
    (car (cdr (cdr l)))))

(define fun?
  (lambda (rel)
    ((set? (firsts rel)))))

(define revrel
  (lambda (rel)
    (cond
     ((null? rel)(quote()))
     (else
      (cons
       (build
        (second (car rel)) (first (car rel)))
     (revrel (cdr rel)))))))

(define revpair
  (lambda (pair)
    (build (second pair)(first pair))))

(define revrel
  (lambda (rel)
    (cond
      ((null? rel)(quote ()))
      (else (cons (revpair (car rel))
                  (revrel (cdr rel)))))))

(define seconds
  (lambda (lat)
    (cond
      ((null? lat)(quote ()))
      (else
       (cons (car (cdr lat)) (seconds (cdr lat)))))))

(define fullfun?
  (lambda (fun)
    (set? (seconds fun))))

(define one-to-one?
  (lambda (fun)
    (fun? (revrel fun))))

(define rember-f
  (lambda (test? a l)
    (cond
      ((null? l)(quote()))
      ((test? a (car l))(cdr l))
      (else
       (cons (car l) (rember-f test? a (cdr l)))))))

(define eq?-c
  (lambda (a)
    (lambda (x)
      (eq? x a))))

(define rember-f
  (lambda (test?)
    (lambda (a l)
      (cond
        ((null? l)(quote ()))
        ((test? (car l) a )(cdr l))
        (else (cons (car l)
                    ((rember-f test?) a)
                    (cdr l)))))))


(define insertL-f
  (lambda (test?)
    (lambda (new old l)
      (cond
        ((null? l)(quote()))
        ((test? (car l) old)
         (cons new (cons old (cdr l))))
        (else
         (cons (car l)
               ((insertL-f test?) new old
                                  (cdr l))))))))
(define insertR-f
  (lambda (test?)
    (lambda (new old l)
      (cond
        ((null? l)(quote()))
        ((test? (car l) old)
         (cons (car l) (cons new (cdr l))))
        (else
         (cons (car l)
               ((insertR-f test?) new old
                                  (cdr l))))))))
(define insert-g
  (lambda (place new old l)
    (cond
      ((eq? place "R")(insertR new old l))
      (else
       (insertL new old l)))))

(define seqL
  (lambda (new old l)
    (cons new (cons old l))))

(define seqR
  (lambda (new old l)
    (cons old (cons new l))))

(define insert-g
  (lambda (seq)
    (lambda (new old l)
      (cond
        ((null? l)(quote()))
        ((eq? old (car l))
         (seq new old (cdr l)))
        (else
         (cons (car l)
               ((insert-g seq) new old
                               (cdr l))))))))

(define insertL
  (insert-g
   (lambda (new old l)
     (cons new (cons old l)))))

(define insertR
  (insert-g
   (lambda (new old l)
     (cons old (cons new l)))))

(define seqS
  (lambda (new old l)
    (cons new l)))

(define subst
  (insert-g seqS))

(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp) 
       (else
         ((atom-to-function (operator aexp))
          (value (1st-sub-exp nexp))
          (value (2nd-sub-exp nexp)))))))

(define multirember-f
  (lambda (test?)
    (lambda (a lat)
      (cond
        ((null? lat)(quote ()))
        ((test? (car lat) a)
         ((multirember-f test?) a (cdr lat)))
        (else (cons (car lat)
                    ((multirember-f test?) a
                                           (cdr lat))))))))

(define multiremberT
  (lambda (test? lat)
    (cond
      ((null? lat)(quote ()))
      ((test? (car lat))
       (multiremberT test? (cdr lat)))
      (else (cons (car lat)
                  (multiremberT test?
                                (cdr lat)))))))



(define multirember&co
  (lambda (a lat col)
    (cond
      ((null? lat)
       (col (quote ()) (quote ())))
      ((eq? (car lat) a)
       (multirember&co a
                       (cdr lat)
                       (lambda (newlat seen)
                         (col newlat
                              (cons (car lat) seen)))))
      (else
       (multirember&co a
                       (cdr lat)
                       (lambda (newlat seen)
                         (col (cons (car lat) newlat)
                              seen)))))))

(define new-friend
  (lambda (newlat seen)
    (col newlat
         (cons (car lat) seen))))

(define new-friend
  (lambda (newlat seen)
    (null? (cons (car lat) seen))))

(define a-friend
  (lambda (x y)
    (null? y)))

(define new-friend
  (lambda (newlat seen)
    (a-friend newlat
              (cons (quote tuna) seen))))

(define last-friend
  (lambda (x y)
    (length x)))

(define multiinsertLR
  (lambda (new oldL oldR lat)
    (cond
      ((null? lat)(quote()))
      ((eq? (car lat) oldL)(seqL new oldL (multiinsertLR new oldL oldR (cdr lat))))
      ((eq? (car lat) oldR)(seqR new oldR (multiinsertLR new oldL oldR (cdr lat))))
      (else
       (cons (car lat) (multiinsertLR new oldL oldR (cdr lat)))))))

(define multiinsertLR&co
  (lambda (new oldL oldR lat col)
    (cond
      ((null? lat)(col (quote()) 0 0 ))
      ((eq? (car lat) oldL)
       (multiinsertLR&co new oldL oldR
                         (cdr lat)
                         (lambda (newlat rinserts linserts)
                           (col (seqL new oldL newlat) rinserts (add1 linserts)))))
      ((eq? (car lat) oldR)
       (multiinsertLR&co new oldL oldR
                         (cdr lat)
                         (lambda (newlat rinserts linserts)
                           (col (seqR new oldR newlat) (add1 rinserts) linserts))))
      (else
       (multiinsertLR&co new oldL oldR
                         (cdr lat)
                         (lambda (newlat rinserts linserts)
                           (col (cons (car lat) newlat) rinserts linserts)))))))
(define evens-only*
  (lambda (l)
    (cond
      ((null? l)(quote()))
      ((atom? (car l))
       (cond
      ((even? (car l)
              ((cons (car l) evens-only* (cdr l)))))
      (else
       (evens-only* (cdr l)))))
    (else (cons (evens-only* (car l)) (evens-only* (cdr l)))))))

(define evens-only*&co
  (lambda (l col)
    (cond
      ((null? l)
       (col (quote ()) 1 0))
      ((atom? (car l))
       (cond
         ((even? (car l))
          (evens-only*&co (cdr l)
                          (lambda (newl p s)
                            (col (cons (car l) newl)
                                 (multiply (car l) p) s))))
         (else (evens-only*&co (cdr l)
                               (lambda (newl p s)
                                 (col newl
                                      p (plus (car l) s)))))))
       (else (evens-only*&co (car l)
                             (lambda (newl p s)
                               (evens-only*&co (cdr l)
                                               (lambda (dnewl dp ds)
                                                 (col (cons newl dnewl)
                                                      (multiply p dp)
                                                      (plus s ds))))))))))

(define the-last-friend
  (lambda (newl product sum)
    (cons sum
          (cons product
                newl))))

(define keep-looking
  (lambda (a n lat)
    (cond
      ((null? lat)#f)
      ((number? (pick n lat))
       (keep-looking a (pick n lat) lat))
      (else
       (cond
         ((eq? (pick n lat) a) #t)
         (else
          (#f)))))))

(define shift
  (lambda (pair)
    (build (first (first pair))
           (build (second (first pair))
                  (second pair)))))

(define align
  (lambda (pora)
    (cond
      ((atom? pora) pora)
      ((a-pair? (first pora))
       (align (shift pora)))
      (else (build (first pora)
                   (align (second pora)))))))

(define weight*
  (lambda (pora)
           (cond
             ((atom? pora) 1)
             (else
              (plus (multiply (weight* (first pora)) 2)
                    (weight* (second pora)))))))

(define length*
  (lambda (pora)
    (cond
      ((atom? pora) 1)
      (else
       (plus (length* (first pora))
             (length* (second pora)))))))

(define shuffle
  (lambda (pora)
    (cond
      ((atom? pora) pora)
      ((a-pair? (first pora))
       (shuffle (revpair pora)))
      (else (build (first pora)
                   (shuffle (second pora)))))))

(define eternity
  (lambda (l)
    (eternity l)))

(lambda (l)
  (cond
    ((null? l)0)
    (else (add1 (eternity (cdr l))))))

(lambda (l)
  (cond
    ((null? l) 0)
    (else
     (add1
      ((lambda (l)
         (cond
           ((null? l)0)
           (else (add1
                  (eternity (cdr l))))))
       (cdr l))))))

((lambda (length)
   (lambda (l)
     (cond
       ((null? l)0)
       (else (add1 (length (cdr l)))))))
 eternity)

((lambda (f)
   (lambda (l)
     (cond
       ((null? l)0)
       (else (add1 (f (cdr l)))))))
 ((lambda (g)
    (lambda (l)
      (cond
        ((null? l)0)
        (else (add1 (g (cdr l)))))))
 eternity))

((lambda (mk-length)
   (mk-length eternity))
 (lambda (length)
   (lambda (l)
     (cond
       ((null? l)0)
       (else (add1 (length (cdr l))))))))

((lambda (mk-length)
   (mk-length mk-length))
 (lambda (mk-length)
   (lambda (l)
     (cond
       ((null? l)0)
       (else (add1
              ((mk-length mk-length)
               (cdr l))))))))

((lambda (mk-length)
   (mk-length mk-length))
 (lambda (mk-length)
   ((lambda (length)
      (lambda (l)
        (cond
          ((null? l)0)
          (else (add1 (length (cdr l)))))))
    (mk-length mk-length))))

((lambda (mk-length)
  (mk-length mk-length))
 (lambda (mk-length)
   ((lambda (length)
      (lambda (l)
           (cond
             ((null? l)0)
             (else
              (add1 (length (cdr l))))))))
    (lambda (x)
      ((mk-length mk-length)x))))

((lambda (le)
   ((lambda (mk-length)
      (mk-length mk-length))
    (lambda (mk-length)
      (le (lambda (x)
            ((mk-length mk-length) x))))))
 (lambda (length)
   (lambda (l)
     (cond
       ((null? l)0)
       (else (add1 (length (cdr l))))))))

(define lookup-in-entry
  (lambda (name entry entry-f)
    (lookup-in-entry-help name
                          (first entry)
                          (second entry)
                          (entry-f))))

(define lookup-in-entry-help
  (lambda (name names values entry-f)
    (cond
      ((null? names)(entry-f name))
      ((eq? name (car names))(car values))
      (else (lookup-in-entry name (build (cdr names) (cdr values)) entry-f)))))

(define extend-table cons)

(define lookup-in-table
  (lambda (name table table-f)
    (cond
      ((null? table)(table-f name))
      (else
       (lookup-in-entry name (car table)
                        (lookup-in-table name (cdr table) table-f))))))

(car (quote (a b c)))

((lambda (nothing)
   (cons nothing (quote ())))
 (quote
  (from nothing comes something)))

((lambda (nothing)
   (cond
     (nothing (quote something))
     (else (quote nothing))))
 #t)

(lambda (x y) (cons x y))
((lambda (nothing)
   (cond
     (nothing (quote something))
     (else (quote nothing))))
 #t)

(define expression-to-action
  (lambda (e)
    (cond
      ((atom? e)(atom-to action e))
      (else (list-to-action e)))))

(define atom-to-action
  (lambda (e)
    (cond
      ((number? e) *const)
      ((eq? e #t) *const)
      ((eq? e #f) *const)
      ((eq? e (quote cons)) *const)
      ((eq? e (quote car)) *const)
      ((eq? e (quote cdr)) *const)
      ((eq? e (quote null?)) *const)
      ((eq? e (quote eq?)) *const)
      ((eq? e (quote atom?)) *const)
      ((eq? e (quote zero?)) *const)
      ((eq? e (quote add1)) *const)
      ((eq? e (quote sub1)) *const)
      ((eq? e (quote number?)) *const)
      (else *identifier))))

(define list-to-action
  (lambda (e)
    (cond
      ((atom? (car e))
       (cond
         ((eq? (car e) (quote quote))
          *quote)
         ((eq? (car e) (quote lambda))
          *lambda)
         ((eq? (car e) (quote cond))
          *cond)
         (else *application)))
      (else *application))))

(define value
  (lambda (e)
    (meaning e (quote ()))))

(define meaning
  (lambda (e table)
    ((expression-to-action e) e table)))

(define *const
  (lambda (e table)
    (cond
      ((number? e) e)
      ((eq? e #t) #t)
      ((eq? e #f) #f)
      (else (build (quote primitive) e)))))

(define *quote
  (lambda (e table)
    (text-of e)))

(define text-of second)

(define *identifier
  (lambda (e table)
    (lookup-in-table e table initial-table)))

(define initial-table
  (lambda (name)
    (car (quote ()))))

(define *lambda
  (lambda (e table)
    (build (quote non-primitive)
           (cons table (cdr e)))))

(define table-of first)

(define formals-of second)

(define body-of third)

(define evcon
  (lambda (lines table)
    (cond
      ((else? (question-of (car lines)))
       (meaning (answer-of (car lines))
                table))
      ((meaning (question-of (car lines))
                table)
       (meaning (answer-of (car lines))
                table))
      (else (evcon (cdr lines) table)))))

(define else?
  (lambda (x)
    (cond
      ((atom? x) (eq? x (quote else)))
      (else #f))))

(define question-of first)
(define answer-of second)

(define *cond
  (lambda (e table)
    (evcon (cond-lines-of e) table)))

(define cond-lines-of cdr)

(define evlis
  (lambda (args table)
    (cond
      ((null? args) (quote ()))
      (else
       (cons (meaning (car args) table)
             (evlis (cdr args) table))))))

(define *application
  (lambda (e table)
    (apply
     (meaning (function-of e) table)
     (evlis (arguments-of e ) table))))

(define function-of car)
(define arguments-of cdr)

(define primitive?
  (lambda (l)
    (eq? (first l) (quote primitive))))

(define non-primitive?
  (lambda (l)
    (eq? (first l) (quote non-primitive))))

(define apply
  (lambda (fun vals)
    (cond
      ((primitive? fun)
       (apply-primitive
        (second fun) vals))
      ((non-primitive? fun)
       (apply-closure
        (second fun) vals)))))