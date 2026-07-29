import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinBindingProteinInteractomePackage where
  crosslinkerProteinBinding : Prop
  sequesteringProteinBuffering : Prop
  motorProteinInteraction : Prop
  membraneLinkerAttachment : Prop
  signalingProteinRecruitment : Prop

structure ActinBindingProteinInteractomeEvidence (I : ActinBindingProteinInteractomePackage) where
  crosslinkerProteinBindingClosed : I.crosslinkerProteinBinding
  sequesteringProteinBufferingClosed : I.sequesteringProteinBuffering
  motorProteinInteractionClosed : I.motorProteinInteraction
  membraneLinkerAttachmentClosed : I.membraneLinkerAttachment
  signalingProteinRecruitmentClosed : I.signalingProteinRecruitment

def ActinBindingProteinInteractomeClosed (I : ActinBindingProteinInteractomePackage) : Prop :=
  I.crosslinkerProteinBinding ∧ I.sequesteringProteinBuffering ∧ I.motorProteinInteraction ∧ I.membraneLinkerAttachment ∧ I.signalingProteinRecruitment

theorem actin_binding_protein_interactome_closed_from_evidence
    (I : ActinBindingProteinInteractomePackage) (E : ActinBindingProteinInteractomeEvidence I) :
    ActinBindingProteinInteractomeClosed I := by
  exact And.intro E.crosslinkerProteinBindingClosed
    (And.intro E.sequesteringProteinBufferingClosed
      (And.intro E.motorProteinInteractionClosed
        (And.intro E.membraneLinkerAttachmentClosed E.signalingProteinRecruitmentClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse