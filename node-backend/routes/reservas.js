const express = require("express");
const router = express.Router();
const client = require("../database");

// Criar reserva
router.post("/", async (req, res) => {
  const { id_area, cpf_morador, data_reserva, hora_reserva, situacao } =
    req.body;

  const query = `
      INSERT INTO reserva (id_area, cpf_morador, data_reserva, hora_reserva, situacao)
      VALUES ($1, $2, $3, $4, $5)
      RETURNING *;
    `;

  const values = [id_area, cpf_morador, data_reserva, hora_reserva, situacao];
  const result = await client.query(query, values);

  console.log("Reserva criada com sucesso!");
  res.json({
    reserva: result.rows[0],
  });
});

// Listar todas as reservas
router.get("/", async (req, res) => {
  const result = await client.query("SELECT * FROM reserva");
  res.json(result.rows);
});

module.exports = router;
