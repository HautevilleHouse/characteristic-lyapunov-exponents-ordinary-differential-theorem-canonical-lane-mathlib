import CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.LinearizationPackage

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovSpectrumPackage {O : ODEPackage} (L : LinearizationPackage O) where
  exponentDefinition : Type u
  growthRate : Type v
  oseledetsTheorem : Prop
  spectrumExists : Prop
  multiplicativeErgodicTheoremApplied : Prop

structure LyapunovSpectrumEvidence {O : ODEPackage} {L : LinearizationPackage O} (S : LyapunovSpectrumPackage L) where
  oseledetsTheoremClosed : S.oseledetsTheorem
  spectrumExistsClosed : S.spectrumExists
  multiplicativeErgodicTheoremAppliedClosed : S.multiplicativeErgodicTheoremApplied

def LyapunovSpectrumClosed {O : ODEPackage} {L : LinearizationPackage O} (S : LyapunovSpectrumPackage L) : Prop :=
  S.oseledetsTheorem ∧ S.spectrumExists ∧ S.multiplicativeErgodicTheoremApplied

theorem lyapunov_spectrum_closed_from_evidence {O : ODEPackage} {L : LinearizationPackage O} (S : LyapunovSpectrumPackage L) (E : LyapunovSpectrumEvidence S) : LyapunovSpectrumClosed S := by
  exact And.intro E.oseledetsTheoremClosed (And.intro E.spectrumExistsClosed E.multiplicativeErgodicTheoremAppliedClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
