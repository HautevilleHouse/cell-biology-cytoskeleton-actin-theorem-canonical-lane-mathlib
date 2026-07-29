import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinCytoskeletonDiseaseMechanismsPackage where
  metastaticInvasionActinDynamics : Prop
  muscularDystrophyCytoskeletalDefects : Prop
  neurodegenerativeActinopathy : Prop
  pathogenSubversionActinCytoskeleton : Prop
  developmentalDisordersActinMutations : Prop

structure ActinCytoskeletonDiseaseMechanismsEvidence (D : ActinCytoskeletonDiseaseMechanismsPackage) where
  metastaticInvasionActinDynamicsClosed : D.metastaticInvasionActinDynamics
  muscularDystrophyCytoskeletalDefectsClosed : D.muscularDystrophyCytoskeletalDefects
  neurodegenerativeActinopathyClosed : D.neurodegenerativeActinopathy
  pathogenSubversionActinCytoskeletonClosed : D.pathogenSubversionActinCytoskeleton
  developmentalDisordersActinMutationsClosed : D.developmentalDisordersActinMutations

def ActinCytoskeletonDiseaseMechanismsClosed (D : ActinCytoskeletonDiseaseMechanismsPackage) : Prop :=
  D.metastaticInvasionActinDynamics ∧ D.muscularDystrophyCytoskeletalDefects ∧ D.neurodegenerativeActinopathy ∧ D.pathogenSubversionActinCytoskeleton ∧ D.developmentalDisordersActinMutations

theorem actin_cytoskeleton_disease_mechanisms_closed_from_evidence
    (D : ActinCytoskeletonDiseaseMechanismsPackage) (E : ActinCytoskeletonDiseaseMechanismsEvidence D) :
    ActinCytoskeletonDiseaseMechanismsClosed D := by
  exact And.intro E.metastaticInvasionActinDynamicsClosed
    (And.intro E.muscularDystrophyCytoskeletalDefectsClosed
      (And.intro E.neurodegenerativeActinopathyClosed
        (And.intro E.pathogenSubversionActinCytoskeletonClosed E.developmentalDisordersActinMutationsClosed)))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse