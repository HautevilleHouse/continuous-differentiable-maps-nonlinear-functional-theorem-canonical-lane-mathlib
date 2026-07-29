import canonicalLaneMathlib.AdmissibleClass
import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.ContinuousDifferentiableMaps

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure NonlinearFunctionalPackage where
  space : Type u
  topology : TopologicalSpace space
  functional : space → ℝ
  continuousDifferentiable : Prop
  criticalPoint : Prop
  morseLemma : Prop
  continuousDifferentiableClosed : continuousDifferentiable
  criticalPointClosed : criticalPoint
  morseLemmaClosed : morseLemma

structure NonlinearFunctionalEvidence (N : NonlinearFunctionalPackage) where
  continuousDifferentiableClosed : N.continuousDifferentiable
  criticalPointClosed : N.criticalPoint
  morseLemmaClosed : N.morseLemma

def NonlinearFunctionalClosed (N : NonlinearFunctionalPackage) : Prop :=
  N.continuousDifferentiable ∧ N.criticalPoint ∧ N.morseLemma

theorem nonlinear_functional_closed_from_evidence (N : NonlinearFunctionalPackage)
  (E : NonlinearFunctionalEvidence N) : NonlinearFunctionalClosed N := by
  exact And.intro E.continuousDifferentiableClosed
    (And.intro E.criticalPointClosed E.morseLemmaClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse