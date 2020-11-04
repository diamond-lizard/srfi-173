(module srfi-173
    (
     hook?
     hook->list
     hook-add!
     hook-delete!
     hook-reset!
     hook-run
     list->hook
     list->hook!
     make-hook
     )

  (import scheme)
  (import (chicken base))
  (import (chicken platform))

  (register-feature! 'srfi-173)

  (include "hook.body.scm"))
