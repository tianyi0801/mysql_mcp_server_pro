FROM python:3.13-slim
WORKDIR /app/mysql_mcp_server

COPY . /app/mysql_mcp_server

RUN pip install uv
RUN uv sync

EXPOSE 9000

CMD ["uv", "run", "./src/server.py"]