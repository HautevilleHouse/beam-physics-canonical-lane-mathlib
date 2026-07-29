import BeamPhysicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure BeamEnvelopePackage (A : AdmissibleClass) where
  envelopeEquation : Prop
  focusingChannel : Prop
  spaceChargeIncluded : Prop
  emittanceEvolution : Prop

structure BeamEnvelopeEvidence (A : AdmissibleClass) (P : BeamEnvelopePackage A) where
  envelopeEquationClosed : P.envelopeEquation
  focusingChannelClosed : P.focusingChannel
  spaceChargeIncludedClosed : P.spaceChargeIncluded
  emittanceEvolutionClosed : P.emittanceEvolution

def BeamEnvelopeClosed (A : AdmissibleClass) (P : BeamEnvelopePackage A) : Prop :=
  P.envelopeEquation ∧ P.focusingChannel ∧ P.spaceChargeIncluded ∧ P.emittanceEvolution

theorem beam_envelope_closed_from_evidence (A : AdmissibleClass) (P : BeamEnvelopePackage A) (E : BeamEnvelopeEvidence A P) :
    BeamEnvelopeClosed A P := by
  exact And.intro E.envelopeEquationClosed (And.intro E.focusingChannelClosed (And.intro E.spaceChargeIncludedClosed E.emittanceEvolutionClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse