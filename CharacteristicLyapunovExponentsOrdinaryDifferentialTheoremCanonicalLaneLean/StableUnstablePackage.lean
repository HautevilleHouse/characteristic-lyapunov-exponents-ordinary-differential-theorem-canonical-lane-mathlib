import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure StableUnstablePackage (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) where
  stableManifold : Type u
  unstableManifold : Type v
  centerManifold : Type w
  stableManifoldTheorem : Prop
  unstableManifoldTheorem : Prop
  centerManifoldTheorem : Prop
  stableManifoldTheoremTerm : stableManifoldTheorem
  unstableManifoldTheoremTerm : unstableManifoldTheorem
  centerManifoldTheoremTerm : centerManifoldTheorem

structure StableUnstableEvidence (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) (S : StableUnstablePackage O L E) where
  stableManifoldTheoremClosed : S.stableManifoldTheorem
  unstableManifoldTheoremClosed : S.unstableManifoldTheorem
  centerManifoldTheoremClosed : S.centerManifoldTheorem

def StableUnstableClosed (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) (S : StableUnstablePackage O L E) : Prop :=
  S.stableManifoldTheorem ∧ S.unstableManifoldTheorem ∧ S.centerManifoldTheorem

theorem stable_unstable_closed_from_evidence (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LyapunovExponentPackage O L) (S : StableUnstablePackage O L E) (Ev : StableUnstableEvidence O L E S) :
    StableUnstableClosed O L E S := by
  exact And.intro Ev.stableManifoldTheoremClosed (And.intro Ev.unstableManifoldTheoremClosed Ev.centerManifoldTheoremClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse