import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinFilamentPackage where
  monomerType : Type u
  polymerLength : Nat
  polarity : Prop
  plusEndCap : Prop
  minusEndCap : Prop
  monomerBinding : Prop
  monomerRelease : Prop
  filamentFlexibility : Prop

structure ActinFilamentEvidence (A : ActinFilamentPackage) where
  polarityClosed : A.polarity
  plusEndCapClosed : A.plusEndCap
  minusEndCapClosed : A.minusEndCap
  monomerBindingClosed : A.monomerBinding
  monomerReleaseClosed : A.monomerRelease
  filamentFlexibilityClosed : A.filamentFlexibility

def ActinFilamentClosed (A : ActinFilamentPackage) : Prop :=
  A.polarity ∧ A.plusEndCap ∧ A.minusEndCap ∧ A.monomerBinding ∧ A.monomerRelease ∧ A.filamentFlexibility

theorem actin_filament_closed_from_evidence (A : ActinFilamentPackage) (E : ActinFilamentEvidence A) : ActinFilamentClosed A := by
  exact And.intro E.polarityClosed
    (And.intro E.plusEndCapClosed
      (And.intro E.minusEndCapClosed
        (And.intro E.monomerBindingClosed
          (And.intro E.monomerReleaseClosed E.filamentFlexibilityClosed))))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse