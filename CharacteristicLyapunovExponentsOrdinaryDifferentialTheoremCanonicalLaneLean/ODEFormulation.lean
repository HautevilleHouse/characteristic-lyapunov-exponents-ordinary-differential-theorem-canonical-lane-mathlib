import CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure ODEPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  vectorField : Type w
  flow : Type x
  odeSystemWellDefined : Prop
  flowDefinedForAllTimes : Prop
  differentiableFlow : Prop

structure ODEEvidence (O : ODEPackage) where
  odeSystemWellDefinedClosed : O.odeSystemWellDefined
  flowDefinedForAllTimesClosed : O.flowDefinedForAllTimes
  differentiableFlowClosed : O.differentiableFlow

def ODEClosed (O : ODEPackage) : Prop :=
  O.odeSystemWellDefined ∧ O.flowDefinedForAllTimes ∧ O.differentiableFlow

theorem ode_closed_from_evidence (O : ODEPackage) (E : ODEEvidence O) : ODEClosed O := by
  exact And.intro E.odeSystemWellDefinedClosed (And.intro E.flowDefinedForAllTimesClosed E.differentiableFlowClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
