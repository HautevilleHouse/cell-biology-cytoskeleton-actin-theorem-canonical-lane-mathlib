import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActinCortexMechanics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CellMigrationPackage {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} {K : ActinCortexMechanicsPackage K} where
  lamellipodiumProtrusion : Prop
  focalAdhesionDynamics : Prop
  cellBodyTranslocation : Prop
  trailingEdgeRetraction : Prop

structure CellMigrationEvidence {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} {K : ActinCortexMechanicsPackage K} (R : CellMigrationPackage R) where
  lamellipodiumProtrusionClosed : R.lamellipodiumProtrusion
  focalAdhesionDynamicsClosed : R.focalAdhesionDynamics
  cellBodyTranslocationClosed : R.cellBodyTranslocation
  trailingEdgeRetractionClosed : R.trailingEdgeRetraction

def CellMigrationClosed {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} {K : ActinCortexMechanicsPackage K} (R : CellMigrationPackage R) : Prop :=
  R.lamellipodiumProtrusion ∧ R.focalAdhesionDynamics ∧ R.cellBodyTranslocation ∧ R.trailingEdgeRetraction

theorem cell_migration_closed_from_evidence {G : ActinPolymerizationPackage} {A : Arp23BranchingPackage G} {C : CofilinSeveringPackage G} {M : MyosinMotorActivityPackage G} {K : ActinCortexMechanicsPackage K} (R : CellMigrationPackage R) (E : CellMigrationEvidence R) :
    CellMigrationClosed R := by
  exact And.intro E.lamellipodiumProtrusionClosed (And.intro E.focalAdhesionDynamicsClosed (And.intro E.cellBodyTranslocationClosed E.trailingEdgeRetractionClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse
