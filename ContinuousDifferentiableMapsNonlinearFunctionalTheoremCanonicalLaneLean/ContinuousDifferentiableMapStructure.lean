import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure ContinuousDifferentiableMapStructure where
  source : Type u
  target : Type v
  topologySource : TopologicalSpace source
  topologyTarget : TopologicalSpace target
  differentiableStructure : Prop
  continuousMap : source → target
  differentiableAtPoints : Prop
  continuityCompatibility : continuousMap.Continuous ∧ differentiableAtPoints

def ClosedDifferentiableMapStructure (M : ContinuousDifferentiableMapStructure) : Prop :=
  M.differentiableStructure ∧ M.continuityCompatibility.1 ∧ M.continuityCompatibility.2

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse