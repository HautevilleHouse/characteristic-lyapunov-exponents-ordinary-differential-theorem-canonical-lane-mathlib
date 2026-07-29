import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure OseledetsPackage where
  linearCocycle : Type u → Type u
  integrableCondition : Prop
  lyapunovSpectrumExists : Prop
  measurabilityOfExponents : Prop
  filtrationOfSubspaces : Prop
  multiplicativeErgodicTheorem : Prop
  regularityOfOseledetsSplitting : Prop

structure OseledetsEvidence (O : OseledetsPackage) where
  integrableConditionClosed : O.integrableCondition
  lyapunovSpectrumExistsClosed : O.lyapunovSpectrumExists
  measurabilityOfExponentsClosed : O.measurabilityOfExponents
  filtrationOfSubspacesClosed : O.filtrationOfSubspaces
  multiplicativeErgodicTheoremClosed : O.multiplicativeErgodicTheorem
  regularityOfOseledetsSplittingClosed : O.regularityOfOseledetsSplitting

def OseledetsClosed (O : OseledetsPackage) : Prop :=
  O.integrableCondition ∧ O.lyapunovSpectrumExists ∧ O.measurabilityOfExponents ∧
  O.filtrationOfSubspaces ∧ O.multiplicativeErgodicTheorem ∧ O.regularityOfOseledetsSplitting

theorem oseledets_closed_from_evidence (O : OseledetsPackage) (E : OseledetsEvidence O) :
    OseledetsClosed O := by
  exact And.intro E.integrableConditionClosed
    (And.intro E.lyapunovSpectrumExistsClosed
      (And.intro E.measurabilityOfExponentsClosed
        (And.intro E.filtrationOfSubspacesClosed
          (And.intro E.multiplicativeErgodicTheoremClosed
            E.regularityOfOseledetsSplittingClosed))))

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse