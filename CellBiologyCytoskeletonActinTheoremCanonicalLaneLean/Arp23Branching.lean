import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActInPolymerizationDynamics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure Arp23BranchingPackage {G : ActinPolymerizationPackage} where
  activationByWasp : Prop
  nucleationOfBranch : Prop
  branchAngle : Prop
  filamentNetworkOrganization : Prop

structure Arp23BranchingEvidence {G : ActinPolymerizationPackage} (A : Arp23BranchingPackage A) where
  activationByWaspClosed : A.activationByWasp
  nucleationOfBranchClosed : A.nucleationOfBranch
  branchAngleClosed : A.branchAngle
  filamentNetworkOrganizationClosed : A.filamentNetworkOrganization

def Arp23BranchingClosed {G : ActinPolymerizationPackage} (A : Arp23BranchingPackage A) : Prop :=
  A.activationByWasp ∧ A.nucleationOfBranch ∧ A.branchAngle ∧ A.filamentNetworkOrganization

theorem arp23_branching_closed_from_evidence {G : ActinPolymerizationPackage} (A : Arp23BranchingPackage A) (E : Arp23BranchingEvidence A) :
    Arp23BranchingClosed A := by
  exact And.intro E.activationByWaspClosed (And.intro E.nucleationOfBranchClosed (And.intro E.branchAngleClosed E.filamentNetworkOrganizationClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse
