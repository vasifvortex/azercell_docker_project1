FROM python:3.12-slim

WORKDIR /app

# Install uv globally
RUN pip install uv

# Copy pyproject so uv can manage dependencies
COPY pyproject.toml .

# Add Flask dependency
RUN uv add flask

# Copy the app code
COPY app.py .

EXPOSE 5000

# Run the app with uv (so it uses uv’s managed environment)
CMD ["uv", "run", "python", "app.py"]
