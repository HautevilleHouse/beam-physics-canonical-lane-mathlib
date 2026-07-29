import BeamPhysicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure SpaceChargePackage (A : AdmissibleClass) where
  perveance : Prop
  defocusingEffect : Prop
  tuneShift : Prop
  beamBlowup : Prop

structure SpaceChargeEvidence (A : AdmissibleClass) (S : SpaceChargePackage A) where
  perveanceClosed : S.perveance
  defocusingEffectClosed : S.defocusingEffect
  tuneShiftClosed : S.tuneShift
  beamBlowupClosed : S.beamBlowup

def SpaceChargeClosed (A : AdmissibleClass) (S : SpaceChargePackage A) : Prop :=
  S.perveance ∧ S.defocusingEffect ∧ S.tuneShift ∧ S.beamBlowup

theorem space_charge_closed_from_evidence (A : AdmissibleClass) (S : SpaceChargePackage A) (Ev : SpaceChargeEvidence A S) :
    SpaceChargeClosed A S := by
  exact And.intro Ev.perveanceClosed (And.intro Ev.defocusingEffectClosed (And.intro Ev.tuneShiftClosed Ev.beamBlowupClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse