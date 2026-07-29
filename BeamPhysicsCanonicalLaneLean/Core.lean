namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure Projection (α : Type u) where
  toFun : α → α
  idempotent : ∀ x : α, toFun (toFun x) = toFun x

structure AdditiveLane (X : Type u) [Add X] [Sub X] where
  state : X
  delta : X
  projection : Projection X
  xNext : X
  carriedComponent : X
  x_next_eq : xNext = state + projection.toFun delta
  carried_component_eq : carriedComponent = delta - projection.toFun delta
  projection_idempotent_on_delta : projection.toFun (projection.toFun delta) = projection.toFun delta

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
