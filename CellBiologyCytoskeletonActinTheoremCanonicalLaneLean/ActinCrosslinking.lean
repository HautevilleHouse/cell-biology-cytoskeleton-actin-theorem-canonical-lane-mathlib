import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinCrosslinkingPackage where
  crosslinkerDensity : Prop
  filamentBundling : Prop
  gelFormation : Prop
  mechanicalStiffness : Prop

structure ActinCrosslinkingEvidence (A : ActinCrosslinkingPackage) where
  crosslinkerDensityClosed : A.crosslinkerDensity
  filamentBundlingClosed : A.filamentBundling
  gelFormationClosed : A.gelFormation
  mechanicalStiffnessClosed : A.mechanicalStiffness

def ActinCrosslinkingClosed (A : ActinCrosslinkingPackage) : Prop :=
  A.crosslinkerDensity ∧ A.filamentBundling ∧ A.gelFormation ∧ A.mechanicalStiffness

theorem actin_crosslinking_closed_from_evidence (A : ActinCrosslinkingPackage) (E : ActinCrosslinkingEvidence A) :
    ActinCrosslinkingClosed A := by
  exact And.intro E.crosslinkerDensityClosed (And.intro E.filamentBundlingClosed (And.intro E.gelFormationClosed E.mechanicalStiffnessClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse