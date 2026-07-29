import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure FredholmOperatorPackage where
  sourceSpace : Type u
  targetSpace : Type v
  operator : sourceSpace → targetSpace
  linearization : sourceSpace → (sourceSpace → targetSpace)
  fredholmIndex : Int
  indexWellDefined : Prop
  indexProof : indexWellDefined

structure FredholmOperatorEvidence (F : FredholmOperatorPackage) where
  indexClosed : F.indexWellDefined

def FredholmOperatorClosed (F : FredholmOperatorPackage) : Prop :=
  F.indexWellDefined

theorem fredholm_operator_closed_from_evidence (F : FredholmOperatorPackage)
    (E : FredholmOperatorEvidence F) : FredholmOperatorClosed F := by
  exact E.indexClosed

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse
