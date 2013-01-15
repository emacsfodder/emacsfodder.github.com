(defun hexrgb-hex-set-brightness
  (hex brightness)
  "set brightness of a hex color, amount values from 0-1
   returns a 6 digit hex color"
  (let* ((hsv (hexrgb-hex-to-hsv hex))
         (h (first hsv)) (s (second hsv)) (v (third hsv)))
    (hexrgb-hsv-to-hex h s (* v brightness) 2)))

(defun hexrgb-hex-set-saturation
  (hex saturation)
  "set saturation of a hex color, amount values from 0-1
   returns a 6 digit hex color"
  (let* ((hsv (hexrgb-hex-to-hsv hex))
         (h (first hsv)) (s (second hsv)) (v (third hsv)))
    (hexrgb-hsv-to-hex h (* s saturation) v 2)))

(defun hexrgb-hex-set-hue
  (hex hue)
  "set hue of a hex color, amount values from 0-1
   returns a 6 digit hex color"
  (let* ((hsv (hexrgb-hex-to-hsv hex))
         (s (second hsv)) (v (third hsv)))
    (hexrgb-hsv-to-hex hue s v 2)))
