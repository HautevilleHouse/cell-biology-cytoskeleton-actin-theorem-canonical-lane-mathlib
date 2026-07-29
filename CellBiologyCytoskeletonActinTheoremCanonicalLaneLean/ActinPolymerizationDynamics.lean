import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinPolymerizationPackage where
  nucleation : Prop
  elongation : Prop
  criticalConcentration : Prop
  treadmilling : Prop

structure ActinPolymerizationEvidence (P : ActinPolymerizationPackage) where
  nucleationClosed : P.nucleation
  elongationClosed : P.elongation
  criticalConcentrationClosed : P.criticalConcentration
  treadmillingClosed : P.treadmilling

def ActinPolymerizationClosed (P : ActinPolymerizationPackage) : Prop :=
  P.nucleation ∧ P.elongation ∧ P.criticalConcentration ∧ P.treadmilling

theorem actin_polymerization_closed_from_evidence (P : ActinPolymerizationPackage) (E : ActinPolymerizationEvidence P) :
    ActinPolymerizationClosed P := by
  exact And.intro E.nucleationClosed (And.intro E.elongationClosed (And.intro E.criticalConcentrationClosed E.treadmillingClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse
