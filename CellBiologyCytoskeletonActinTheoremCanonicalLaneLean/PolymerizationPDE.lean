import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActinFilamentPackage

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure PolymerizationPDEPackage (A : ActinFilamentPackage) where
  polymerizationRate : Type u
  depolymerizationRate : Type v
  criticalConcentration : Prop
  treadmillingRate : Prop
  atpHydrolysis : Prop
  profilinEffect : Prop

structure PolymerizationPDEEvidence {A : ActinFilamentPackage} (P : PolymerizationPDEPackage A) where
  criticalConcentrationClosed : P.criticalConcentration
  treadmillingRateClosed : P.treadmillingRate
  atpHydrolysisClosed : P.atpHydrolysis
  profilinEffectClosed : P.profilinEffect

def PolymerizationPDEClosed {A : ActinFilamentPackage} (P : PolymerizationPDEPackage A) : Prop :=
  P.criticalConcentration ∧ P.treadmillingRate ∧ P.atpHydrolysis ∧ P.profilinEffect

theorem polymerization_pde_closed_from_evidence {A : ActinFilamentPackage} (P : PolymerizationPDEPackage A) (E : PolymerizationPDEEvidence P) : PolymerizationPDEClosed P := by
  exact And.intro E.criticalConcentrationClosed
    (And.intro E.treadmillingRateClosed
      (And.intro E.atpHydrolysisClosed E.profilinEffectClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse