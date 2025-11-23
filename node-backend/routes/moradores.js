const express = require("express");
const router = express.Router();
const client = require("../database");

// Criar morador
router.post("/", async (req, res) => {
  const { cpf_morador, respons_familiar, propriet_imovel, id_unidade } =
    req.body;

  const query = `
      INSERT INTO morador (cpf_morador, respons_familiar, propriet_imovel, id_unidade)
      VALUES ($1, $2, $3, $4)
      RETURNING *;
    `;

  const values = [cpf_morador, respons_familiar, propriet_imovel, id_unidade];

  const result = await client.query(query, values);

  console.log("Morador criado com sucesso!");
  res.json({
    morador: result.rows[0],
  });
});

// Listar moradores
router.get("/", async (req, res) => {
  const query = "SELECT * FROM morador";

  const result = await client.query(query);

  console.log("Lista de moradores enviada!");
  res.json(result.rows);
});

module.exports = router;
