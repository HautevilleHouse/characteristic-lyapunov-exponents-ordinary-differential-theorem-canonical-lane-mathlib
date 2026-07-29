import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovRegularityPackage where
  exponentialGrowthRates : Type u → Type u
  forwardBackwardSpectra : Prop
  lyapunovExponentDefinition : Prop
  measurabilityOfExponentMap : Prop
  exponentBounds : Prop
  regularityOfOseledetsSplitting : Prop

structure LyapunovRegularityEvidence (R : LyapunovRegularityPackage) where
  lyapunovExponentDefinitionClosed : R.lyapunovExponentDefinition
  measurabilityOfExponentMapClosed : R.measurabilityOfExponentMap
  exponentBoundsClosed : R.exponentBounds
  regularityOfOseledetsSplittingClosed : R.regularityOfOseledetsSplitting

def LyapunovRegularityClosed (R : LyapunovRegularityPackage) : Prop :=
  R.lyapunovExponentDefinition ∧ R.measurabilityOfExponentMap ∧
  R.exponentBounds ∧ R.regularityOfOseledetsSplitting

theorem lyapunov_regularity_closed_from_evidence (R : LyapunovRegularityPackage) (E : LyapunovRegularityEvidence R) :
    LyapunovRegularityClosed R := by
  exact And.intro E.lyapunovExponentDefinitionClosed
    (And.intro E.measurabilityOfExponentMapClosed
      (And.intro E.exponentBoundsClosed E.regularityOfOseledetsSplittingClosed))

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse