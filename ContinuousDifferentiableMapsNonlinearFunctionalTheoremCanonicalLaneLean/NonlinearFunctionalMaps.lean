import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure NonlinearFunctionalMapsPackage where
  sourceSpace : Type u
  targetSpace : Type v
  map : sourceSpace → targetSpace
  continuous : Prop
  differentiable : Prop
  derivative : sourceSpace → (sourceSpace → targetSpace)
  continuityProof : continuous
  differentiabilityProof : differentiable

structure NonlinearFunctionalMapsEvidence (N : NonlinearFunctionalMapsPackage) where
  continuityClosed : N.continuous
  differentiabilityClosed : N.differentiable

def NonlinearFunctionalMapsClosed (N : NonlinearFunctionalMapsPackage) : Prop :=
  N.continuous ∧ N.differentiable

theorem nonlinear_functional_maps_closed_from_evidence (N : NonlinearFunctionalMapsPackage)
    (E : NonlinearFunctionalMapsEvidence N) : NonlinearFunctionalMapsClosed N := by
  exact And.intro E.continuityClosed E.differentiabilityClosed

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse
