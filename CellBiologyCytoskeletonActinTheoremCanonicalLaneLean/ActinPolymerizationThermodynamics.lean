import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinPolymerizationThermodynamicsPackage where
  criticalConcentration : ℝ
  polymerizationRate : ℝ
  depolymerizationRate : ℝ
  atpHydrolysisCoupling : Prop
  criticalConcentrationPositive : criticalConcentration > 0
  polymerizationRatePositive : polymerizationRate > 0
  depolymerizationRatePositive : depolymerizationRate > 0
  atpHydrolysisCouplingEvidence : atpHydrolysisCoupling

structure ActinPolymerizationThermodynamicsEvidence (P : ActinPolymerizationThermodynamicsPackage) where
  criticalConcentrationPositiveClosed : P.criticalConcentration > 0
  polymerizationRatePositiveClosed : P.polymerizationRate > 0
  depolymerizationRatePositiveClosed : P.depolymerizationRate > 0
  atpHydrolysisCouplingClosed : P.atpHydrolysisCoupling

def ActinPolymerizationThermodynamicsClosed (P : ActinPolymerizationThermodynamicsPackage) : Prop :=
  P.criticalConcentration > 0 ∧ P.polymerizationRate > 0 ∧ P.depolymerizationRate > 0 ∧ P.atpHydrolysisCoupling

theorem actin_polymerization_thermodynamics_closed_from_evidence (P : ActinPolymerizationThermodynamicsPackage) (E : ActinPolymerizationThermodynamicsEvidence P) : ActinPolymerizationThermodynamicsClosed P := by
  exact And.intro E.criticalConcentrationPositiveClosed
    (And.intro E.polymerizationRatePositiveClosed
      (And.intro E.depolymerizationRatePositiveClosed E.atpHydrolysisCouplingClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse