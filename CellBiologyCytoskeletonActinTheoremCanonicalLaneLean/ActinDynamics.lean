import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinDynamicsPackage where
  polymerizationRate : Prop
  depolymerizationRate : Prop
  treadmillingPhenomenon : Prop
  monomerConcentration : Prop
  criticalConcentration : Prop
  atpHydrolysisCoupling : Prop

structure ActinDynamicsEvidence (A : ActinDynamicsPackage) where
  polymerizationRateClosed : A.polymerizationRate
  depolymerizationRateClosed : A.depolymerizationRate
  treadmillingPhenomenonClosed : A.treadmillingPhenomenon
  monomerConcentrationClosed : A.monomerConcentration
  criticalConcentrationClosed : A.criticalConcentration
  atpHydrolysisCouplingClosed : A.atpHydrolysisCoupling

def ActinDynamicsClosed (A : ActinDynamicsPackage) : Prop :=
  A.polymerizationRate ∧ A.depolymerizationRate ∧ A.treadmillingPhenomenon ∧
  A.monomerConcentration ∧ A.criticalConcentration ∧ A.atpHydrolysisCoupling

theorem actin_dynamics_closed_from_evidence (A : ActinDynamicsPackage)
    (E : ActinDynamicsEvidence A) : ActinDynamicsClosed A := by
  exact And.intro E.polymerizationRateClosed
    (And.intro E.depolymerizationRateClosed
      (And.intro E.treadmillingPhenomenonClosed
        (And.intro E.monomerConcentrationClosed
          (And.intro E.criticalConcentrationClosed E.atpHydrolysisCouplingClosed))))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse