(ns goog.array)

(defn defaultCompare [a b]
  (if (> a b)
    1
    (if (< a b)
      -1
      0)))
