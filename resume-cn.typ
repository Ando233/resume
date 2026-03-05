#import "chicv.typ": *

#show: chicv

#let private_info = json("resume-private/private_info.json")
#let resume_name = private_info.name_cn
#let resume_phone = private_info.phone

= #redact(alter: "ando")[#resume_name]

  #fa[#phone] #redact(mark: true)[#resume_phone] |
  #fa[#envelope] flairando\@gmail.com |
  #fa[#github] #link("https://github.com/Ando233")[ando] |
  #fa[#globe] #link("https://ando233.github.io/")[ando233.github.io]

  == #fa[#graduation-cap] 教育背景

    #cventry(
        tl: [北京航空航天大学],
        tr: [2024.09 - 2027.06（预计）],
    )[
      硕士，软件学院｜#link("http://www.ldmcnlp.com/about/")[LDMC Lab]，导师：牛#redact(mark: true)[建伟]｜研究方向为*图像生成*与*多模态大模型*。 #linebreak()
    //   助教工作：编译原理（2024 春）
    ]
    #cventry(
        tl: [北京航空航天大学],
        tr: [2020.09 - 2024.06],
    )[
        本科，软件学院｜GPA: 3.79/4.00；*优秀毕业生* / 全国大学生数学建模大赛国家级一等奖 / 计算机系统能力大赛编译赛一等奖 /。#linebreak()
        助教工作：分布式系统（2023 秋），编译原理（2023 秋，2024 春）
    ]

  == #fa[#flask] 学术成果

    #cventry(
        tl: [SREdit],
        tr: [IJCAI 2026 · Under Review · First Author],
    )[
        *SREdit: A Self-Rewarding Framework Aligning Understanding and Evaluation in Reinforcement Learning for Image Editing* #linebreak()
        - 提出 *Self-Rewarding RL Framework*，统一 MLLM 指令理解与 Reward 评估，系统分析并解决 MLLM–DiT 架构中的 Understanding–Evaluation mismatch 问题；
        - 提出 *Region-aware Reward Reweighting*，基于 cross-attention 引导强化学习空间加权优化，提高局部编辑精度；
        - 构建 40K 人类偏好编辑数据集，在 GEdit-Bench / ImgEdit-Bench / KRIS-Bench 上分别提升 *3.8% / 2.5% / 3.8%*；
    ]

    #cventry(
        tl: [FedPDG],
        tr: [ICML 2026 · Under Review · First Author],
    )[
    *FedPDG: Prediction Discrepancy–Guided Diffusion for Heterogeneous Federated Learning* #linebreak()
        - 用Diffusion models为联邦学习中的客户端生成额外训练数据，从而解决客户端间的数据异质性问题；
        - 基于 DPO 范式对 Diffusion Model 进行 LoRA 微调，使模型优先生成客户端相对于全局缺失的样本；
        - Reward 设计利用global model和client model对于生成数据的 *Prediction Discrepancy*，引导模型生成更符合客户端需求的样本；
    ]

  == #fa[#briefcase] 工作经历

    // #cventry(
    //     tl: [腾讯安全],
    //     bl: [云鼎实验室],
    //     br: [安全技术（青云计划）],
    //     tr: [待入职],
    // )[]

    #cventry(
        tl: [美团],
        bl: [数字人与创意生成组],
        br: [AIGC 算法实习生],
        tr: [2024.10 - 至今]
    )[
        - 参与 AIGC 漫剧生成方向的核心算法研发，基于 *QwenImageEdit* 构建多元素融合生成框架，重点解决多角色/多资产在单帧内的结构对齐与语义一致性问题，生成一致性指标较 baseline 提升 *20%+*

        - 主R 影视综长视频的自动化剪辑项目，结合 *ASR / 声纹检测 / VLM* 构建从素材解析到成片输出的端到端 pipeline，实现“高光前置”的短视频生成策略。目前已线上落地，支持日均处理视频 *1k+* 条，较人工剪辑效率提升 *8x*，短视频播放完成率提升约 *12%*。

        - 主R 节日氛围感图像可控编辑项目：针对国内传统节日，构建专属图像编辑数据集，基于Kontext / QwenImageEdit 进行 *LoRA微调和FlowGRPO强化学习* 训练，实现对酒旅商家宣传图插入特定节日氛围感的元素。
    ]

    #cventry(
        tl: [清研兰亭],
        bl: [知识智能与检索组],
        br: [大语言模型算法实习生],
        tr: [2023.10 - 2024.02]
    )[
        - 参与企业级知识图谱与智能问答系统的算法研发，构建面向企业文档与资料的语义匹配与检索框架；
        - 构建“jieba分词召回 + llama2 精排”的两阶段架构，提高资料定位的准确率与响应效率（内部评测准确率提升约 *15%*）。
    ]

//   == #fa[#project-diagram] 个人项目

//     #cventry(
//         tl: [Vizsla],
//         bl: [面向芯片前端设计的现代化 IDE · 硕士毕设项目],
//         br: [Rust / SystemVerilog],
//         tr: [#ghrepo("roife/vizsla") (WIP)],
//     )[
//         - 实现了一套面向可综合 SystemVerilog 的*语义分析框架*以及 IDE 基础设施，旨在为芯片设计配备现代 IDE 功能；
//         - 基于*增量计算*架构，设计并实现了一套增量分析 IR 和增量分析 pass，使得代码分析器无需全量更新即可得到准确的分析结果；
//         - 项目在功能、性能等指标上均达到*业界先进水平*：已完成面向 SystemVerilog 的代码导航、语义重构、代码补全、诊断等*数十项*现代 IDE 特性，并能够利用增量语义分析在各项功能上做到*毫秒级*延迟；基于语言服务器协议，适配 VS Code、Emacs 等主流编辑器；
//     ]

    // #cventry(
    //     tl: [Ailurus],
    //     bl: [编程语言及工具链设计探索 · 个人兴趣项目],
    //     br: [Rust],
    //     tr: [#ghrepo("roife/ailurus")],
    // )[
    //     - 基于 *Martin-Löf 类型论*；支持 *dependent type*、dependent pattern matching、inductive datatype 等特性。实现了 propositional equality，使用 Normalization by Evaluation 进行等价检查，可实现简单的定理证明；
    //     - 采用基于 *typeclass* 的 ad-hoc polymorphism，并基于此实现了*运算符重载*；实现了 *module system*，支持代码的命名空间和封装；
    //     - 旨在作为实验平台，探索现代编程语言工具链（如编译器、IDE 等）的协同设计架构，提高编程语言开发的效率和可维护性。
    // ]

    // #cventry(
    //      tl: [Ayame],
    //      bl: [SysY（C 子集）到 ARMv7 的编译器 · 全国大学生系统能力竞赛（编译器设计）比赛项目],
    //      br: [Java / LLVM-IR / ARM],
    //      tr: ghrepo("No-SF-Work/ayame"),
    //  )[
    //      - 合作项目，个人主要负责编写面向 Machine IR 和体系结构的后端优化和代码生成，完成了基于图着色的*迭代寄存器合并*算法、*指令调度*、*死代码删除*、窥孔优化等，同时参与了部分块的编写；
    //      - 同时负责项目的测试和 DevOps，利用 docker 和 GitLab CI 搭建了测试流程，并编写了 Python 脚本自动分析测试结果；
    //      - 项目从零开始，完成了从语法解析到代码生成的完整编译器 pipeline，编写了大量 SSA IR 与 Machine IR 上的优化，最终在比赛中获一等奖。本项目在比赛中总排名第二，在*近一半样例上排名第一*，并在 1/3 的样例上优化效果超越 `gcc -O3` 与 `clang -O3`。
    // ]


    #cventry(
        tl: [#fa[#code.branch] 开源社区贡献],
    )[
        - 向 #ghrepo("huggingface/diffusers") (32.9k+ stars) 提交并合并 PR #link("https://github.com/huggingface/diffusers/pull/13046")[#13046]，复现并工程化论文《Diffusion Transformers with Representation Autoencoders》核心方法；
        - 维护 #ghrepo("duoan/TorchCode") (400+ stars), 贡献若干常见算子、模块等，包含grpo_loss、DiT Block等；
    ]

  == #fa[#laptop.code] 专业技能

    #grid(
        columns: (auto, auto),
        align: (right, left),
        row-gutter: 11pt,
        gutter: 8pt,
        [*编程语言*], [能力不局限于特定编程语言。熟悉 Python, C, C++, Java等常见语言；熟悉 Shell、Git 工作流；],
        [*生成模型与扩散模型*], [
            - 深入理解 Diffusion Models：SDE / ODE 视角、Score-based Modeling、Flow Matching；
            - 具备 LoRA / DPO 微调 diffusion model 实践经验；
        ],
        [*多模态与大模型*], [
            - 熟悉 VLM 架构（Qwen系列, LLaMA 系列等）；
            - 熟悉 PPO / GRPO 等策略优化方法；
        ],
        // [*应用开发*], [熟悉 PyTorch / Accelerate / DeepSpeed 分布式训练；熟悉 diffusers / transformers 等生成框架底层实现；熟悉 ComfyUI 与生成式工作流搭建；],
        // [*开发环境*], [熟悉 VS Code / Cursor，习惯在 macOS / Linux 下工作；熟练使用生成式 AI 工具提高效率。],
    )
//   == #fa[#th.list] 技术传播与分享
//     #cventry(
//         tl: [生成模型领域自媒体创作者],
//     )[
//         - 系统讲解最新 Diffusion / 多模态模型与前沿论文；
//         - 开设 “From Scratch” 系列，逐步实现 diffusion / LLM 等核心模块；
//         - 深度拆解主流开源项目，分析其训练与推理机制；
//     ]
//   == #fa[#th.list] 其他

//     - *Talks*：
//       - _Exploring rust-analyzer: from Incremental Computation to Modern IDE_ (RustChinaConf 2025)
