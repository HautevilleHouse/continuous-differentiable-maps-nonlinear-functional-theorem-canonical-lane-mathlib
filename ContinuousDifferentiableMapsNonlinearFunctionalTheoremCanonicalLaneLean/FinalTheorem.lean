import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

def ConstrainedNonlinearFunctionalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nonlinear_functional_endgame (A : AdmissibleClass) :
    ConstrainedNonlinearFunctionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse
