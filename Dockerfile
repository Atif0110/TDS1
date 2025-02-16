# Use an official Python runtime as base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install required Python packages manually
RUN pip install --upgrade pip && \
    pip install \
    annotated-types==0.7.0 \
    anyio==4.8.0 \
    api==0.0.7 \
    beautifulsoup4==4.13.0 \
    blinker==1.9.0 \
    bs4==0.0.2 \
    certifi==2025.1.31 \
    charset-normalizer==3.4.1 \
    click==8.1.8 \
    colorama==0.4.6 \
    distro==1.9.0 \
    duckdb==1.2.0 \
    Faker==36.1.1 \
    fastapi==0.115.8 \
    filelock==3.17.0 \
    Flask==2.3.2 \
    Flask-Cors==4.0.0 \
    fsspec==2025.2.0 \
    fuzzywuzzy==0.18.0 \
    h11==0.14.0 \
    httpcore==1.0.7 \
    httpx==0.28.1 \
    huggingface-hub==0.28.1 \
    idna==3.10 \
    itsdangerous==2.2.0 \
    Jinja2==3.1.5 \
    jiter==0.8.2 \
    joblib==1.4.2 \
    Levenshtein==0.26.1 \
    Markdown==3.7 \
    MarkupSafe==3.0.2 \
    mpmath==1.3.0 \
    networkx==3.4.2 \
    nose==1.3.7 \
    numpy==2.2.2 \
    openai==1.61.0 \
    packaging==24.2 \
    pandas==2.2.3 \
    pillow==11.1.0 \
    pydantic==2.10.6 \
    pydantic_core==2.27.2 \
    python-dateutil==2.9.0.post0 \
    python-dotenv==1.0.1 \
    python-Levenshtein==0.26.1 \
    pytz==2024.2 \
    PyYAML==6.0.2 \
    RapidFuzz==3.12.1 \
    regex==2024.11.6 \
    requests==2.32.3 \
    safetensors==0.5.2 \
    scikit-learn==1.6.1 \
    scipy==1.15.1 \
    sentence-transformers==3.4.1 \
    setuptools==75.8.0 \
    six==1.17.0 \
    sniffio==1.3.1 \
    soupsieve==2.6 \
    starlette==0.45.3 \
    sympy==1.13.1 \
    threadpoolctl==3.5.0 \
    tiktoken==0.8.0 \
    tokenizers==0.21.0 \
    torch==2.6.0 \
    tqdm==4.67.1 \
    transformers==4.48.2 \
    typing_extensions==4.12.2 \
    tzdata==2025.1 \
    urllib3==2.3.0 \
    uv==0.6.0 \
    uvicorn==0.34.0 \
    Werkzeug==3.1.3

# Copy all project files into the container
COPY . .

# Command to run the app
CMD ["python", "main.py"]
