import CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.ODEFormulation

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LinearizationPackage (O : ODEPackage) where
  tangentBundle : Type u
  linearizedFlow : Type v
  linearEquation : Prop
  cocycleProperty : Prop
  invertibility : Prop

structure LinearizationEvidence {O : ODEPackage} (L : LinearizationPackage O) where
  linearEquationClosed : L.linearEquation
  cocyclePropertyClosed : L.cocycleProperty
  invertibilityClosed : L.invertibility

def LinearizationClosed {O : ODEPackage} (L : LinearizationPackage O) : Prop :=
  L.linearEquation ∧ L.cocycleProperty ∧ L.invertibility

theorem linearization_closed_from_evidence {O : ODEPackage} (L : LinearizationPackage O) (E : LinearizationEvidence L) : LinearizationClosed L := by
  exact And.intro E.linearEquationClosed (And.intro E.cocyclePropertyClosed E.invertibilityClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
