import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinMotorProteinsPackage where
  myosinIIActivity : Prop
  myosinVProcessivity : Prop
  motorVelocity : Prop
  atpaseCycle : Prop
  forceGeneration : Prop
  filamentSliding : Prop

structure ActinMotorProteinsEvidence (M : ActinMotorProteinsPackage) where
  myosinIIActivityClosed : M.myosinIIActivity
  myosinVProcessivityClosed : M.myosinVProcessivity
  motorVelocityClosed : M.motorVelocity
  atpaseCycleClosed : M.atpaseCycle
  forceGenerationClosed : M.forceGeneration
  filamentSlidingClosed : M.filamentSliding

def ActinMotorProteinsClosed (M : ActinMotorProteinsPackage) : Prop :=
  M.myosinIIActivity ∧ M.myosinVProcessivity ∧ M.motorVelocity ∧
  M.atpaseCycle ∧ M.forceGeneration ∧ M.filamentSliding

theorem actin_motor_proteins_closed_from_evidence (M : ActinMotorProteinsPackage)
    (E : ActinMotorProteinsEvidence M) : ActinMotorProteinsClosed M := by
  exact And.intro E.myosinIIActivityClosed
    (And.intro E.myosinVProcessivityClosed
      (And.intro E.motorVelocityClosed
        (And.intro E.atpaseCycleClosed
          (And.intro E.forceGenerationClosed E.filamentSlidingClosed))))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse