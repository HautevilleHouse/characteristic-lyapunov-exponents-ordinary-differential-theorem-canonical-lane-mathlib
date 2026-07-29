import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovExponentPackage (O : OdeFlowPackage) (L : LinearizedFlowPackage O) where
  exponentDefinition : Type u
  upperLyapunovExponent : ℝ
  lowerLyapunovExponent : ℝ
  osedelecTheorem : Prop
  multiplicativeErgodicTheorem : Prop
  osedelecTheoremTerm : osedelecTheorem
  multiplicativeErgodicTheoremTerm : multiplicativeErgodicTheorem

structure LyapunovExponentEvidence (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) where
  osedelecTheoremClosed : E.osedelecTheorem
  multiplicativeErgodicTheoremClosed : E.multiplicativeErgodicTheorem

def LyapunovExponentClosed (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) : Prop :=
  E.osedelecTheorem ∧ E.multiplicativeErgodicTheorem

theorem lyapunov_exponent_closed_from_evidence (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) (Ev : LyapunovExponentEvidence O L E) :
    LyapunovExponentClosed O L E := by
  exact And.intro Ev.osedelecTheoremClosed Ev.multiplicativeErgodicTheoremClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse