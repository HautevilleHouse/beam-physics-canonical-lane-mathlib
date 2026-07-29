import BeamPhysicsCanonicalLaneLean.BeamPhysicsObjects

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure BeamQualityPackage where
  emittanceNonnegative : Prop
  twissBetaPositive : Prop
  phaseSpaceAreaConserved : Prop
  linearTransferMapsSymplectic : Prop

structure BeamQualityEvidence (B : BeamQualityPackage) where
  emittanceNonnegativeClosed : B.emittanceNonnegative
  twissBetaPositiveClosed : B.twissBetaPositive
  phaseSpaceAreaConservedClosed : B.phaseSpaceAreaConserved
  linearTransferMapsSymplecticClosed : B.linearTransferMapsSymplectic

def BeamQualityClosed (B : BeamQualityPackage) : Prop :=
  B.emittanceNonnegative ∧ B.twissBetaPositive ∧ B.phaseSpaceAreaConserved ∧ B.linearTransferMapsSymplectic

theorem beam_quality_closed_from_evidence (B : BeamQualityPackage) (E : BeamQualityEvidence B) : BeamQualityClosed B :=
  exact And.intro E.emittanceNonnegativeClosed (And.intro E.twissBetaPositiveClosed (And.intro E.phaseSpaceAreaConservedClosed E.linearTransferMapsSymplecticClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
