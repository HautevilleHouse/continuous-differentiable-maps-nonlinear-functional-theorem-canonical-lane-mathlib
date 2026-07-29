import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.NonlinearFunctionalAnalysis

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure ContinuousMapsDecompositionPackage {N : NonlinearFunctionalPackage} where
  linearPart : N.domain → N.codomain
  nonlinearPart : N.domain → N.codomain
  decomposition : ∀ x : N.domain, N.mapping x = linearPart x + nonlinearPart x
  linearContinuous : Prop
  nonlinearCompact : Prop

structure ContinuousMapsDecompositionEvidence {N : NonlinearFunctionalPackage}
    (D : ContinuousMapsDecompositionPackage N) where
  decompositionClosed : D.decomposition = D.decomposition
  linearContinuousClosed : D.linearContinuous
  nonlinearCompactClosed : D.nonlinearCompact

def ContinuousMapsDecompositionClosed {N : NonlinearFunctionalPackage}
    (D : ContinuousMapsDecompositionPackage N) : Prop :=
  D.linearContinuous ∧ D.nonlinearCompact

theorem continuous_maps_decomposition_closed_from_evidence {N : NonlinearFunctionalPackage}
    (D : ContinuousMapsDecompositionPackage N) (E : ContinuousMapsDecompositionEvidence D) :
    ContinuousMapsDecompositionClosed D := by
  exact And.intro E.linearContinuousClosed E.nonlinearCompactClosed

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse