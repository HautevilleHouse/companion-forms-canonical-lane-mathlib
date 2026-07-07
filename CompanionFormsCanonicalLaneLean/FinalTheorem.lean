import CompanionFormsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompanionFormsCanonicalLaneLean

def ScopedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ NativeClosureTheorem A.object

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  ScopedClosure A

theorem native_closure_theorem (A : AdmissibleClass) :
    ScopedClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) (native_closure_from_admitted_object A.object))

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact native_closure_theorem A

end CompanionFormsCanonicalLaneLean
end HautevilleHouse
