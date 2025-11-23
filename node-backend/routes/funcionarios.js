const express = require("express");
const router = express.Router();
const client = require("../database");

// Listar todos os funcionários
router.get("/", async (req, res) => {
  const query = "SELECT * FROM funcionario";

  const result = await client.query(query);

  console.log("Lista de funcionários enviada!");
  res.json(result.rows);
});

module.exports = router;
