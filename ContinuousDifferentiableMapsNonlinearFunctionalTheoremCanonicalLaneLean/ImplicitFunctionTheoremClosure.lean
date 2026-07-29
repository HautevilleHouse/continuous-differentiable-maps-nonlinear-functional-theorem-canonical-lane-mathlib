import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.NonlinearFunctionalAdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure ImplicitFunctionTheoremEvidence where
  differentiableMap : ContinuousDifferentiableMapStructure
  invertibleDerivative : Prop
  localExistence : Prop
  uniqueness : Prop

def ConstrainedImplicitFunctionClosure (A : NonlinearFunctionalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem implicit_function_endgame (A : NonlinearFunctionalAdmissibleClass) : ConstrainedImplicitFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse