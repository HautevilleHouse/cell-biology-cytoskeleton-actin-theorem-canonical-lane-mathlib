import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.PolymerizationPDE

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure NucleationPackage {A : ActinFilamentPackage} (P : PolymerizationPDEPackage A) where
  nucleatorPresent : Prop
  nucleationRate : Prop
  arp2_3Complex : Prop
  branching : Prop
  forminMediated : Prop

structure NucleationEvidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} (N : NucleationPackage P) where
  nucleatorPresentClosed : N.nucleatorPresent
  nucleationRateClosed : N.nucleationRate
  arp2_3ComplexClosed : N.arp2_3Complex
  branchingClosed : N.branching
  forminMediatedClosed : N.forminMediated

def NucleationClosed {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} (N : NucleationPackage P) : Prop :=
  N.nucleatorPresent ∧ N.nucleationRate ∧ N.arp2_3Complex ∧ N.branching ∧ N.forminMediated

theorem nucleation_closed_from_evidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} (N : NucleationPackage P) (E : NucleationEvidence N) : NucleationClosed N := by
  exact And.intro E.nucleatorPresentClosed
    (And.intro E.nucleationRateClosed
      (And.intro E.arp2_3ComplexClosed
        (And.intro E.branchingClosed E.forminMediatedClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse