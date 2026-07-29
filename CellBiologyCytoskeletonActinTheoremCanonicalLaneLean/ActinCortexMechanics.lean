import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.Arp23Branching
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.CofilinSevering
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.MyosinMotorActivity

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinCortexMechanicsPackage {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} where
  networkCrosslinking : Prop
  corticalTension : Prop
  cellDeformationResistance : Prop
  mechanosensing : Prop

structure ActinCortexMechanicsEvidence {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} (K : ActinCortexMechanicsPackage K) where
  networkCrosslinkingClosed : K.networkCrosslinking
  corticalTensionClosed : K.corticalTension
  cellDeformationResistanceClosed : K.cellDeformationResistance
  mechanosensingClosed : K.mechanosensing

def ActinCortexMechanicsClosed {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} (K : ActinCortexMechanicsPackage K) : Prop :=
  K.networkCrosslinking ∧ K.corticalTension ∧ K.cellDeformationResistance ∧ K.mechanosensing

theorem actin_cortex_mechanics_closed_from_evidence {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} (K : ActinCortexMechanicsPackage K) (E : ActinCortexMechanicsEvidence K) :
    ActinCortexMechanicsClosed K := by
  exact And.intro E.networkCrosslinkingClosed (And.intro E.corticalTensionClosed (And.intro E.cellDeformationResistanceClosed E.mechanosensingClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse
