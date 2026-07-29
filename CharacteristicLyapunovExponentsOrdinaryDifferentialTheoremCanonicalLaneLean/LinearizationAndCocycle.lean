import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LinearizationPackage where
  differentialEquation : Type u → Type u
  solutionFlow : Type u → Type u
  linearizedFlow : Type u → Type u
  cocycleProperty : Prop
  continuousDependence : Prop
  cocycleGenerator : Type u → Type u
  integrabilityCondition : Prop

structure LinearizationEvidence (L : LinearizationPackage) where
  cocyclePropertyClosed : L.cocycleProperty
  continuousDependenceClosed : L.continuousDependence
  integrabilityConditionClosed : L.integrabilityCondition

def LinearizationClosed (L : LinearizationPackage) : Prop :=
  L.cocycleProperty ∧ L.continuousDependence ∧ L.integrabilityCondition

theorem linearization_closed_from_evidence (L : LinearizationPackage) (E : LinearizationEvidence L) :
    LinearizationClosed L := by
  exact And.intro E.cocyclePropertyClosed
    (And.intro E.continuousDependenceClosed E.integrabilityConditionClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse