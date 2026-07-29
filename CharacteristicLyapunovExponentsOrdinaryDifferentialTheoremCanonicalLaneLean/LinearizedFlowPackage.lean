import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LinearizedFlowPackage (O : OdeFlowPackage) where
  tangentMap : Type u
  cocycle : O.phaseSpace → ℝ → tangentMap → tangentMap
  linearizationExists : Prop
  cocycleProperty : Prop
  linearizationExistsTerm : linearizationExists
  cocyclePropertyTerm : cocycleProperty

structure LinearizedFlowEvidence (O : OdeFlowPackage) (L : LinearizedFlowPackage O) where
  linearizationExistsClosed : L.linearizationExists
  cocyclePropertyClosed : L.cocycleProperty

def LinearizedFlowClosed (O : OdeFlowPackage) (L : LinearizedFlowPackage O) : Prop :=
  L.linearizationExists ∧ L.cocycleProperty

theorem linearized_flow_closed_from_evidence (O : OdeFlowPackage) (L : LinearizedFlowPackage O) (E : LinearizedFlowEvidence O L) :
    LinearizedFlowClosed O L := by
  exact And.intro E.linearizationExistsClosed E.cocyclePropertyClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse