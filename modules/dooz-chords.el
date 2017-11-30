(use-package key-chord
  :ensure t
  :init (key-chord-mode 1)
  :config (progn
	    (key-chord-define-global "jj" 'avy-goto-word-1)
	    (key-chord-define-global "jl" 'avy-goto-line)
	    (key-chord-define-global "uu" 'undo-tree-visualize)
	    (key-chord-define-global "yy" 'helm-show-kill-ring)))

(provide 'dooz-chords)
