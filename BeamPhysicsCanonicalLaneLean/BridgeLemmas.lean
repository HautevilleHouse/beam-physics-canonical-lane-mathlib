import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  beamWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse