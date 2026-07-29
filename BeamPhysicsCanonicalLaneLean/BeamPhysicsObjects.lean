import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure BeamSpace where
  dimension : Nat
  phaseSpaceType : Type
  topology : TopologicalSpace phaseSpaceType

structure BeamAdmittedObject where
  space : BeamSpace
  beamLine : Prop
  linearTransferMaps : Prop
  periodicFocusing : Prop
  conclusion : periodicFocusing

structure BeamEndgameState where
  object : BeamAdmittedObject

def BeamWitnessClosed (O : BeamAdmittedObject) : Prop :=
  O.periodicFocusing

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
