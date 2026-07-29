import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CellularMechanicsActinCortexPackage where
  cortexStiffness : Prop
  contractileForceGeneration : Prop
  cellShapeStability : Prop
  mechanotransductionResponse : Prop
  cortexTurnoverRate : Prop

structure CellularMechanicsActinCortexEvidence (M : CellularMechanicsActinCortexPackage) where
  cortexStiffnessClosed : M.cortexStiffness
  contractileForceGenerationClosed : M.contractileForceGeneration
  cellShapeStabilityClosed : M.cellShapeStability
  mechanotransductionResponseClosed : M.mechanotransductionResponse
  cortexTurnoverRateClosed : M.cortexTurnoverRate

def CellularMechanicsActinCortexClosed (M : CellularMechanicsActinCortexPackage) : Prop :=
  M.cortexStiffness ∧ M.contractileForceGeneration ∧ M.cellShapeStability ∧ M.mechanotransductionResponse ∧ M.cortexTurnoverRate

theorem cellular_mechanics_actin_cortex_closed_from_evidence
    (M : CellularMechanicsActinCortexPackage) (E : CellularMechanicsActinCortexEvidence M) :
    CellularMechanicsActinCortexClosed M := by
  exact And.intro E.cortexStiffnessClosed
    (And.intro E.contractileForceGenerationClosed
      (And.intro E.cellShapeStabilityClosed
        (And.intro E.mechanotransductionResponseClosed E.cortexTurnoverRateClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse