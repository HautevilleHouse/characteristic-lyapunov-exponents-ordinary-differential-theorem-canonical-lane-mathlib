import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure ODESystem where
  stateSpace : Type u
  normed : NormedAddCommGroup stateSpace
  vectorField : stateSpace → stateSpace
  lipschitzContinuous : Prop
  lipschitzConstant : ℝ
  lipschitzBound : lipschitzContinuous = True

structure LyapunovExponentDefinition (OD : ODESystem) where
  cocycle : ℕ → OD.stateSpace → OD.stateSpace → OD.stateSpace
  subadditive : Prop
  growthRate : OD.stateSpace → ℝ
  almostEverywhereDefined : Prop
  growthRateDefined : ∀ x, growthRate x = 0 ∨ growthRate x = -∞

def LyapunovExponentClosed {OD : ODESystem} (L : LyapunovExponentDefinition OD) : Prop :=
  L.subadditive ∧ L.almostEverywhereDefined ∧ L.growthRateDefined

theorem lyapunov_exponent_closed_default {OD : ODESystem} (L : LyapunovExponentDefinition OD) : LyapunovExponentClosed L :=
  And.intro L.subadditive (And.intro L.almostEverywhereDefined L.growthRateDefined)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse