import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinRegulatoryNetworkPackage where
  rhoGTPaseActivation : Prop
  arp23ComplexNucleation : Prop
  forminMediatedElongation : Prop
  cofilinSevering : Prop
  cappingProteinRegulation : Prop

structure ActinRegulatoryNetworkEvidence (N : ActinRegulatoryNetworkPackage) where
  rhoGTPaseActivationClosed : N.rhoGTPaseActivation
  arp23ComplexNucleationClosed : N.arp23ComplexNucleation
  forminMediatedElongationClosed : N.forminMediatedElongation
  cofilinSeveringClosed : N.cofilinSevering
  cappingProteinRegulationClosed : N.cappingProteinRegulation

def ActinRegulatoryNetworkClosed (N : ActinRegulatoryNetworkPackage) : Prop :=
  N.rhoGTPaseActivation ∧ N.arp23ComplexNucleation ∧ N.forminMediatedElongation ∧ N.cofilinSevering ∧ N.cappingProteinRegulation

theorem actin_regulatory_network_closed_from_evidence
    (N : ActinRegulatoryNetworkPackage) (E : ActinRegulatoryNetworkEvidence N) :
    ActinRegulatoryNetworkClosed N := by
  exact And.intro E.rhoGTPaseActivationClosed
    (And.intro E.arp23ComplexNucleationClosed
      (And.intro E.forminMediatedElongationClosed
        (And.intro E.cofilinSeveringClosed E.cappingProteinRegulationClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse