import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CellMotilityPackage where
  lamellipodiumProtrusion : Prop
  focalAdhesionDynamics : Prop
  actinPolymerizationForce : Prop
  membraneTension : Prop
  cellBodyRetraction : Prop
  chemotaxisGuidance : Prop

structure CellMotilityEvidence (M : CellMotilityPackage) where
  lamellipodiumProtrusionClosed : M.lamellipodiumProtrusion
  focalAdhesionDynamicsClosed : M.focalAdhesionDynamics
  actinPolymerizationForceClosed : M.actinPolymerizationForce
  membraneTensionClosed : M.membraneTension
  cellBodyRetractionClosed : M.cellBodyRetraction
  chemotaxisGuidanceClosed : M.chemotaxisGuidance

def CellMotilityClosed (M : CellMotilityPackage) : Prop :=
  M.lamellipodiumProtrusion ∧ M.focalAdhesionDynamics ∧
  M.actinPolymerizationForce ∧ M.membraneTension ∧
  M.cellBodyRetraction ∧ M.chemotaxisGuidance

theorem cell_motility_closed_from_evidence (M : CellMotilityPackage)
    (E : CellMotilityEvidence M) : CellMotilityClosed M := by
  exact And.intro E.lamellipodiumProtrusionClosed
    (And.intro E.focalAdhesionDynamicsClosed
      (And.intro E.actinPolymerizationForceClosed
        (And.intro E.membraneTensionClosed
          (And.intro E.cellBodyRetractionClosed E.chemotaxisGuidanceClosed))))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse