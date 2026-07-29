import BeamPhysicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure EmittancePackage (A : AdmissibleClass) where
  initialEmittance : Prop
  emittanceGrowth : Prop
  invariantFormulation : Prop
  acceptanceCondition : Prop

structure EmittanceEvidence (A : AdmissibleClass) (E : EmittancePackage A) where
  initialEmittanceClosed : E.initialEmittance
  emittanceGrowthClosed : E.emittanceGrowth
  invariantFormulationClosed : E.invariantFormulation
  acceptanceConditionClosed : E.acceptanceCondition

def EmittanceClosed (A : AdmissibleClass) (E : EmittancePackage A) : Prop :=
  E.initialEmittance ∧ E.emittanceGrowth ∧ E.invariantFormulation ∧ E.acceptanceCondition

theorem emittance_closed_from_evidence (A : AdmissibleClass) (E : EmittancePackage A) (Ev : EmittanceEvidence A E) :
    EmittanceClosed A E := by
  exact And.intro Ev.initialEmittanceClosed (And.intro Ev.emittanceGrowthClosed (And.intro Ev.invariantFormulationClosed Ev.acceptanceConditionClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse