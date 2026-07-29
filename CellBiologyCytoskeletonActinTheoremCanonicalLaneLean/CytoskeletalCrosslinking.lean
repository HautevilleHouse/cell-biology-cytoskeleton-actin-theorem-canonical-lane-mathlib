import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CytoskeletalCrosslinkingPackage where
  crosslinkerProteinConcentration : ℝ
  filamentBindingAffinity : ℝ
  crosslinkAngleDistribution : Type u
  networkElasticModulus : ℝ
  crosslinkerProteinConcentrationNonnegative : crosslinkerProteinConcentration ≥ 0
  filamentBindingAffinityPositive : filamentBindingAffinity > 0
  networkElasticModulusPositive : networkElasticModulus > 0

structure CytoskeletalCrosslinkingEvidence (C : CytoskeletalCrosslinkingPackage) where
  crosslinkerProteinConcentrationNonnegativeClosed : C.crosslinkerProteinConcentration ≥ 0
  filamentBindingAffinityPositiveClosed : C.filamentBindingAffinity > 0
  networkElasticModulusPositiveClosed : C.networkElasticModulus > 0

def CytoskeletalCrosslinkingClosed (C : CytoskeletalCrosslinkingPackage) : Prop :=
  C.crosslinkerProteinConcentration ≥ 0 ∧ C.filamentBindingAffinity > 0 ∧ C.networkElasticModulus > 0

theorem cytoskeletal_crosslinking_closed_from_evidence (C : CytoskeletalCrosslinkingPackage) (E : CytoskeletalCrosslinkingEvidence C) : CytoskeletalCrosslinkingClosed C := by
  exact And.intro E.crosslinkerProteinConcentrationNonnegativeClosed
    (And.intro E.filamentBindingAffinityPositiveClosed E.networkElasticModulusPositiveClosed)

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse