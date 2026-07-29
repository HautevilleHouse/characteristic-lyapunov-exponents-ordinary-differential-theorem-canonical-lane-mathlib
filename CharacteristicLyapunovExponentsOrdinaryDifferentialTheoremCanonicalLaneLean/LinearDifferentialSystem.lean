import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LinearDifferentialSystemPackage where
  matrixFlow : Type u
  fundamentalSolution : Prop
  variationalEquation : Prop
  integrabilityCondition : Prop

structure LinearDifferentialSystemEvidence (L : LinearDifferentialSystemPackage) where
  fundamentalSolutionClosed : L.fundamentalSolution
  variationalEquationClosed : L.variationalEquation
  integrabilityConditionClosed : L.integrabilityCondition

def LinearDifferentialSystemClosed (L : LinearDifferentialSystemPackage) : Prop :=
  L.fundamentalSolution ∧ L.variationalEquation ∧ L.integrabilityCondition

theorem linear_differential_system_closed_from_evidence (L : LinearDifferentialSystemPackage)
    (E : LinearDifferentialSystemEvidence L) : LinearDifferentialSystemClosed L := by
  exact And.intro E.fundamentalSolutionClosed
    (And.intro E.variationalEquationClosed E.integrabilityConditionClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse