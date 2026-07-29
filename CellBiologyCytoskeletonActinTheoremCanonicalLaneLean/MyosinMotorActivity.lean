import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActInPolymerizationDynamics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure MyosinMotorActivityPackage {G : ActinPolymerizationPackage} where
  atpHydrolysis : Prop
  actinBinding : Prop
  powerStroke : Prop
  filamentSliding : Prop

structure MyosinMotorActivityEvidence {G : ActinPolymerizationPackage} (M : MyosinMotorActivityPackage M) where
  atpHydrolysisClosed : M.atpHydrolysis
  actinBindingClosed : M.actinBinding
  powerStrokeClosed : M.powerStroke
  filamentSlidingClosed : M.filamentSliding

def MyosinMotorActivityClosed {G : ActinPolymerizationPackage} (M : MyosinMotorActivityPackage M) : Prop :=
  M.atpHydrolysis ∧ M.actinBinding ∧ M.powerStroke ∧ M.filamentSliding

theorem myosin_motor_activity_closed_from_evidence {G : ActinPolymerizationPackage} (M : MyosinMotorActivityPackage M) (E : MyosinMotorActivityEvidence M) :
    MyosinMotorActivityClosed M := by
  exact And.intro E.atpHydrolysisClosed (And.intro E.actinBindingClosed (And.intro E.powerStrokeClosed E.filamentSlidingClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse
