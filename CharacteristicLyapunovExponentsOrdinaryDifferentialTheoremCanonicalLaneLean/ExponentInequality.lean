import CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.LyapunovSpectrum

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure ExponentInequalityPackage {O : ODEPackage} {L : LinearizationPackage O} (S : LyapunovSpectrumPackage L) where
  topExponentUpperBound : Prop
  sumExponentsUpperBound : Prop
  characteristicExponentsAdmissible : Prop
  conclusion : characteristicExponentsAdmissible

structure ExponentInequalityEvidence {O : ODEPackage} {L : LinearizationPackage O} {S : LyapunovSpectrumPackage L} (E : ExponentInequalityPackage S) where
  topExponentUpperBoundClosed : E.topExponentUpperBound
  sumExponentsUpperBoundClosed : E.sumExponentsUpperBound
  characteristicExponentsAdmissibleClosed : E.characteristicExponentsAdmissible

def ExponentInequalityClosed {O : ODEPackage} {L : LinearizationPackage O} {S : LyapunovSpectrumPackage L} (E : ExponentInequalityPackage S) : Prop :=
  E.topExponentUpperBound ∧ E.sumExponentsUpperBound ∧ E.characteristicExponentsAdmissible

theorem exponent_inequality_closed_from_evidence {O : ODEPackage} {L : LinearizationPackage O} {S : LyapunovSpectrumPackage L} (E : ExponentInequalityPackage S) (Ev : ExponentInequalityEvidence E) : ExponentInequalityClosed E := by
  exact And.intro Ev.topExponentUpperBoundClosed (And.intro Ev.sumExponentsUpperBoundClosed Ev.characteristicExponentsAdmissibleClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
