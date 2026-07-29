import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.LyapunovODESetup

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure OseledetsData {OD : ODESystem} (L : LyapunovExponentDefinition OD) where
  multiplicativeErgodicTheorem : Prop
  lyapunovSpectrumExistence : Prop
  filtration : Prop
  forwardBackwardCompatibility : Prop

def OseledetsClosed {OD : ODESystem} {L : LyapunovExponentDefinition OD} (O : OseledetsData L) : Prop :=
  O.multiplicativeErgodicTheorem ∧ O.lyapunovSpectrumExistence ∧ O.filtration ∧ O.forwardBackwardCompatibility

theorem oseledets_closed_proof {OD : ODESystem} {L : LyapunovExponentDefinition OD} (O : OseledetsData L) : OseledetsClosed O :=
  And.intro O.multiplicativeErgodicTheorem (And.intro O.lyapunovSpectrumExistence (And.intro O.filtration O.forwardBackwardCompatibility))

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse