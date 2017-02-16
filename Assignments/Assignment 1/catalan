\\ program to find catalan numbers
(defn dig [a] \\ define an input
  (def b 2) 
  (println "1,") \\ print first number in series
  (while (<= b a) \\ run the loop upto desired position given
    (def n 1) 
    (def d 1)
    (def c 2)
    (while (<= c b)
      (def n (*' n (+' b c))) \\ find numerator
      (def d (*' c d)) \\ find denominator
      (def ca (/ n d)) \\ catalan number
      (def c (+ c 1))
      )
    (println ca,) \\ print the number
    (def b (+ b 1)) 
    )
  )
