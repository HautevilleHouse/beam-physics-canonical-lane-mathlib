import BeamPhysicsCanonicalLaneLean.BeamBridgeLemmas

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure BeamEmittancePackage where
  initialEmittance : ℝ
  emittanceConservation : Prop
  normalizedEmittanceInvariant : Prop
  courantSnyderInvariant : Prop

structure BeamEmittanceEvidence (E : BeamEmittancePackage) where
  emittanceConservationClosed : E.emittanceConservation
  normalizedEmittanceInvariantClosed : E.normalizedEmittanceInvariant
  courantSnyderInvariantClosed : E.courantSnyderInvariant

def BeamEmittanceClosed (E : BeamEmittancePackage) : Prop :=
  E.emittanceConservation ∧ E.normalizedEmittanceInvariant ∧ E.courantSnyderInvariant

theorem beam_emittance_closed_from_evidence (E : BeamEmittancePackage) (ev : BeamEmittanceEvidence E) :
    BeamEmittanceClosed E := by
  exact And.intro ev.emittanceConservationClosed
    (And.intro ev.normalizedEmittanceInvariantClosed ev.courantSnyderInvariantClosed)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse