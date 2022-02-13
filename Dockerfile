FROM python:3.10.2-bullseye

ENV PYTHONDONTWRITEBYTECODE 1

RUN pip install --upgrade pip build setuptools

WORKDIR /app
COPY . .

# Build sdist and wheel into dist/ folder
RUN python3 -m build

CMD ["bash"]