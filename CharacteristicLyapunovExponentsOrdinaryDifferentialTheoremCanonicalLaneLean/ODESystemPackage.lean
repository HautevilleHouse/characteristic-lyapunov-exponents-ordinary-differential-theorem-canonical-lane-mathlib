import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure ODESystemPackage where
  phaseSpace : Type u
  vectorField : phaseSpace → phaseSpace
  solutionFlow : ℝ → phaseSpace → phaseSpace
  differentiability : Prop
  existenceUniqueness : Prop

structure ODESystemEvidence (O : ODESystemPackage) where
  differentiabilityClosed : O.differentiability
  existenceUniquenessClosed : O.existenceUniqueness

def ODESystemClosed (O : ODESystemPackage) : Prop :=
  O.differentiability ∧ O.existenceUniqueness

theorem ode_system_closed_from_evidence (O : ODESystemPackage) (E : ODESystemEvidence O) :
    ODESystemClosed O := by
  exact And.intro E.differentiabilityClosed E.existenceUniquenessClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse