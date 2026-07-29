import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinFilamentNucleationPackage where
  nucleationPhase : Prop
  elongationRate : ℝ
  branchingProbability : ℝ
  cappingProteinActivity : ℝ
  nucleationPhaseEvidence : nucleationPhase
  elongationRatePositive : elongationRate > 0
  branchingProbabilityInUnitInterval : 0 ≤ branchingProbability ∧ branchingProbability ≤ 1
  cappingProteinActivityNonnegative : cappingProteinActivity ≥ 0

structure ActinFilamentNucleationEvidence (P : ActinFilamentNucleationPackage) where
  nucleationPhaseClosed : P.nucleationPhase
  elongationRatePositiveClosed : P.elongationRate > 0
  branchingProbabilityInUnitIntervalClosed : 0 ≤ P.branchingProbability ∧ P.branchingProbability ≤ 1
  cappingProteinActivityNonnegativeClosed : P.cappingProteinActivity ≥ 0

def ActinFilamentNucleationClosed (P : ActinFilamentNucleationPackage) : Prop :=
  P.nucleationPhase ∧ P.elongationRate > 0 ∧ (0 ≤ P.branchingProbability ∧ P.branchingProbability ≤ 1) ∧ P.cappingProteinActivity ≥ 0

theorem actin_filament_nucleation_closed_from_evidence (P : ActinFilamentNucleationPackage) (E : ActinFilamentNucleationEvidence P) : ActinFilamentNucleationClosed P := by
  exact And.intro E.nucleationPhaseClosed
    (And.intro E.elongationRatePositiveClosed
      (And.intro E.branchingProbabilityInUnitIntervalClosed E.cappingProteinActivityNonnegativeClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse