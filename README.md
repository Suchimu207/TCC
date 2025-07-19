# Conhecendo o Cumbe - TCC

## Descrição

Este projeto consiste em um formulário que recebe nome e faixa etária do
usuário e deposita no banco de dados. Depois, inicia um questionário com
20 perguntas sobre o patrimônio cultural de Euclides da Cunha (Bahia). Ao
final, pede a opinião do mesmo sobre a jogabilidade.

## Pré-requisitos

- Python 3.8 ou superior.
- Banco de dados MySQL.
- Script SQL fornecido para criar estrutura básica (`banco.sql`).
- Navegador para acessar o sistema via localhost.

---

## Instalação

1. Crie e ative um ambiente virtual:

   ```bash
   python -m venv ambiente
   source ambiente/bin/activate      # Linux/macOS
   ambiente\Scripts\activate         # Windows
   ```

2. Instale as dependências:

   ```bash
   pip install -r requirements.txt
   ```

## Como executar

```bash
python main.py
```

- Acesse em: [http://localhost:5000](http://localhost:5000)
