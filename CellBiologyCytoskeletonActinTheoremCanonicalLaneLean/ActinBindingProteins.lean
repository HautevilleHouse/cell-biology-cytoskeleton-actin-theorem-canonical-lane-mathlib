import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinBindingProteinsPackage where
  cofilinBinding : Prop
  profilinBinding : Prop
  arp2_3Complex : Prop
  cappingProtein : Prop
  crosslinkingProtein : Prop

structure ActinBindingProteinsEvidence (B : ActinBindingProteinsPackage) where
  cofilinBindingClosed : B.cofilinBinding
  profilinBindingClosed : B.profilinBinding
  arp2_3ComplexClosed : B.arp2_3Complex
  cappingProteinClosed : B.cappingProtein
  crosslinkingProteinClosed : B.crosslinkingProtein

def ActinBindingProteinsClosed (B : ActinBindingProteinsPackage) : Prop :=
  B.cofilinBinding ∧ B.profilinBinding ∧ B.arp2_3Complex ∧
  B.cappingProtein ∧ B.crosslinkingProtein

theorem actin_binding_proteins_closed_from_evidence (B : ActinBindingProteinsPackage)
    (E : ActinBindingProteinsEvidence B) : ActinBindingProteinsClosed B := by
  exact And.intro E.cofilinBindingClosed
    (And.intro E.profilinBindingClosed
      (And.intro E.arp2_3ComplexClosed
        (And.intro E.cappingProteinClosed E.crosslinkingProteinClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse