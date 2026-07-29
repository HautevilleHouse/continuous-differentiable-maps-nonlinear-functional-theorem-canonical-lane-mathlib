import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure NonlinearFunctionalPackage where
  domain : Type u
  codomain : Type v
  mapping : domain → codomain
  differentiable : Prop
  nonlinearTerm : Prop
  functionalEquation : Prop

structure NonlinearFunctionalEvidence (N : NonlinearFunctionalPackage) where
  differentiableClosed : N.differentiable
  nonlinearTermClosed : N.nonlinearTerm
  functionalEquationClosed : N.functionalEquation

def NonlinearFunctionalClosed (N : NonlinearFunctionalPackage) : Prop :=
  N.differentiable ∧ N.nonlinearTerm ∧ N.functionalEquation

theorem nonlinear_functional_closed_from_evidence (N : NonlinearFunctionalPackage)
    (E : NonlinearFunctionalEvidence N) : NonlinearFunctionalClosed N := by
  exact And.intro E.differentiableClosed
    (And.intro E.nonlinearTermClosed E.functionalEquationClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse