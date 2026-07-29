import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonActinTheoremCanonicalLaneLean

structure ActinTurnoverPackage where
  treadmillingRate : Prop
  severingProteins : Prop
  cappingProteins : Prop
  monomerSequestration : Prop

structure ActinTurnoverEvidence (T : ActinTurnoverPackage) where
  treadmillingRateClosed : T.treadmillingRate
  severingProteinsClosed : T.severingProteins
  cappingProteinsClosed : T.cappingProteins
  monomerSequestrationClosed : T.monomerSequestration

def ActinTurnoverClosed (T : ActinTurnoverPackage) : Prop :=
  T.treadmillingRate ∧ T.severingProteins ∧ T.cappingProteins ∧ T.monomerSequestration

theorem actin_turnover_closed_from_evidence (T : ActinTurnoverPackage) (E : ActinTurnoverEvidence T) :
    ActinTurnoverClosed T := by
  exact And.intro E.treadmillingRateClosed (And.intro E.severingProteinsClosed (And.intro E.cappingProteinsClosed E.monomerSequestrationClosed))

end CellBiologyCytoskeletonActinTheoremCanonicalLaneLean
end HautevilleHouse