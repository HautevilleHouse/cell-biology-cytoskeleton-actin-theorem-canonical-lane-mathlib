import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinFilamentPackage where
  gActin : Type u
  fActin : Type v
  atpBindingSite : Type w
  nucleotideState : Type x
  polymerizationRate : Prop
  depolymerizationRate : Prop
  nucleotideHydrolysis : Prop
  filamentPolarity : Prop
  criticalConcentration : Prop

structure ActinFilamentEvidence (A : ActinFilamentPackage) where
  polymerizationRateClosed : A.polymerizationRate
  depolymerizationRateClosed : A.depolymerizationRate
  nucleotideHydrolysisClosed : A.nucleotideHydrolysis
  filamentPolarityClosed : A.filamentPolarity
  criticalConcentrationClosed : A.criticalConcentration

def ActinFilamentClosed (A : ActinFilamentPackage) : Prop :=
  A.polymerizationRate ∧ A.depolymerizationRate ∧ A.nucleotideHydrolysis ∧
  A.filamentPolarity ∧ A.criticalConcentration

theorem actin_filament_closed_from_evidence (A : ActinFilamentPackage) (E : ActinFilamentEvidence A) :
    ActinFilamentClosed A :=
  by
    exact And.intro E.polymerizationRateClosed
      (And.intro E.depolymerizationRateClosed
        (And.intro E.nucleotideHydrolysisClosed
          (And.intro E.filamentPolarityClosed E.criticalConcentrationClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse