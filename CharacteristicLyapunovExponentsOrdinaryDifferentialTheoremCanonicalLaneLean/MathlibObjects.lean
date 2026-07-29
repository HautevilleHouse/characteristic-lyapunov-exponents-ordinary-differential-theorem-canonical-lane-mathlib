import CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LyapunovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LyapunovAdmittedObject where
  space : LyapunovSpace
  odeSystem : Prop
  linearizationAlongTrajectory : Prop
  spectrumRealPartUpperBound : Prop
  conclusion : spectrumRealPartUpperBound

structure LyapunovEndgameState where
  object : LyapunovAdmittedObject

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.spectrumRealPartUpperBound

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
