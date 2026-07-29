import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure BanachSpaceMapsPackage where
  domainBanachSpace : Type u
  codomainBanachSpace : Type v
  continuousDifferentiableMapSpace : Type w
  nonlinearFunctionalType : Type x
  derivativeOperator : Type y
  banachSpaceStructureDomain : Prop
  banachSpaceStructureCodomain : Prop
  continuousDifferentiableMapStructure : Prop
  nonlinearFunctionalWellDefined : Prop
  derivativeOperatorDefined : Prop

structure BanachSpaceMapsEvidence (B : BanachSpaceMapsPackage) where
  banachSpaceStructureDomainClosed : B.banachSpaceStructureDomain
  banachSpaceStructureCodomainClosed : B.banachSpaceStructureCodomain
  continuousDifferentiableMapStructureClosed : B.continuousDifferentiableMapStructure
  nonlinearFunctionalWellDefinedClosed : B.nonlinearFunctionalWellDefined
  derivativeOperatorDefinedClosed : B.derivativeOperatorDefined

def BanachSpaceMapsClosed (B : BanachSpaceMapsPackage) : Prop :=
  B.banachSpaceStructureDomain ∧ B.banachSpaceStructureCodomain ∧
  B.continuousDifferentiableMapStructure ∧ B.nonlinearFunctionalWellDefined ∧
  B.derivativeOperatorDefined

theorem banach_space_maps_closed_from_evidence (B : BanachSpaceMapsPackage)
    (E : BanachSpaceMapsEvidence B) : BanachSpaceMapsClosed B := by
  exact And.intro E.banachSpaceStructureDomainClosed
    (And.intro E.banachSpaceStructureCodomainClosed
      (And.intro E.continuousDifferentiableMapStructureClosed
        (And.intro E.nonlinearFunctionalWellDefinedClosed
          E.derivativeOperatorDefinedClosed)))

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse