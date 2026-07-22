FROM hexletbasics/base-image:latest

RUN apt-get update && apt-get install -y nim

WORKDIR /exercises-nim

COPY . .

ENV PATH=/exercises-nim/bin:$PATH
