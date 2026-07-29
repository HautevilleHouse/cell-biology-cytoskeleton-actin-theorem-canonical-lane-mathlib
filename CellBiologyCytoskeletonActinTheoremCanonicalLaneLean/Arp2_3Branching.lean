import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.CytoskeletonActinFilaments

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure Arp2_3BranchingPackage {A : ActinFilamentPackage} where
  arp2_3Complex : Prop
  nucleationSeed : Prop
  branchAngle : Prop
  branchRate : Prop
  monomerBinding : Prop

structure Arp2_3BranchingEvidence {A : ActinFilamentPackage} (B : Arp2_3BranchingPackage A) where
  arp2_3ComplexClosed : B.arp2_3Complex
  nucleationSeedClosed : B.nucleationSeed
  branchAngleClosed : B.branchAngle
  branchRateClosed : B.branchRate
  monomerBindingClosed : B.monomerBinding

def Arp2_3BranchingClosed {A : ActinFilamentPackage} (B : Arp2_3BranchingPackage A) : Prop :=
  B.arp2_3Complex ∧ B.nucleationSeed ∧ B.branchAngle ∧ B.branchRate ∧ B.monomerBinding

theorem arp2_3_branching_closed_from_evidence {A : ActinFilamentPackage} (B : Arp2_3BranchingPackage A) (E : Arp2_3BranchingEvidence B) :
    Arp2_3BranchingClosed B :=
  by
    exact And.intro E.arp2_3ComplexClosed
      (And.intro E.nucleationSeedClosed
        (And.intro E.branchAngleClosed
          (And.intro E.branchRateClosed E.monomerBindingClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse