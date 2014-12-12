(ns datascript.utils)

(defn to-array [coll]
  (let [a (make-array (count coll))]
    (loop [i 0
           s (seq coll)]
      (if (not s)
        a
        (do
          (aset a i (first s))
          (recur (inc i) (next s)))))))

(def IWithMeta IMeta)
