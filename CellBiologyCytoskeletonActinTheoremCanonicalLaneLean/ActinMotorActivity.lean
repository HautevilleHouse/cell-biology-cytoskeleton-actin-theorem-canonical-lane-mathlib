import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinMotorActivityPackage where
  motorProteinType : Type u
  atpHydrolysis : Prop
  processivity : Prop
  directionalMovement : Prop
  forceGeneration : Prop

structure ActinMotorActivityEvidence (M : ActinMotorActivityPackage) where
  atpHydrolysisClosed : M.atpHydrolysis
  processivityClosed : M.processivity
  directionalMovementClosed : M.directionalMovement
  forceGenerationClosed : M.forceGeneration

def ActinMotorActivityClosed (M : ActinMotorActivityPackage) : Prop :=
  M.atpHydrolysis ∧ M.processivity ∧ M.directionalMovement ∧ M.forceGeneration

theorem actin_motor_activity_closed_from_evidence (M : ActinMotorActivityPackage) (E : ActinMotorActivityEvidence M) :
    ActinMotorActivityClosed M := by
  exact And.intro E.atpHydrolysisClosed (And.intro E.processivityClosed (And.intro E.directionalMovementClosed E.forceGenerationClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse