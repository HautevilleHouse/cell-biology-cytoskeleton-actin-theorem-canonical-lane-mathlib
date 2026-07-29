import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.NucleationEvidence

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure TreadmillingBalancePackage {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} where
  plusEndNetGrowth : Prop
  minusEndNetShrink : Prop
  criticalConcentrationBound : Prop
  nucleotideState : Prop

structure TreadmillingBalanceEvidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} (T : TreadmillingBalancePackage N) where
  plusEndNetGrowthClosed : T.plusEndNetGrowth
  minusEndNetShrinkClosed : T.minusEndNetShrink
  criticalConcentrationBoundClosed : T.criticalConcentrationBound
  nucleotideStateClosed : T.nucleotideState

def TreadmillingBalanceClosed {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} (T : TreadmillingBalancePackage N) : Prop :=
  T.plusEndNetGrowth ∧ T.minusEndNetShrink ∧ T.criticalConcentrationBound ∧ T.nucleotideState

theorem treadmilling_balance_closed_from_evidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} (T : TreadmillingBalancePackage N) (E : TreadmillingBalanceEvidence T) : TreadmillingBalanceClosed T := by
  exact And.intro E.plusEndNetGrowthClosed
    (And.intro E.minusEndNetShrinkClosed
      (And.intro E.criticalConcentrationBoundClosed E.nucleotideStateClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse