module "policy_repository_ingress_policy" {
  source = "./modules/policy_repository"

  name          = "ingress-policy"
  description   = "Policy to enforce requirements on Kubernetes Ingress resources."
  extra_topics  = [
    "ingress",
    "ingresses-resources",
  ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_pod_privileged_policy" {
  source = "./modules/policy_repository"

  name          = "pod-privileged-policy"
  description   = "A Kubewarden Policy written in AssemblyScript that limits the ability to create privileged containers"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_pod_runtime_class_policy" {
  source = "./modules/policy_repository"

  name          = "pod-runtime-class-policy"
  description   = "A Kubewarden Policy that controls the usage of Pod runtimeClass"

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_disallow_service_loadbalancer_policy" {
  source = "./modules/policy_repository"

  name          = "disallow-service-loadbalancer-policy"
  description   = "A policy that prevents the creation of Service resources with type LoadBalancer"
  extra_topics = [
    "open-policy-agent",
    "gatekeeper"
  ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_disallow_service_nodeport_policy" {
  source = "./modules/policy_repository"

  name          = "disallow-service-nodeport-policy"
  description   = "A policy that prevents the creation of Service resources with type NodePort"
  extra_topics = [
    "open-policy-agent",
    "gatekeeper"
  ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_user_group_psp_policy" {
  source = "./modules/policy_repository"

  name          = "user-group-psp-policy"
  description   = "This Kubewarden Policy is a replacement for the Kubernetes Pod Security Policy that controls containers user and groups"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_allow_privilege_escalation_psp_policy" {
  source = "./modules/policy_repository"

  name          = "allow-privilege-escalation-psp-policy"
  description   = "A Kubewarden Pod Security Policy that controls usage of allowPrivilegeEscalation"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_allowed_fsgroups_psp_policy" {
  source = "./modules/policy_repository"

  name          = "allowed-fsgroups-psp-policy"
  description   = "Replacement for the Kubernetes Pod Security Policy that controls the usage of fsGroup in the pod security context"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_allowed_proc_mount_types_psp_policy" {
  source = "./modules/policy_repository"

  name          = "allowed-proc-mount-types-psp-policy"
  description   = "Replacement for the Kubernetes Pod Security Policy that controls the usage of /proc mount types"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_apparmor_psp_policy" {
  source = "./modules/policy_repository"

  name          = "apparmor-psp-policy"
  description   = "A Kubewarden Pod Security Policy that controls usage of AppArmor profiles"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_capabilities_psp_policy" {
  source = "./modules/policy_repository"

  name          = "capabilities-psp-policy"
  description   = "A Pod Security Policy that controls Container Capabilities"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_flexvolume_drivers_psp_policy" {
  source = "./modules/policy_repository"

  name          = "flexvolume-drivers-psp-policy"
  description   = "Replacement for the Kubernetes Pod Security Policy that controls the allowed `flexVolume` drivers"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_host_namespaces_psp_policy" {
  source = "./modules/policy_repository"

  name          = "host-namespaces-psp-policy"
  description   = "Replacement for the Kubernetes Pod Security Policy that controls the usage of host namespaces"
  extra_topics  = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_hostpaths_psp_policy" {
  source = "./modules/policy_repository"

  name                = "hostpaths-psp-policy"
  description         = "Replacement for the Kubernetes Pod Security Policy that controls the usage of hostpaths"
  extra_topics        = [ "pod-security-policy" ]
  template            = [{
    owner      = "kubewarden"
    repository = "go-policy-template"
  }]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_selinux_psp_policy" {
  source = "./modules/policy_repository"

  name                = "selinux-psp-policy"
  description         = "Replacement for the Kubernetes Pod Security Policy that controls the usage of SELinux"
  extra_topics        = [ "pod-security-policy" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_sysctl_psp_policy" {
  source = "./modules/policy_repository"

  name                = "sysctl-psp-policy"
  description         = "A Kubewarden policy that controls usage of sysctls"
  extra_topics        = [ "pod-security-policy" ]
  template            = [{
    owner      = "kubewarden"
    repository = "go-policy-template"
  }]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_volumes_psp_policy" {
  source = "./modules/policy_repository"

  name                = "volumes-psp-policy"
  description         = "Replacement for the Kubernetes Pod Security Policy that controls the usage of volumes"
  extra_topics        = [ "pod-security-policy" ]
  template            = [{
    owner      = "kubewarden"
    repository = "go-policy-template"
  }]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_safe_annotations_policy" {
  source = "./modules/policy_repository"
  name          = "safe-annotations-policy"
  description   = "Kubewarden policy that validates Kubernetes' resource annotations"
  extra_topics  = [ "kubernetes-compliance" ]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_safe_labels_policy" {
  source = "./modules/policy_repository"
  name          = "safe-labels-policy"
  description   = "Kubewarden policy that validates Kubernetes' resource annotations"
  extra_topics  = [ "kubernetes-compliance" ]
  template      = [{
    owner      = "kubewarden"
    repository = "go-policy-template"
  }]

  providers = {
    github = github.kubewarden
  }
}

module "policy_repository_trusted_repos_policy" {
  source = "./modules/policy_repository"
  name          = "trusted-repos-policy"
  description   = "A Kubewarden policy that restricts what registries, tags and images can pods on your cluster refer to"
  extra_topics  = [ "kubernetes-compliance" ]

  providers = {
    github = github.kubewarden
  }
}