import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActinMotorProtein
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActinDynamicsRegulation

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinNetworkMechanicsPackage {A : ActinFilamentPackage}
    {B : Arp2_3BranchingPackage A} {M : MyosinMotorPackage A}
    {R : ActinRegulationPackage A B} where
  networkElasticity : Prop
  crosslinking : Prop
  contractility : Prop
  protrusionForce : Prop
  networkTurnover : Prop

structure ActinNetworkMechanicsEvidence {A : ActinFilamentPackage}
    {B : Arp2_3BranchingPackage A} {M : MyosinMotorPackage A}
    {R : ActinRegulationPackage A B} (N : ActinNetworkMechanicsPackage A B M R) where
  networkElasticityClosed : N.networkElasticity
  crosslinkingClosed : N.crosslinking
  contractilityClosed : N.contractility
  protrusionForceClosed : N.protrusionForce
  networkTurnoverClosed : N.networkTurnover

def ActinNetworkMechanicsClosed {A : ActinFilamentPackage}
    {B : Arp2_3BranchingPackage A} {M : MyosinMotorPackage A}
    {R : ActinRegulationPackage A B} (N : ActinNetworkMechanicsPackage A B M R) : Prop :=
  N.networkElasticity ∧ N.crosslinking ∧ N.contractility ∧ N.protrusionForce ∧ N.networkTurnover

theorem actin_network_mechanics_closed_from_evidence {A : ActinFilamentPackage}
    {B : Arp2_3BranchingPackage A} {M : MyosinMotorPackage A}
    {R : ActinRegulationPackage A B} (N : ActinNetworkMechanicsPackage A B M R)
    (E : ActinNetworkMechanicsEvidence N) : ActinNetworkMechanicsClosed N :=
  by
    exact And.intro E.networkElasticityClosed
      (And.intro E.crosslinkingClosed
        (And.intro E.contractilityClosed
          (And.intro E.protrusionForceClosed E.networkTurnoverClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse