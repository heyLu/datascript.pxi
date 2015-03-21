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

(defn array [& args]
  (let [a (make-array (count args))]
    (loop [i 0 args args]
      (if (seq args)
        (do
          (aset a i (first args))
          (recur (inc i) (next args)))
        a))))

(defn map-array [a f] ; array first to stay with the `(.map a f)` pattern in cljs
  (let [ma (make-array (alength a))]
    (dotimes [i (alength ma)]
      (aset ma i (f (aget a i))))
    ma))

(def == =)

(defn compare [x y] (- x y))
