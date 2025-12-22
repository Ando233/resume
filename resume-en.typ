#import "chicv.typ": *

#show: chicv
#set par(justify: true, leading: 0.7em)
#set list(marker: ([•], [‣]), spacing: 0.75em)

#let private_info = json("resume-private/private_info.json")
#let resume_name = private_info.name_en
#let resume_phone = private_info.phone

= #redact(alter: "roife")[#resume_name]

  #fa[#phone] #redact(mark: true)[#resume_phone] |
  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io")[roife.github.io]

  == #fa[#graduation-cap] Education

    #cventry(
        tl: [Nanjing University],
        tr: [2023.09 - 2026.06 (expected)],
    )[
      Master's Degree in #emph[Computer Science and Technology] | #link("https://pascal-lab.net")[PASCAL Lab]. Advisor: #redact(mark: true)[Yue] Li | Research focus on *PL* and *Program Analysis*. #linebreak()
      Teaching Assistant: *Principles and Techniques of Compilers* (Spring 2024)
    ]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
    )[
        Bachelor's Degree in #emph[Computer Science and Technology] | GPA 3.84/4.00; awarded *National Scholarship*, *Outstanding Graduate*, and First Prize in the 2021 #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition]. #linebreak()
        Teaching Assistant: *Programming in Practice* (Fall 2020), *Object-oriented Design and Construction* (Fall 2021, Spring 2022)
    ]

  == #fa[#briefcase] Work Experience

    #cventry(
        tl: [Tencent],
        bl: [Yunding Lab],
        br: [Security Technology (Tencent 2026 Project UP)],
        tr: [Incoming],
    )[]

    #cventry(
        tl: [NVIDIA],
        bl: [OCG (Optimizing Code Generator) team],
        br: [GPU Compiler LLVM Backend Intern],
        tr: [2025.02 - Present]
    )[
        - Led the integration of the memory instruction vectorizer between the NVIDIA GPU graphics compiler and NVVM to align with LLVM upstream and reduce maintenance overhead:
          - Designed an encoding scheme for *multi-address graphics memory instructions* to reuse LLVM's memory-access vectorization pipeline;
          - Added alias analysis support for graphics instructions, including detailed analysis of BasicAA and SCEVAA to support new intrinsics;
          - Improved LLVM's alignment inference by solving GCDs of SCEV expressions to infer alignment for loop induction variables;
          - Implemented *more than 10* vectorization optimizations for graphics memory instructions, including *irregular access sequence padding* and *integer address vectorization*, improving vectorization success rate by *40%*;
        - Contributed to graphics compiler maintenance, fixing multiple bugs in Vectorization and SCEV optimizations;
    ]

    #cventry(
        tl: [#link("https://foundation.rust-lang.org/news/announcing-the-rust-foundation-s-2024-fellows/")[Rust Foundation Fellowship Program]],
        bl: [Rust Foundation Fellowship (approximately 20 fellows globally)],
        br: [Project Fellow],
        tr: [2024.09 - 2025.09]
    )[
        - Member of the #link("https://www.rust-lang.org/governance/teams/compiler#team-rust-analyzer-contributors", [#fa[#rust] *Rust-lang Organization*]) (rust-analyzer-contributors-team) and a *maintainer* of the official Rust IDE #ghrepo("rust-lang/rust-analyzer", icon: false), ranked in the *top 1%* of contributors; handled issues and PR reviews;
        - Delivered features such as control-flow highlighting, and resolved numerous bugs to improve code understanding and code generation;
        - Implemented a *SIMD* NEON version of the Unicode line-breaking module, achieving a *6.5x* speedup on ARM;
        - *Incident response for v0.3.1992*: Identified a dependency-graph search flaw within *3 hours* and designed a new algorithm to resolve a critical resource-exhaustion bug discovered four hours after release, containing the impact on the community.
    ]

  == #fa[#project-diagram] Projects

  #cventry(
      tl: [Vizsla],
      bl: [Modern IDE for Chip Frontend Design · Master's Thesis Project],
      br: [Rust / SystemVerilog],
      tr: [#ghrepo("roife/vizsla") (WIP)],
  )[
      - Implemented a *semantic analysis framework* and IDE infrastructure for *synthesizable SystemVerilog*, enabling modern IDE capabilities for chip frontend design;
      - Based on an *incremental computation*, designed and implemented an IDE IR and passes for efficient and accurate on-demand analysis;
      - Project achieves *industry-leading standards* in functionality, performance, and usability: completed *dozens of* modern IDE features for SystemVerilog, including code navigation, semantic refactoring, and completion with *millisecond-level* latency;
      - Based on the Language Server Protocol, compatible with VS Code, Emacs, NeoVim, and other mainstream editors.
  ]

  #cventry(
      tl: [Ailurus],
      bl: [Experimental Programming Language and Toolchain Design · Personal Interest Project],
      br: [Rust],
      tr: [#ghrepo("roife/ailurus")],
  )[
      - Based on *Martin-Löf type theory*, supporting *dependent types*, dependent pattern matching, and inductive datatypes. Implements propositional equality and uses Normalization by Evaluation for equivalence checking, enabling simple theorem proving;
      - Features *typeclass-based ad-hoc polymorphism* with *operator overloading* for flexible code reuse;
      - Implemented a *module system* for namespace management and encapsulation, addressing code organization in large projects;
      - Serves as an experimental platform to explore collaborative design architectures for modern programming language toolchains (compilers, IDEs), aiming to enhance development efficiency and maintainability.
  ]

  #cventry(
      tl: [Ayame],
      bl: [Compiler from SysY (C subset) to ARMv7 · Bisheng Cup Competition Project],
      br: [Java / LLVM-IR / ARM],
      tr: ghrepo("No-SF-Work/ayame"),
  )[
      - Collaborative project with primary responsibility for backend optimizations and code generation, including Machine IR and architecture-level optimizations such as *iterative register coalescing*, *instruction scheduling*, dead code elimination, and peephole optimizations; contributed to selected frontend modules;
      - Led testing and DevOps, building CI pipelines with Docker and GitLab CI and writing Python scripts to automate test analysis;
      - Built from scratch with a full compiler pipeline (parsing to code generation) and extensive SSA and Machine IR optimizations. Ranked *1st in nearly half of the test cases*, *2nd overall*, and outperformed `gcc -O3` and `clang -O3` on one-third of the benchmarks.
  ]

  #cventry(
      tl: [#fa[#code.branch] Open Source Contributions],
  )[
      - *#fa[#rust] Rust Organization* (#link("https://www.rust-lang.org/governance/teams/compiler#team-rust-analyzer-contributors", [rust-analyzer contributors team])) member, primarily maintaining #ghrepo("rust-lang/rust-analyzer"); also contributed to #ghrepo("rust-lang/rust"), #ghrepo("rust-lang/rust-clippy"), #ghrepo("rust-lang/rustup"), #ghrepo("rust-lang/rust-mode");
      - #ghrepo("llvm/llvm-project"), #ghrepo("clangd/vscode-clangd"), #ghrepo("LuaLS/lua-language-server"), #ghrepo("google/autocxx"), #ghrepo("yuin/goldmark"), #ghrepo("moonbitlang/tree-sitter-moonbit"), #link("https://github.com/roife")[see more projects on GitHub].
  ]

  == #fa[#laptop.code] Skills

    - *Programming Languages*: Language-agnostic; proficient in C, C++, Rust, Java, Python, JavaScript/TypeScript, Verilog/SystemVerilog, and EmacsLisp; additional experience with Ruby, Swift, OCaml, Haskell, Coq, Agda, etc.
    - *Programming Language Theory*: Formal semantics, type theory, computation models, and automata; experience with proof assistants such as Coq and Agda; strong background in type systems (Hindley-Milner, subtyping, System F, dependent types).
    - *Static Analysis*: Core algorithms including data-flow analysis, control-flow analysis, IFDS, and pointer analysis with varying sensitivities.
    - *Compiler Design*: *3 years of experience*. End-to-end compiler development from parsing to code generation; proficient with multiple IRs (ANF, SSA, CPS) and LLVM/MLIR; extensive experience in middle-end and backend optimizations (Mem2Reg, GVN, register allocation, list scheduling, etc.).
    - *IDE Development*: *2 years of experience*. Incremental computation and LSP-based IDE architecture; familiar with rust-analyzer and clangd.
    - *Application Development*: Ruby on Rails, Django, SwiftUI; PostgreSQL and Redis; DevOps tooling including Docker and CI/CD.
    - *Development Environment*: Proficient in Emacs and VS Code; primarily macOS/Linux; effective use of generative AI tools.

  == #fa[#th.list] Misc

    - *Talks*: _Exploring rust-analyzer: from Incremental Computation to Modern IDE_ (RustChinaConf 2025)
