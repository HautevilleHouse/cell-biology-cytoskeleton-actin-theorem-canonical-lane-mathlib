import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonActinTheoremCanonicalLaneLean.ActInPolymerizationDynamics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure CofilinSeveringPackage {G : ActinPolymerizationPackage} where
  adfCofilinBinding : Prop
  filamentSevering : Prop
  actinDepolymerization : Prop
  turnoverRegulation : Prop

structure CofilinSeveringEvidence {G : ActinPolymerizationPackage} (C : CofilinSeveringPackage C) where
  adfCofilinBindingClosed : C.adfCofilinBinding
  filamentSeveringClosed : C.filamentSevering
  actinDepolymerizationClosed : C.actinDepolymerization
  turnoverRegulationClosed : C.turnoverRegulation

def CofilinSeveringClosed {G : ActinPolymerizationPackage} (C : CofilinSeveringPackage C) : Prop :=
  C.adfCofilinBinding ∧ C.filamentSevering ∧ C.actinDepolymerization ∧ C.turnoverRegulation

theorem cofilin_severing_closed_from_evidence {G : ActinPolymerizationPackage} (C : CofilinSeveringPackage C) (E : CofilinSeveringEvidence C) :
    CofilinSeveringClosed C := by
  exact And.intro E.adfCofilinBindingClosed (And.intro E.filamentSeveringClosed (And.intro E.actinDepolymerizationClosed E.turnoverRegulationClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse
