import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure MorseTheoryPackage where
  manifold : Type u
  morseFunction : manifold → ℝ
  criticalPoints : Set manifold
  nondegenerateCriticalPoints : Prop
  indexAtCriticalPoint : manifold → ℕ
  morseInequalities : Prop
  nondegenerateProof : nondegenerateCriticalPoints
  morseInequalitiesProof : morseInequalities

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  nondegenerateClosed : M.nondegenerateCriticalPoints
  morseInequalitiesClosed : M.morseInequalities

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.nondegenerateCriticalPoints ∧ M.morseInequalities

theorem morse_theory_closed_from_evidence (M : MorseTheoryPackage)
    (E : MorseTheoryEvidence M) : MorseTheoryClosed M := by
  exact And.intro E.nondegenerateClosed E.morseInequalitiesClosed

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse
