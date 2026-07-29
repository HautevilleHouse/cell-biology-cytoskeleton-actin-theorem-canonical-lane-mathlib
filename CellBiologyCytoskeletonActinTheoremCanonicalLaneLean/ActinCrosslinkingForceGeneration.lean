import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinCrosslinkingPackage where
  crosslinkerType : Type
  bindingAffinity : ℝ
  unbindingRate : ℝ
  crosslinkStiffness : ℝ
  forceGenerationRate : ℝ
  networkElasticity : ℝ

structure ActinCrosslinkingEvidence (C : ActinCrosslinkingPackage) where
  bindingAffinityPositive : C.bindingAffinity > 0
  unbindingRateNonnegative : C.unbindingRate ≥ 0
  crosslinkStiffnessPositive : C.crosslinkStiffness > 0
  forceGenerationRatePositive : C.forceGenerationRate > 0
  networkElasticityPositive : C.networkElasticity > 0

def ActinCrosslinkingClosed (C : ActinCrosslinkingPackage) : Prop :=
  C.bindingAffinity > 0 ∧ C.unbindingRate ≥ 0 ∧
  C.crosslinkStiffness > 0 ∧ C.forceGenerationRate > 0 ∧
  C.networkElasticity > 0

theorem actin_crosslinking_closed_from_evidence
    (C : ActinCrosslinkingPackage) (E : ActinCrosslinkingEvidence C) :
    ActinCrosslinkingClosed C :=
by
  exact And.intro E.bindingAffinityPositive
    (And.intro E.unbindingRateNonnegative
      (And.intro E.crosslinkStiffnessPositive
        (And.intro E.forceGenerationRatePositive E.networkElasticityPositive)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse