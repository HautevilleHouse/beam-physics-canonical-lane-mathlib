import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure TransferMapsPackage (B : BeamDynamicsPackage) (P : PhaseSpacePackage B) where
  linearTransfer : Type
  chromaticEffects : Prop
  nonlinearAbberations : Prop
  mapSymplecticity : Prop

def TransferMapClosed {B : BeamDynamicsPackage} {P : PhaseSpacePackage B} (T : TransferMapsPackage B P) : Prop :=
  T.chromaticEffects ∧ T.nonlinearAbberations ∧ T.mapSymplecticity

structure TransferMapsEvidence {B : BeamDynamicsPackage} {P : PhaseSpacePackage B} (T : TransferMapsPackage B P) where
  chromaticEffectsClosed : T.chromaticEffects
  nonlinearAbberationsClosed : T.nonlinearAbberations
  mapSymplecticityClosed : T.mapSymplecticity

theorem transfer_maps_closed_from_evidence {B : BeamDynamicsPackage} {P : PhaseSpacePackage B} (T : TransferMapsPackage B P) (E : TransferMapsEvidence T) :
    TransferMapClosed T := by
  exact And.intro E.chromaticEffectsClosed (And.intro E.nonlinearAbberationsClosed E.mapSymplecticityClosed)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
