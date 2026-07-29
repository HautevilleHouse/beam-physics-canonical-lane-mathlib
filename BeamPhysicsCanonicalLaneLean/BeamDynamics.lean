import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure BeamDynamicsPackage where
  beamCurrent : Type
  longitudinalDynamics : Prop
  transverseDynamics : Prop
  synchrotronRadiation : Prop
  wakeFieldEffects : Prop

structure BeamDynamicsEvidence (B : BeamDynamicsPackage) where
  longitudinalDynamicsClosed : B.longitudinalDynamics
  transverseDynamicsClosed : B.transverseDynamics
  synchrotronRadiationClosed : B.synchrotronRadiation
  wakeFieldEffectsClosed : B.wakeFieldEffects

def BeamDynamicsClosed (B : BeamDynamicsPackage) : Prop :=
  B.longitudinalDynamics ∧ B.transverseDynamics ∧ B.synchrotronRadiation ∧ B.wakeFieldEffects

theorem beam_dynamics_closed_from_evidence (B : BeamDynamicsPackage) (E : BeamDynamicsEvidence B) :
    BeamDynamicsClosed B := by
  exact And.intro E.longitudinalDynamicsClosed
    (And.intro E.transverseDynamicsClosed
      (And.intro E.synchrotronRadiationClosed E.wakeFieldEffectsClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
