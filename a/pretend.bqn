#!/usr/bin/env bqn
OutSH←{•Out¨(0≠≠¨)⊸/1↓•SH𝕩}
•args {0≠≠𝕨 ? OutSH⟨"../../a/subplay"⟩∾𝕨∾⟨"--check","--diff"⟩ ;
  •Import "play.bqn"
}@
