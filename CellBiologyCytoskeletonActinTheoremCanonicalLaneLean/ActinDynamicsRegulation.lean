import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.Arp2_3Branching

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinRegulationPackage {A : ActinFilamentPackage} {B : Arp2_3BranchingPackage A} where
  cofilinBinding : Prop
  profilinBinding : Prop
  cappingProtein : Prop
  forminNucleation : Prop
  thymosinBeta4 : Prop
  rhoGtpase : Prop

structure ActinRegulationEvidence {A : ActinFilamentPackage} {B : Arp2_3BranchingPackage A} (R : ActinRegulationPackage A B) where
  cofilinBindingClosed : R.cofilinBinding
  profilinBindingClosed : R.profilinBinding
  cappingProteinClosed : R.cappingProtein
  forminNucleationClosed : R.forminNucleation
  thymosinBeta4Closed : R.thymosinBeta4
  rhoGtpaseClosed : R.rhoGtpase

def ActinRegulationClosed {A : ActinFilamentPackage} {B : Arp2_3BranchingPackage A} (R : ActinRegulationPackage A B) : Prop :=
  R.cofilinBinding ∧ R.profilinBinding ∧ R.cappingProtein ∧ R.forminNucleation ∧ R.thymosinBeta4 ∧ R.rhoGtpase

theorem actin_regulation_closed_from_evidence {A : ActinFilamentPackage} {B : Arp2_3BranchingPackage A} (R : ActinRegulationPackage A B) (E : ActinRegulationEvidence R) :
    ActinRegulationClosed R :=
  by
    exact And.intro E.cofilinBindingClosed
      (And.intro E.profilinBindingClosed
        (And.intro E.cappingProteinClosed
          (And.intro E.forminNucleationClosed
            (And.intro E.thymosinBeta4Closed E.rhoGtpaseClosed))))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse