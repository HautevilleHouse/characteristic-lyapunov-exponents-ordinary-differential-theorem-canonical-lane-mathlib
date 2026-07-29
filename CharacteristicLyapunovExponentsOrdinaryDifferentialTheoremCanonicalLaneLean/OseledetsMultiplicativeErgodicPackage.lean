import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure OseledetsMultiplicativeErgodicPackage where
  linearizedFlow : Type u
  cocycleProperty : Prop
  integrability : Prop
  osledetsSubspacesExist : Prop

structure OseledetsMultiplicativeErgodicEvidence (O : OseledetsMultiplicativeErgodicPackage) where
  cocyclePropertyClosed : O.cocycleProperty
  integrabilityClosed : O.integrability
  osledetsSubspacesExistClosed : O.osledetsSubspacesExist

def OseledetsMultiplicativeErgodicClosed (O : OseledetsMultiplicativeErgodicPackage) : Prop :=
  O.cocycleProperty ∧ O.integrability ∧ O.osledetsSubspacesExist

theorem oseledets_multiplicative_ergodic_closed_from_evidence (O : OseledetsMultiplicativeErgodicPackage) (E : OseledetsMultiplicativeErgodicEvidence O) :
    OseledetsMultiplicativeErgodicClosed O := by
  exact And.intro E.cocyclePropertyClosed (And.intro E.integrabilityClosed E.osledetsSubspacesExistClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse