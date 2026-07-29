import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.TreadmillingBalance

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CrosslinkingTopologyPackage {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} where
  crosslinkerPresent : Prop
  bundling : Prop
  networkFormation : Prop
  actomyosinContractility : Prop

structure CrosslinkingTopologyEvidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} (C : CrosslinkingTopologyPackage T) where
  crosslinkerPresentClosed : C.crosslinkerPresent
  bundlingClosed : C.bundling
  networkFormationClosed : C.networkFormation
  actomyosinContractilityClosed : C.actomyosinContractility

def CrosslinkingTopologyClosed {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} (C : CrosslinkingTopologyPackage T) : Prop :=
  C.crosslinkerPresent ∧ C.bundling ∧ C.networkFormation ∧ C.actomyosinContractility

theorem crosslinking_topology_closed_from_evidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} (C : CrosslinkingTopologyPackage T) (E : CrosslinkingTopologyEvidence C) : CrosslinkingTopologyClosed C := by
  exact And.intro E.crosslinkerPresentClosed
    (And.intro E.bundlingClosed
      (And.intro E.networkFormationClosed E.actomyosinContractilityClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse