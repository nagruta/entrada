#!/usr/bin/env bqn
soutchars←1⊑•SH⟨"../../a/adhoc","all","--list-hosts"⟩
hostchars←((/"hosts ("⍷⊢)↓⊢)soutchars
hostlines←(@+10)((¬-˜⊢×·+`»⊸>)∘≠⊔⊢)hostchars
•Out >⊑hostlines
{•Out(•Fmt 𝕩)∾>𝕩⊑hostlines}¨1↓↕≠hostlines
•args {0≠≠𝕨 ? (•ParseFloat ⊑𝕨) {(𝕨<≠hostlines)∧0<𝕨 ?
    host←𝕨⊑hostlines
    •Out "SSH to "∾host
    {nopipes⇐1}•SH⟨"../../a/adhoc-ssh",host⟩
  ;
    •Out "usage: $0 [host ordinal shown above for SSH]"
    •Exit 1
  }@;@
}@
