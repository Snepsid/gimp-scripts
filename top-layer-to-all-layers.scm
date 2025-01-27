(define (add-top-layer-to-all-layers image)
  (let* ((layers (gimp-image-get-layers image))
         (top-layer (aref (cadr layers) 0)))
    (gimp-image-undo-group-start image)
    (let* ((num-layers (car layers))
           (layer-list (cadr layers)))
      (do ((i 1 (+ i 1)))  ; Start from 1 to skip the top layer
          ((= i num-layers))
        (let* ((layer (aref layer-list i))
               (copy (car (gimp-layer-new-from-drawable top-layer image))))
          (gimp-image-insert-layer image copy 0 -1)
          (gimp-image-lower-item image copy)
          (gimp-image-set-active-layer image copy)
          (gimp-item-set-visible copy TRUE)
          (gimp-image-merge-down image copy EXPAND-AS-NECESSARY))))
    (gimp-image-undo-group-end image)))

(script-fu-register
  "add-top-layer-to-all-layers"
  "<Image>/Filters/Snepsid/Add Top Layer to All Layers..."
  "Add the top layer to all other layers of an image"
  "Snepsid"
  "Snepsid"
  "2023"
  ""
  SF-IMAGE    "Image"    0)
