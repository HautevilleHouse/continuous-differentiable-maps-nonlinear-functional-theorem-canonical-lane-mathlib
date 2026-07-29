import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.NonlinearFunctionalAdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure InverseFunctionTheoremEvidence where
  differentiableMap : ContinuousDifferentiableMapStructure
  derivativeInvertibleAtPoint : Prop
  localDiffeomorphism : Prop
  inverseDifferentiable : Prop

def ConstrainedInverseFunctionClosure (A : NonlinearFunctionalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem inverse_function_endgame (A : NonlinearFunctionalAdmissibleClass) : ConstrainedInverseFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse