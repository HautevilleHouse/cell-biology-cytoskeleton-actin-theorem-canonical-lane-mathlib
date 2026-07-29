import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinPolymerizationPackage where
  monomerPool : Type u
  nucleationRate : Prop
  elongationRate : Prop
  depolymerizationRate : Prop
  criticalConcentration : Prop

structure ActinPolymerizationEvidence (A : ActinPolymerizationPackage) where
  nucleationRateClosed : A.nucleationRate
  elongationRateClosed : A.elongationRate
  depolymerizationRateClosed : A.depolymerizationRate
  criticalConcentrationClosed : A.criticalConcentration

def ActinPolymerizationClosed (A : ActinPolymerizationPackage) : Prop :=
  A.nucleationRate ∧ A.elongationRate ∧ A.depolymerizationRate ∧ A.criticalConcentration

theorem actin_polymerization_closed_from_evidence (A : ActinPolymerizationPackage) (E : ActinPolymerizationEvidence A) :
    ActinPolymerizationClosed A := by
  exact And.intro E.nucleationRateClosed (And.intro E.elongationRateClosed (And.intro E.depolymerizationRateClosed E.criticalConcentrationClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse