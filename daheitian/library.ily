staff-line-count = #(
    define-music-function (parser location number music) (number? ly:music?)
    #{
    \stopStaff
    \override Staff.StaffSymbol.line-count = #number
    \startStaff
    $music
    #}
    )

boxed-markup = #(
    define-music-function
    (string font-size)
    (string? number?)
    #{
    - \tweak font-size #font-size
    ^ \markup
    \override #'(style . "box")
    \override #'(box-padding . 0.5)
    \whiteout
    \box
    #string
    #}
    )

#(define ((flared-tie coords) grob)

  (define (pair-to-list pair)
     (list (car pair) (cdr pair)))

  (define (normalize-coords goods x y dir)
    (map
      (lambda (coord)
        ;(coord-scale coord (cons x (* y dir)))
        (cons (* x (car coord)) (* y dir (cdr coord))))
      goods))

  (define (my-c-p-s points thick)
    (make-connected-path-stencil
      points
      thick
      1.0
      1.0
      #f
      #f))

  ;; outer let to trigger suicide
  (let ((sten (ly:tie::print grob)))
    (if (grob::is-live? grob)
        (let* ((layout (ly:grob-layout grob))
               (line-thickness (ly:output-def-lookup layout 'line-thickness))
               (thickness (ly:grob-property grob 'thickness 0.1))
               (used-thick (* line-thickness thickness))
               (dir (ly:grob-property grob 'direction))
               (xex (ly:stencil-extent sten X))
               (yex (ly:stencil-extent sten Y))
               (lenx (interval-length xex))
               (leny (interval-length yex))
               (xtrans (car xex))
               (ytrans (if (> dir 0)(car yex) (cdr yex)))
               (uplist
                 (map pair-to-list
                      (normalize-coords coords lenx (* leny 2) dir))))

   (ly:stencil-translate
       (my-c-p-s uplist used-thick)
     (cons xtrans ytrans)))
   '())))

#(define flare-tie
  (flared-tie '((0 . 0)(0.06 . 0.1) (0.94 . 0.1) (1.0 . 0.0))))

#(define ((trinton-blank-time-signature) grob)
   (grob-interpret-markup grob
          (markup #:override '(baseline-skip . 2.5) #:number
                  (#:line ((#:fontsize 1 #:column ("X" "X")))))))

#(define ((ghost-time-signature-one) grob)
    (grob-interpret-markup grob
        (markup #:override '(baseline-skip . 2.5) #:number
                (#:line ((#:fontsize 0.2 #:center-column ("6+2" "8")))))))

#(define ((ghost-time-signature-two) grob)
    (grob-interpret-markup grob
        (markup #:override '(baseline-skip . 2.5) #:number
                (#:line ((#:fontsize 0.2 #:center-column ("1+3" "8")))))))

string-clef = \markup {
    % \hspace #0.6
    \fontsize #10
    \override #'(font-name . "ekmelos")
    \override #'(whiteout-style . "outline")
    \override #'(whiteout . 1)
    \override #'(layer . 2)
    {
        \rotate #-90
        \raise #-2.45
        \char ##xe62a
    }
}

% #(define ((ghost-time-signature-two) grob)
%     (grob-interpret-markup grob
%         (markup #:override '(baseline-skip . 2.5) #:number
%                 (#:line ((#:fontsize 1 #:center-column (#:line (#:fraction '1 '3) #:line (#:note 4. 'DOWN))))))))
