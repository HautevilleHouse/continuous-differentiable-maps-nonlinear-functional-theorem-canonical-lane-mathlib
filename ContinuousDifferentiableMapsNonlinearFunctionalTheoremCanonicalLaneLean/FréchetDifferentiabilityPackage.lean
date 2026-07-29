import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.ContinuousDifferentiableMapsBridge

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure FréchetDifferentiabilityPackage where
  domainNormed : Type
  codomainNormed : Type
  map : domainNormed → codomainNormed
  linearApproximation : Prop
  derivativeContinuity : Prop
  remainderTendsToZero : Prop

structure FréchetDifferentiabilityEvidence (P : FréchetDifferentiabilityPackage) where
  linearApproximationClosed : P.linearApproximation
  derivativeContinuityClosed : P.derivativeContinuity
  remainderTendsToZeroClosed : P.remainderTendsToZero

def FréchetDifferentiabilityClosed (P : FréchetDifferentiabilityPackage) : Prop :=
  P.linearApproximation ∧ P.derivativeContinuity ∧ P.remainderTendsToZero

theorem fréchet_differentiability_closed_from_evidence (P : FréchetDifferentiabilityPackage)
    (E : FréchetDifferentiabilityEvidence P) : FréchetDifferentiabilityClosed P :=
  And.intro E.linearApproximationClosed
    (And.intro E.derivativeContinuityClosed E.remainderTendsToZeroClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse