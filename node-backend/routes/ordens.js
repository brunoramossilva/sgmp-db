const express = require("express");
const client = require("../database");

const router = express.Router();

// Criar uma nova Ordem de Serviço
router.post("/", async (req, res) => {
  const { data_abertura, descricao_prob, cpf_morador, cpf_sindico, situacao } =
    req.body;

  const query = `
    INSERT INTO ordem_servico (data_abertura, descricao_prob, cpf_morador, cpf_sindico, situacao)
    VALUES ($1, $2, $3, $4, $5)
    RETURNING *;
  `;

  const values = [
    data_abertura,
    descricao_prob,
    cpf_morador,
    cpf_sindico,
    situacao || "ABERTA",
  ];

  const result = await client.query(query, values);

  console.log("OS criada com sucesso!");
  res.json({
    os: result.rows[0],
  });
});

// Buscar uma OS pelo ID
router.get("/:id", async (req, res) => {
  const { id } = req.params;

  const query = `
    SELECT *
    FROM ordem_servico
    WHERE id_os = $1;
  `;

  const result = await client.query(query, [id]);

  if (result.rows.length === 0) {
    return res.json({ message: "Ordem de serviço não encontrada." });
  }

  res.json({
    os: result.rows[0],
  });
});

module.exports = router;
