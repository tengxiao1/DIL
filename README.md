## On a Connection Between Imitation Learning and RLHF

This repository contains the code for our ICLR 2025 paper [On a Connection Between Imitation Learning and RLHF](https://openreview.net/forum?id=2QdsjiNXgj). 


### Environment

First, install PyTorch `2.1.2` from the [PyTorch Installation Page](https://pytorch.org/get-started/locally/).

Create a Python virtual environment using e.g. Conda:

```shell
conda create -n DIL python=3.10 && conda activate DIL
```

```shell
python -m pip install flash-attn --no-build-isolation
```

## Training Scripts


* Mistral-Base:
```shell
bash Mistral-7B-Base.sh
```

* Llama3-Base:
```shell
bash Llama-8B-Base.sh
```


## Evaluation Benchmarks


* [Open LLM Leadboard v1](https://huggingface.co/spaces/open-llm-leaderboard-old/open_llm_leaderboard)

* [Open LLM Leadboard v2](https://huggingface.co/spaces/open-llm-leaderboard/open_llm_leaderboard) 




