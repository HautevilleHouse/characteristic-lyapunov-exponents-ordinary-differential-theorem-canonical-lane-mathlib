import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure RegularityOfExponentsPackage where
  exponentContinuity : Prop
  spectralGaps : Prop
  strongRegularity : Prop
  stableUnstableSplitting : Prop

structure RegularityOfExponentsEvidence (R : RegularityOfExponentsPackage) where
  exponentContinuityClosed : R.exponentContinuity
  spectralGapsClosed : R.spectralGaps
  strongRegularityClosed : R.strongRegularity
  stableUnstableSplittingClosed : R.stableUnstableSplitting

def RegularityOfExponentsClosed (R : RegularityOfExponentsPackage) : Prop :=
  R.exponentContinuity ∧ R.spectralGaps ∧ R.strongRegularity ∧ R.stableUnstableSplitting

theorem regularity_of_exponents_closed_from_evidence (R : RegularityOfExponentsPackage)
    (E : RegularityOfExponentsEvidence R) : RegularityOfExponentsClosed R := by
  exact And.intro E.exponentContinuityClosed
    (And.intro E.spectralGapsClosed
      (And.intro E.strongRegularityClosed E.stableUnstableSplittingClosed))

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse