import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure WakefieldPackage (O : BeamAdmittedObject) where
  wakePotential : Type
  impedance : Prop
  energyLoss : Prop
  transientEffects : Prop

structure WakefieldEvidence (W : WakefieldPackage O) where
  impedanceClosed : W.impedance
  energyLossClosed : W.energyLoss
  transientEffectsClosed : W.transientEffects

def WakefieldClosed (W : WakefieldPackage O) : Prop :=
  W.impedance ∧ W.energyLoss ∧ W.transientEffects

theorem wakefield_closed_from_evidence (W : WakefieldPackage O) (E : WakefieldEvidence W) : WakefieldClosed W :=
  And.intro E.impedanceClosed (And.intro E.energyLossClosed E.transientEffectsClosed)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse