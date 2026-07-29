import BeamPhysicsCanonicalLaneLean.BeamBridgeLemmas

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure TransferMatrixPackage where
  symplecticCondition : Prop
  determinantOneCondition : Prop
  linearMapTransfer : Prop
  matrixElementConsistency : Prop

structure TransferMatrixEvidence (T : TransferMatrixPackage) where
  symplecticConditionClosed : T.symplecticCondition
  determinantOneConditionClosed : T.determinantOneCondition
  linearMapTransferClosed : T.linearMapTransfer
  matrixElementConsistencyClosed : T.matrixElementConsistency

def TransferMatrixClosed (T : TransferMatrixPackage) : Prop :=
  T.symplecticCondition ∧ T.determinantOneCondition ∧ T.linearMapTransfer ∧ T.matrixElementConsistency

theorem transfer_matrix_closed_from_evidence (T : TransferMatrixPackage) (ev : TransferMatrixEvidence T) :
    TransferMatrixClosed T := by
  exact And.intro ev.symplecticConditionClosed
    (And.intro ev.determinantOneConditionClosed
      (And.intro ev.linearMapTransferClosed ev.matrixElementConsistencyClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse