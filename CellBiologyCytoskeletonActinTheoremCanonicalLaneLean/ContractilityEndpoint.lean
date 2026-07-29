import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.CrosslinkingTopology

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ContractilityEndpointPackage {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} {C : CrosslinkingTopologyPackage T} where
  stressFiberFormation : Prop
  focalAdhesion : Prop
  myosinIIActivity : Prop
  contractileForce : Prop

structure ContractilityEndpointEvidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} {C : CrosslinkingTopologyPackage T} (E : ContractilityEndpointPackage C) where
  stressFiberFormationClosed : E.stressFiberFormation
  focalAdhesionClosed : E.focalAdhesion
  myosinIIActivityClosed : E.myosinIIActivity
  contractileForceClosed : E.contractileForce

def ContractilityEndpointClosed {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} {C : CrosslinkingTopologyPackage T} (E : ContractilityEndpointPackage C) : Prop :=
  E.stressFiberFormation ∧ E.focalAdhesion ∧ E.myosinIIActivity ∧ E.contractileForce

theorem contractility_endpoint_closed_from_evidence {A : ActinFilamentPackage} {P : PolymerizationPDEPackage A} {N : NucleationPackage P} {T : TreadmillingBalancePackage N} {C : CrosslinkingTopologyPackage T} (E : ContractilityEndpointPackage C) (Ev : ContractilityEndpointEvidence E) : ContractilityEndpointClosed E := by
  exact And.intro Ev.stressFiberFormationClosed
    (And.intro Ev.focalAdhesionClosed
      (And.intro Ev.myosinIIActivityClosed Ev.contractileForceClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse