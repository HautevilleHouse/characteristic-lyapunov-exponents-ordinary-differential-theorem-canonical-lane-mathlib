import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure OdeFlowPackage where
  phaseSpace : Type u
  vectorField : Type v
  flowMap : phaseSpace → ℝ → phaseSpace
  differentiableFlow : Prop
  invariantMeasure : Prop
  ergodicity : Prop
  differentiableFlowTerm : differentiableFlow
  invariantMeasureTerm : invariantMeasure
  ergodicityTerm : ergodicity

structure OdeFlowEvidence (O : OdeFlowPackage) where
  differentiableFlowClosed : O.differentiableFlow
  invariantMeasureClosed : O.invariantMeasure
  ergodicityClosed : O.ergodicity

def OdeFlowClosed (O : OdeFlowPackage) : Prop :=
  O.differentiableFlow ∧ O.invariantMeasure ∧ O.ergodicity

theorem ode_flow_closed_from_evidence (O : OdeFlowPackage) (E : OdeFlowEvidence O) :
    OdeFlowClosed O := by
  exact And.intro E.differentiableFlowClosed (And.intro E.invariantMeasureClosed E.ergodicityClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse