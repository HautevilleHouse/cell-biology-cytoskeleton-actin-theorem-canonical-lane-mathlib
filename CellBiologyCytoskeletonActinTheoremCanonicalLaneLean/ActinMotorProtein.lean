import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.CytoskeletonActinFilaments

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure MyosinMotorPackage {A : ActinFilamentPackage} where
  atpaseDomain : Prop
  powerStroke : Prop
  stepSize : Prop
  processivity : Prop
  forceGeneration : Prop

structure MyosinMotorEvidence {A : ActinFilamentPackage} (M : MyosinMotorPackage A) where
  atpaseDomainClosed : M.atpaseDomain
  powerStrokeClosed : M.powerStroke
  stepSizeClosed : M.stepSize
  processivityClosed : M.processivity
  forceGenerationClosed : M.forceGeneration

def MyosinMotorClosed {A : ActinFilamentPackage} (M : MyosinMotorPackage A) : Prop :=
  M.atpaseDomain ∧ M.powerStroke ∧ M.stepSize ∧ M.processivity ∧ M.forceGeneration

theorem myosin_motor_closed_from_evidence {A : ActinFilamentPackage} (M : MyosinMotorPackage A) (E : MyosinMotorEvidence M) :
    MyosinMotorClosed M :=
  by
    exact And.intro E.atpaseDomainClosed
      (And.intro E.powerStrokeClosed
        (And.intro E.stepSizeClosed
          (And.intro E.processivityClosed E.forceGenerationClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse