import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CytoskeletonNetworkPackage where
  filamentNetwork : Prop
  crosslinkDensity : Prop
  meshSize : Prop
  stiffness : Prop
  contractility : Prop
  networkRemodeling : Prop

structure CytoskeletonNetworkEvidence (N : CytoskeletonNetworkPackage) where
  filamentNetworkClosed : N.filamentNetwork
  crosslinkDensityClosed : N.crosslinkDensity
  meshSizeClosed : N.meshSize
  stiffnessClosed : N.stiffness
  contractilityClosed : N.contractility
  networkRemodelingClosed : N.networkRemodeling

def CytoskeletonNetworkClosed (N : CytoskeletonNetworkPackage) : Prop :=
  N.filamentNetwork ∧ N.crosslinkDensity ∧ N.meshSize ∧
  N.stiffness ∧ N.contractility ∧ N.networkRemodeling

theorem cytoskeleton_network_closed_from_evidence (N : CytoskeletonNetworkPackage)
    (E : CytoskeletonNetworkEvidence N) : CytoskeletonNetworkClosed N := by
  exact And.intro E.filamentNetworkClosed
    (And.intro E.crosslinkDensityClosed
      (And.intro E.meshSizeClosed
        (And.intro E.stiffnessClosed
          (And.intro E.contractilityClosed E.networkRemodelingClosed))))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse