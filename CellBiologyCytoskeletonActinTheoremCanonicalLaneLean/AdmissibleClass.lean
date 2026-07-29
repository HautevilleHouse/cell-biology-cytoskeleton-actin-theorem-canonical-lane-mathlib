import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure AdmittedObject where
  actinFilamentDynamics : ActinFilamentNucleationPackage
  polymerizationThermodynamics : ActinPolymerizationThermodynamicsPackage
  crosslinking : CytoskeletalCrosslinkingPackage
  cellMotilityOutput : Prop
  motilityDependsOnActin : cellMotilityOutput → (ActinFilamentNucleationPackage × ActinPolymerizationThermodynamicsPackage × CytoskeletalCrosslinkingPackage)

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (ActinFilamentNucleationClosed A.object.actinFilamentDynamics ∧
   ActinPolymerizationThermodynamicsClosed A.object.polymerizationThermodynamics ∧
   CytoskeletalCrosslinkingClosed A.object.crosslinking) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse