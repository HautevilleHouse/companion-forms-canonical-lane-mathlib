import CompanionFormsCanonicalLaneLean.Formalization
import CompanionFormsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace CompanionFormsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "49b0c8a71903710be2d800f842cd91624c7a714c304f031ffc07526afa714791", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "90cef3d686e98bf9fc629e4bc88f841fac714bfbef2ec795d56b4615f7daeb98", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "b1689444f6fbc02af02c6a783580a6079aca0990933269ade74dd3d5934ac568", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "4ed6d378a5187701f96a317da444916077402718036e58ff5b21963e95defdad", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "eb319ca25408c10f705084ec0b9b93fc04671732660c31cbcf39fa917889842a", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "dfceb13fbfcc46e8fa2731bb2e6384aa19d5b642334843de510226d74fd9b4dc", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "ae5e3fe032629d6157696cc92da0d54360397f7b630a9843d2837bde8e861efd", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "cf777be0bb40d0dd0c591e1c0cc2a5431ff2a351e43546fb712acfc5137d8b6a", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "48c16170c320c412916651c21ea9e4258522689ccac21dd0cb6ee3149c1727ce", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "445fb843bcbcaa69f43754d5e495eebb9b56bf33ab779be3a78370845b568ad1" },
  { path := "CITATION.cff", sha256 := "672c1ebe9bad804d1e35c057f579cc1e48ebfe5fd4b09d8b30d5f86540ddb844" },
  { path := "REVIEWER_MAP.md", sha256 := "49b0c8a71903710be2d800f842cd91624c7a714c304f031ffc07526afa714791" },
  { path := "paper/COMPANION_FORMS_PREPRINT.md", sha256 := "cde12717965d99bdad9caddca768bf8b3b5114fe4848a934823d56c079bf80b7" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "a4e6005719526f60ee75beab4e4de2fdea7464a43b16169d106d7b7fabe4172e" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "0283332112032c72751dad8120028f1dae57caf6f49d5cdb595aa83d5e3d5999" },
  { path := "notes/EG1_public.md", sha256 := "31c2353ded3af7f2e267915fecb0855ff2e86eeb38d329d5b4b6ea64f3c63d4e" },
  { path := "notes/EG2_public.md", sha256 := "9bb56cafb0f189e62e9d17f3df21393f6aaa1261bdfe780ca42515d77907ff11" },
  { path := "notes/EG3_public.md", sha256 := "4c430a70a489c28546bf98faea8051e5a3ba01347cbc8915b6c622349ce4505b" },
  { path := "notes/EG4_public.md", sha256 := "b3d22aacf45e4f861d4b48f5169d7d52b427e003cc709e68d5aa4674e6f8ba64" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "90cef3d686e98bf9fc629e4bc88f841fac714bfbef2ec795d56b4615f7daeb98" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "1f93aec3d778efce70c21f3fe14ec1337ea85bc1786c6280607109f5472cabda" },
  { path := "scripts/cpf_closure_guard.py", sha256 := "7cdafd9cc9e449b348011a770a8b82cc5832ba6af491734349e883459f20ea23" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "bf4d511a0726ae34f5b7daaeb56d7a4190643ceedab40985510de9b68d585a6d" },
  { path := "repro/REPRO_PACK.md", sha256 := "fdb539adaf5366caa214fd366a3be921bba73000afd54cab1818980fe58f2542" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "5deb6cad666a2284e5fc0aeb7ff110e380bad8230a2b829254c5319cce51f88c" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "b1689444f6fbc02af02c6a783580a6079aca0990933269ade74dd3d5934ac568" },
  { path := "artifacts/constants_extracted.json", sha256 := "4ed6d378a5187701f96a317da444916077402718036e58ff5b21963e95defdad" },
  { path := "artifacts/constants_registry.json", sha256 := "eb319ca25408c10f705084ec0b9b93fc04671732660c31cbcf39fa917889842a" },
  { path := "artifacts/stitch_constants.json", sha256 := "dfceb13fbfcc46e8fa2731bb2e6384aa19d5b642334843de510226d74fd9b4dc" },
  { path := "artifacts/promotion_report.json", sha256 := "ae5e3fe032629d6157696cc92da0d54360397f7b630a9843d2837bde8e861efd" },
  { path := "repro/certificate_baseline.json", sha256 := "48c16170c320c412916651c21ea9e4258522689ccac21dd0cb6ee3149c1727ce" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "CPF_G1", status := "PASS" },
  { gate := "CPF_G2", status := "PASS" },
  { gate := "CPF_G3", status := "PASS" },
  { gate := "CPF_G4", status := "PASS" },
  { gate := "CPF_G5", status := "PASS" },
  { gate := "CPF_G6", status := "PASS" },
  { gate := "CPF_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_companion", value := "1.091838" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "sigma_weight", value := "1.075" },
  { key := "weight_lock", value := "1.02951" }
]

def bridgeConstantKeys : List String := [
  "automorphic_transfer",
  "eps_coh",
  "kappa_compact",
  "kappa_companion",
  "kappa_geometric",
  "rho_rigidity",
  "sigma_local",
  "sigma_star_can",
  "sigma_weight",
  "weight_lock"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 10 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end CompanionFormsCanonicalLaneLean
end HautevilleHouse
