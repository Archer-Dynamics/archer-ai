# Archer AI
---

Benchmark scripts, model evaluation tools, model-generated code, and prompt engineering 
experiments from the Archer Dynamics AI@Home series. Designed for local Ollama deployments 
on consumer hardware -- no cloud, no API costs, no data leaving your machine.

### What I Test

- **Code generation** -- Python functions, algorithms, and real-world coding tasks
- **Reasoning and explanation** -- can the model teach a concept, not just recite it?
- **Context stress** -- growing prompt size across runs to measure performance degradation
- **Consistency** -- do repeated runs produce stable, deterministic output?
- **Refactoring** -- can the model improve existing code without breaking it?
- **Tricky questions** -- edge cases and adversarial prompts designed to expose hallucinations
- **Tooling** -- function calling and structured output for agentic workflows *(planned)*
- **RAG** -- retrieval-augmented generation with local document stores *(planned)*
- **Multimodal** -- vision and audio tasks where hardware supports it *(planned)*

### How I Test

Each model runs the same benchmark prompt three times. Input context grows across runs 
to simulate real usage. I measure token throughput, VRAM usage, GPU utilization, 
total response time, and output quality. Hardware is a purpose-built local AI server 
with an RTX 5060 Ti 16GB. Full hardware specs are included in each benchmark article.

### What I'm Looking For

I don't chase benchmark numbers and will let others do that. Academic scores tell you 
how a model performs on carefully curated test sets -- not how it feels to actually use one. 
What I care about is whether the output is useful to a real person doing a real task: 
someone learning to code, building a local tool, or trying to understand a concept without 
a computer science degree. Speed matters, but a model that writes correct, well-explained code 
at 80 t/s beats one that generates confident nonsense at 200 t/s every single time.
If it doesn't work in the real world, the benchmark score is in my opinion more or less 
meaningless.

### Results and Articles

Full benchmark results and analysis published at goarcherdynamics.com.

# Repository Structure
---

benchmarks/          # Per-model benchmark runs and outputs
prompts/             # Reusable prompt templates
tools/               # Monitoring scripts and utilities


# Disclaimer
---

All code in this repository was developed by AI -- that is the purpose of this repo -- to help 
you see which model is better than others and what may be worth your time. Hopefully this 
helps you make an educated decision which model to invest your time in.
Logic, design, code modifications, and testing by Jiri Krecek / Archer Dynamics LLC.
Licensed under MIT -- free to use with attribution.

---

[goarcherdynamics.com](https://goarcherdynamics.com) · 
[LinkedIn](https://www.linkedin.com/company/archer-dynamics-llc) · 
[Mastodon](https://defcon.social/@jiri)
