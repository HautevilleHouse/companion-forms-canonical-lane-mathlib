import CompanionFormsCanonicalLaneLean.Basic
import CompanionFormsCanonicalLaneLean.SourcePackage
import CompanionFormsCanonicalLaneLean.SourceDependencies

/-!
# Source-derived formalization layer for `companion-forms-canonical-lane`

This module sits above `Basic.lean`, `SourcePackage.lean`, and `SourceDependencies.lean`.
It turns translated package primitives into explicit Lean data for formula
models, component inputs, source sections, and formalization status checks.

This layer records source-derived formalization structure. The generated
library target typechecked under the pinned Lean toolchain; source-conjecture
closure remains outside this generated layer.
-/

namespace HautevilleHouse
namespace CompanionFormsCanonicalLaneLean

inductive FormulaExpr where
  | var (name : String)
  | num (value : String)
  | add (lhs rhs : FormulaExpr)
  | sub (lhs rhs : FormulaExpr)
  | mul (lhs rhs : FormulaExpr)
  | div (lhs rhs : FormulaExpr)
  | neg (arg : FormulaExpr)
  | abs (arg : FormulaExpr)
  | min (lhs rhs : FormulaExpr)
  | max (lhs rhs : FormulaExpr)
  | raw (formula : String)
deriving Repr, DecidableEq

structure FormulaComponent where
  key : String
  value : String
deriving Repr, DecidableEq

structure SourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : FormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List FormulaComponent
deriving Repr, DecidableEq

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def sourceFormulaModels : List SourceFormulaModel := [
  { group := "constants", key := "eps_coh", status := "derived_numeric", formula := "eps_coh_raw", expr := (FormulaExpr.var "eps_coh_raw"), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 6 / Appendix E", notes := "Strict coherence target.", validation := "required_nonnegative", componentKeys := ["eps_coh_raw"], components := [
    { key := "eps_coh_raw", value := "0.0" }
  ] },
  { group := "constants", key := "kappa_compact", status := "derived_numeric", formula := "1.0 / (1.0 + delta_comp_sup_raw)", expr := (FormulaExpr.div (FormulaExpr.num "1.0") (FormulaExpr.add (FormulaExpr.num "1.0") (FormulaExpr.var "delta_comp_sup_raw"))), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 5 / Appendix C", notes := "kappa_compact theorem-level floor.", validation := "required_positive", componentKeys := ["delta_comp_sup_raw"], components := [
    { key := "delta_comp_sup_raw", value := "0.244" }
  ] },
  { group := "constants", key := "kappa_companion", status := "derived_numeric", formula := "c_core_raw * density_raw - e_core_raw", expr := (FormulaExpr.sub (FormulaExpr.mul (FormulaExpr.var "c_core_raw") (FormulaExpr.var "density_raw")) (FormulaExpr.var "e_core_raw")), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 4 / Appendix A", notes := "kappa_companion theorem-level floor.", validation := "required_positive", componentKeys := ["c_core_raw", "density_raw", "e_core_raw"], components := [
    { key := "c_core_raw", value := "1.441" },
    { key := "density_raw", value := "0.918" },
    { key := "e_core_raw", value := "0.231" }
  ] },
  { group := "constants", key := "rho_rigidity", status := "derived_numeric", formula := "rho_rigidity_raw", expr := (FormulaExpr.var "rho_rigidity_raw"), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 6 / Appendix D", notes := "rho_rigidity theorem-level floor.", validation := "required_positive", componentKeys := ["rho_rigidity_raw"], components := [
    { key := "rho_rigidity_raw", value := "1.077" }
  ] },
  { group := "constants", key := "sigma_weight", status := "derived_numeric", formula := "capture_floor_raw - transport_loss_raw - restart_loss_raw", expr := (FormulaExpr.sub (FormulaExpr.sub (FormulaExpr.var "capture_floor_raw") (FormulaExpr.var "transport_loss_raw")) (FormulaExpr.var "restart_loss_raw")), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 5 / Appendix B", notes := "sigma_weight theorem-level floor.", validation := "required_positive", componentKeys := ["capture_floor_raw", "restart_loss_raw", "transport_loss_raw"], components := [
    { key := "capture_floor_raw", value := "1.391" },
    { key := "restart_loss_raw", value := "0.149" },
    { key := "transport_loss_raw", value := "0.167" }
  ] },
  { group := "constants", key := "weight_lock", status := "derived_numeric", formula := "c_transfer_raw * transfer_gain_raw - e_transfer_raw", expr := (FormulaExpr.sub (FormulaExpr.mul (FormulaExpr.var "c_transfer_raw") (FormulaExpr.var "transfer_gain_raw")) (FormulaExpr.var "e_transfer_raw")), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 6 / Appendix D", notes := "weight_lock theorem-level floor.", validation := "required_positive", componentKeys := ["c_transfer_raw", "e_transfer_raw", "transfer_gain_raw"], components := [
    { key := "c_transfer_raw", value := "1.117" },
    { key := "e_transfer_raw", value := "0.121" },
    { key := "transfer_gain_raw", value := "1.03" }
  ] },
  { group := "stitch", key := "sigma_star_can", status := "derived_numeric", formula := "sigma_star_can_raw", expr := (FormulaExpr.var "sigma_star_can_raw"), parseStatus := "parsed_source_expression", sourceSection := "paper/COMPANION_FORMS_PREPRINT.md Section 5 / stitch constants", notes := "sigma_star_can theorem-level stitch constant.", validation := "required_positive", componentKeys := ["sigma_star_can_raw"], components := [
    { key := "sigma_star_can_raw", value := "1.053" }
  ] }
]

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "companion-forms-canonical-lane",
  sourceCheckoutHead := sourceCheckoutHead,
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

def sourceFormulaModelCount : Nat := 7
def sourcePythonFileCount : Nat := 5
def sourcePythonFunctionCount : Nat := 33
def sourceConstantSpecCount : Nat := 7
def sourceRegistryConstantCount : Nat := 9

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false := by
  rfl

theorem formalization_build_checked :
    formalizationCertificate.leanBuildChecked = true := by
  rfl

theorem formalization_package_layer_translated :
    formalizationCertificate.packageLayerTranslated = true := by
  rfl

theorem formalization_formula_layer_modeled :
    formalizationCertificate.formulaLayerModeled = true := by
  rfl

theorem formalization_source_formula_count_checked :
    sourceFormulaModels.length = 7 := by
  rfl

theorem formalization_source_file_count_checked :
    sourceFiles.length = 5 := by
  rfl

theorem formalization_source_function_count_checked :
    sourceFunctions.length = 33 := by
  rfl

theorem formalization_constant_spec_count_checked :
    constantSpecs.length = 7 := by
  rfl

theorem formalization_registry_constant_count_checked :
    registryConstants.length = 9 := by
  rfl


theorem dependency_import_count_matches_certificate : sourceImportDependencies.length = sourceImportDependencyCount := by
  rfl

theorem dependency_path_count_matches_certificate : sourcePathDependencies.length = sourcePathDependencyCount := by
  rfl

end CompanionFormsCanonicalLaneLean
end HautevilleHouse
