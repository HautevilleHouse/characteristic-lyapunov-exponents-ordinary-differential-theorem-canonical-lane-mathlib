import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovExponentPackage where
  linearSystem : Type u
  cocycleProperty : Prop
  growthRateDefined : Prop
  forwardExponentsExist : Prop
  backwardExponentsExist : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  cocyclePropertyClosed : L.cocycleProperty
  growthRateDefinedClosed : L.growthRateDefined
  forwardExponentsExistClosed : L.forwardExponentsExist
  backwardExponentsExistClosed : L.backwardExponentsExist

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.cocycleProperty ∧ L.growthRateDefined ∧ L.forwardExponentsExist ∧ L.backwardExponentsExist

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.cocyclePropertyClosed
    (And.intro E.growthRateDefinedClosed
      (And.intro E.forwardExponentsExistClosed E.backwardExponentsExistClosed))

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse