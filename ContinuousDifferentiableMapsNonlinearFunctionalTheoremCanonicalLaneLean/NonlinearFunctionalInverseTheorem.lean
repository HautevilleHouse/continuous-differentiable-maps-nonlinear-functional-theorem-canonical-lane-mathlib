import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.FréchetDifferentiabilityPackage

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure NonlinearFunctionalInversePackage {F : FréchetDifferentiabilityPackage} where
  localInvertibility : Prop
  implicitFunction : Prop
  regularity : Prop

structure NonlinearFunctionalInverseEvidence {F : FréchetDifferentiabilityPackage}
    (N : NonlinearFunctionalInversePackage F) where
  localInvertibilityClosed : N.localInvertibility
  implicitFunctionClosed : N.implicitFunction
  regularityClosed : N.regularity

def NonlinearFunctionalInverseClosed {F : FréchetDifferentiabilityPackage}
    (N : NonlinearFunctionalInversePackage F) : Prop :=
  N.localInvertibility ∧ N.implicitFunction ∧ N.regularity

theorem nonlinear_functional_inverse_closed_from_evidence {F : FréchetDifferentiabilityPackage}
    (N : NonlinearFunctionalInversePackage F) (E : NonlinearFunctionalInverseEvidence N) :
    NonlinearFunctionalInverseClosed N :=
  And.intro E.localInvertibilityClosed
    (And.intro E.implicitFunctionClosed E.regularityClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse