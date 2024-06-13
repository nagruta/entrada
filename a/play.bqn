#!/usr/bin/env bqn
OutSH←{•Out¨(0≠≠¨)⊸/1↓•SH𝕩}
•args {0≠≠𝕨 ? OutSH⟨"../../a/subplay"⟩∾𝕨 ;
  p←"apb-" ⋄ s←".yml"
  •Out "usage: $0 <playbook name between "∾p∾"???"∾s∾"> [args]"
  •Out "..available playbook names:"
  Prefixed←{∧´(↕≠𝕨)=(≠𝕨)↑𝕨⊐𝕩}
  Suffixed←{(⌽𝕨)Prefixed⌽𝕩}
  (•Out("    "∾(-≠s)↓(≠p)↓⊢))¨(((p Prefixed⊢)∧(s Suffixed⊢))¨/⊢)∧•file.List•wdpath
  •Exit 1
}@
