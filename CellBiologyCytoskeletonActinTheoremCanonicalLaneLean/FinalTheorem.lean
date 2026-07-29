import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.BridgeLemmas
import CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

def ConstrainedActinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_actin_endgame (A : AdmissibleClass) :
    ConstrainedActinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse