# Claude Code Unified Agents 🤖

A comprehensive collection of specialized Claude Code sub-agents combining the best features from multiple community repositories. This unified collection provides 54 production-ready agents across development, infrastructure, quality, AI/ML, business, creative, meta-management, and specialized domains.

## 🌟 Features

- **54 Production-Ready Agents**: Comprehensive coverage across all technical, business, and specialized domains
- **Smart Orchestration**: Master orchestrator for complex multi-agent workflows
- **Category Organization**: Agents organized by expertise domain for easy discovery
- **Deep Specialization**: Each agent includes 1000+ lines of production-ready code examples
- **Flexible Tool Access**: Configurable tool permissions per agent
- **Best Practices**: Each agent follows industry best practices and patterns
- **Meta-Management**: Advanced agents for context management, workflow optimization, and automation

## 📚 Agent Categories

### 🔧 Development (14 agents)
- `backend-architect` - API design, microservices, database architecture
- `frontend-specialist` - React, Vue, Angular, modern UI frameworks
- `python-pro` - Advanced Python, async programming, optimization
- `fullstack-engineer` - End-to-end application development
- `mobile-developer` - iOS, Android, React Native, Flutter
- `blockchain-developer` - Smart contracts, Web3, DeFi
- `database-specialist` - SQL/NoSQL design, optimization, management
- `rust-pro` - Systems programming, memory safety, WebAssembly
- `golang-pro` - Concurrent programming, microservices, cloud-native
- `typescript-pro` - Advanced type systems, large-scale applications
- `javascript-pro` - Modern ES6+, async programming, Node.js
- `java-enterprise` - Spring Boot, microservices, JVM optimization
- `nextjs-pro` - Next.js 14+, App Router, React Server Components
- `react-pro` - Advanced hooks, performance, state management
- `vue-specialist` - Vue 3, Composition API, Nuxt 3, Pinia
- `angular-expert` - Angular 17+, signals, RxJS, enterprise apps

### 🏗️ Infrastructure (7 agents)
- `devops-engineer` - CI/CD, containerization, Kubernetes
- `cloud-architect` - AWS, GCP, Azure architecture and optimization
- `incident-responder` - Production debugging, log analysis, recovery
- `performance-engineer` - Profiling, optimization, load testing
- `monitoring-specialist` - Observability, metrics, alerting
- `deployment-manager` - Release orchestration, rollback strategies
- `kubernetes-expert` - K8s configuration, helm charts, operators

### ✅ Quality (6 agents)
- `code-reviewer` - Code quality, security, best practices review
- `security-auditor` - Vulnerability assessment, penetration testing
- `test-engineer` - Test automation, strategies, frameworks
- `e2e-test-specialist` - Playwright, Cypress, test strategies
- `performance-tester` - Load testing, stress testing, benchmarking
- `accessibility-auditor` - WCAG compliance, screen reader testing
- `performance-optimizer` - Performance analysis and optimization

### 🤖 Data & AI (6 agents)
- `ai-engineer` - LLMs, computer vision, NLP, ML systems
- `data-engineer` - ETL pipelines, data warehouses, big data
- `data-scientist` - Statistical analysis, ML models, visualization
- `mlops-engineer` - ML pipelines, experiment tracking, deployment
- `prompt-engineer` - LLM optimization, RAG systems, fine-tuning
- `analytics-engineer` - dbt, data modeling, BI tools
- `data-scientist` - Statistical analysis, predictive modeling
- `mlops-engineer` - ML deployment, monitoring, lifecycle

### 💼 Business & Process (8 agents)
- `project-manager` - Agile, sprint planning, coordination
- `product-strategist` - Market analysis, roadmapping, metrics
- `business-analyst` - Business process optimization, gap analysis, ROI calculations
- `technical-writer` - Technical documentation, multi-format support, API docs
- `requirements-analyst` - Requirements engineering, user stories, traceability
- `api-designer` - OpenAPI/GraphQL specs, REST design, SDK generation

### 🎨 Creative
- `ux-designer` - User experience, wireframing, design systems
- `ui-designer` - Visual design, component libraries
- `content-strategist` - Content planning, SEO, marketing

### 🧠 Meta-Management (5 agents)
- `context-manager` - Session continuity, memory optimization, distributed state
- `workflow-optimizer` - CI/CD optimization, build performance, pipeline efficiency
- `agent-generator` - Dynamic agent creation, DSL implementation, templates
- `error-detective` - Root cause analysis, stack trace forensics, pattern matching
- `documentation-writer` - Automated docs generation, multiple output formats

### 🔮 Specialized Domains (10 agents)
- `blockchain-developer` - Web3, smart contracts, DeFi
- `mobile-developer` - Native and cross-platform mobile
- `game-developer` - Unity, Unreal Engine 5, Godot 4, procedural generation
- `iot-engineer` - Embedded systems, edge computing
- `embedded-engineer` - Arduino, Raspberry Pi, STM32, real-time systems
- `fintech-specialist` - Payment systems, PCI DSS compliance, fraud detection
- `healthcare-dev` - HIPAA/FHIR compliance, EHR systems, medical device integration
- `ecommerce-expert` - Shopping carts, checkout optimization, inventory management

## 🚀 Installation

### Quick Install (Recommended)

```bash
# Clone the repository
git clone https://github.com/stretchcloud/claude-code-unified-agents.git

# Run the installation script
cd claude-code-unified-agents
./scripts/install.sh

# Or for specific agents only
./scripts/install.sh --agents backend-architect,frontend-specialist
```

### Manual Installation

1. **Project-level agents** (for current project only):
```bash
# Create agents directory in your project
mkdir -p .claude/agents

# Copy desired agents
cp -r claude-code-unified-agents/claude-code-unified-agents/.claude/agents/* .claude/agents/
```

2. **User-level agents** (available in all projects):
```bash
# Create global agents directory
mkdir -p ~/.claude/agents

# Copy all agents
cp -r claude-code-unified-agents/claude-code-unified-agents/.claude/agents/* ~/.claude/agents/
```

## 📖 Usage

### Interactive Selection

Use the `/agents` command in Claude Code to interactively browse and select agents:

```
/agents
```

### Automatic Agent Selection

Claude will automatically select the most appropriate agent based on your request:

```
"Help me design a REST API for user management"
→ Automatically uses backend-architect
```

### Explicit Agent Invocation

Directly request a specific agent:

```
"@frontend-specialist create a React component for user authentication"
```

### Multi-Agent Orchestration

For complex tasks, use the orchestrator:

```
"@orchestrator Build a complete e-commerce platform with payment integration"
```

The orchestrator will:
1. Analyze requirements
2. Create a delegation plan
3. Coordinate multiple agents
4. Integrate results

## 🎯 Agent Examples

### Backend Development
```
@backend-architect Design a scalable microservices architecture for a social media platform
```

### Frontend Development
```
@frontend-specialist Build a responsive dashboard with React and TypeScript
```

### DevOps & Deployment
```
@devops-engineer Set up CI/CD pipeline with GitHub Actions and deploy to AWS
```

### AI/ML Implementation
```
@ai-engineer Implement a RAG system using OpenAI and Pinecone
```

### Code Review
```
@code-reviewer Review this Python code for security vulnerabilities and performance issues
```

### Meta-Management
```
@context-manager Resume my previous session and restore all context
@workflow-optimizer Optimize our CI/CD pipeline for faster builds
@error-detective Analyze this stack trace and find the root cause
```

### Specialized Domains
```
@game-developer Create a multiplayer game with Unity networking
@embedded-engineer Build an IoT sensor network with ESP32
@fintech-specialist Implement PCI-compliant payment processing
@healthcare-dev Create a FHIR-compliant patient management system
@ecommerce-expert Build a scalable shopping cart with inventory management
```

## 🛠️ Configuration

### Agent Structure

Each agent follows this structure:

```markdown
---
name: agent-name
description: When this agent should be used
category: category-name
color: visual-color
tools: Tool1, Tool2, Tool3  # Optional, defaults to all tools
---

[System prompt defining the agent's expertise and approach]
```

### Creating Custom Agents

1. Create a new markdown file in the appropriate category:
```bash
touch .claude/agents/development/my-custom-agent.md
```

2. Define the agent:
```markdown
---
name: my-custom-agent
description: Specialized in specific domain
category: development
tools: Write, Read, MultiEdit
---

You are an expert in [domain]...
```

### Tool Access Control

Available tools:
- `Write` - Create and write files
- `Read` - Read file contents
- `MultiEdit` - Multiple edits in one operation
- `Bash` - Execute shell commands
- `Grep` - Search file contents
- `Glob` - Find files by pattern
- `Task` - Delegate to other agents

## 🔄 Workflow Examples

### Full Stack Application

```mermaid
graph LR
    O[Orchestrator] --> PS[product-strategist]
    PS --> BA[backend-architect]
    PS --> UX[ux-designer]
    BA --> BE[backend-engineer]
    UX --> FE[frontend-specialist]
    BE --> TE[test-engineer]
    FE --> TE
    TE --> CR[code-reviewer]
    CR --> DO[devops-engineer]
```

### Code Review Pipeline

```mermaid
graph LR
    C[Code] --> CR[code-reviewer]
    CR --> SA[security-auditor]
    SA --> PO[performance-optimizer]
    PO --> R[Report]
```

## 📊 Agent Capabilities Matrix

### Core Development
| Agent | Languages | Frameworks | Specialization |
|-------|-----------|------------|----------------|
| backend-architect | Python, Node, Go | Django, Express, Gin | Microservices, APIs |
| frontend-specialist | JS/TS, React | Next.js, Vue, Angular | UI/UX, Performance |
| fullstack-engineer | JS/TS, Python | MERN, Django+React | End-to-end apps |
| mobile-developer | Swift, Kotlin, Dart | iOS, Android, Flutter | Native & Cross-platform |

### Infrastructure & DevOps
| Agent | Tools | Platforms | Focus |
|-------|-------|-----------|--------|
| devops-engineer | Docker, K8s, Terraform | AWS, GCP, Azure | CI/CD, IaC |
| cloud-architect | CloudFormation, ARM | Multi-cloud | Architecture, Cost |
| kubernetes-expert | Helm, Operators | K8s, OpenShift | Container orchestration |
| monitoring-specialist | Prometheus, Grafana | DataDog, New Relic | Observability |

### Specialized Domains
| Agent | Technologies | Compliance | Industry Focus |
|-------|--------------|------------|----------------|
| fintech-specialist | Stripe, PayPal, Blockchain | PCI DSS, SOX | Payments, Banking |
| healthcare-dev | HL7, FHIR, DICOM | HIPAA, GDPR | EHR, Medical devices |
| ecommerce-expert | Shopify, WooCommerce | PCI, GDPR | Retail, Marketplaces |
| game-developer | Unity, Unreal, Godot | Platform-specific | Gaming, Interactive |
| embedded-engineer | C/C++, Arduino, Pi | Safety standards | IoT, Real-time |

### Meta-Management
| Agent | Capabilities | Use Cases |
|-------|-------------|-----------|
| context-manager | Session persistence, Memory optimization | Long-running projects |
| workflow-optimizer | Pipeline optimization, Performance tuning | CI/CD improvement |
| agent-generator | Dynamic agent creation, Template generation | Custom workflows |
| error-detective | Root cause analysis, Pattern detection | Debugging, Troubleshooting |
| documentation-writer | Multi-format generation, API docs | Automated documentation |

## 🤝 Contributing

We welcome contributions! To add new agents:

1. Fork the repository
2. Create your agent in the appropriate category
3. Follow the existing agent structure
4. Test your agent thoroughly
5. Submit a pull request

## 📄 License

MIT License - See LICENSE file for details

## 🔗 Resources

- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [Sub-Agents Guide](https://docs.anthropic.com/en/docs/claude-code/sub-agents)
- [Community Discord](https://discord.gg/claude-code)

## ⚡ Quick Start

```bash
# Install all agents
curl -sSL https://raw.githubusercontent.com/stretchcloud/claude-code-unified-agents/main/scripts/quick-install.sh | bash

# Start using agents
claude "Build a REST API with authentication"
```

## 📈 Recent Updates

### v2.0 - Major Expansion (Latest)
- Added 5 **Meta-Management Agents** for advanced workflow automation
- Added 4 **Business & Process Agents** for requirements and documentation
- Added 5 **Specialized Domain Agents** with deep industry expertise
- Each new agent includes 1000+ lines of production-ready code
- Enhanced agent capabilities with real-world implementation examples

### Key Highlights
- **54 Total Agents** across 8 categories
- **Production-Ready Code**: Each agent includes comprehensive, tested implementations
- **Industry Compliance**: HIPAA, PCI DSS, GDPR compliance where applicable
- **Enterprise Features**: Scalability, security, and best practices built-in

---

