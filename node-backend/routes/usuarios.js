const express = require("express");
const client = require("../database");

const router = express.Router();

// Listar usuários
router.get("/", async (req, res) => {
  const result = await client.query("SELECT * FROM usuario");
  console.log("Lista de usuários enviada!");
  res.json(result.rows);
});

// Buscar um usuário pelo CPF
router.get("/:cpf", async (req, res) => {
  const { cpf } = req.params;

  const query = `
    SELECT * FROM usuario
    WHERE cpf = $1;
  `;

  const result = await client.query(query, [cpf]);

  if (result.rows.length === 0) {
    console.log("Usuário não encontrado.");
    return res.json({ message: "Usuário não encontrado." });
  }

  console.log("Usuário encontrado!");
  res.json(result.rows[0]);
});

// Inserir um novo usuário
router.post("/", async (req, res) => {
  const { cpf, prim_nome, segun_nome, terce_nome, telefone, email } = req.body;

  const query = `
    INSERT INTO usuario (cpf, prim_nome, segun_nome, terce_nome, telefone, email)
    VALUES ($1, $2, $3, $4, $5, $6)
    RETURNING *;
  `;

  const values = [cpf, prim_nome, segun_nome, terce_nome, telefone, email];

  const result = await client.query(query, values);

  console.log("Usuário criado com sucesso!");
  res.json({
    usuario: result.rows[0],
  });
});

// Deletar um usuário pelo CPF
router.delete("/:cpf", async (req, res) => {
  const { cpf } = req.params;

  const query = `
    DELETE FROM usuario
    WHERE cpf = $1
    RETURNING *;
  `;

  const result = await client.query(query, [cpf]);

  if (result.rows.length === 0) {
    console.log("Usuário não encontrado.");
    return res.json({ message: "Usuário não encontrado." });
  }

  console.log("Usuário removido com sucesso!");
  res.json({
    usuario: result.rows[0],
  });
});

// Atualizar um usuário pelo CPF
router.put("/:cpf", async (req, res) => {
  const { cpf } = req.params;
  const { prim_nome, segun_nome, terce_nome, telefone, email } = req.body;

  const query = `
    UPDATE usuario
    SET prim_nome = $1,
        segun_nome = $2,
        terce_nome = $3,
        telefone = $4,
        email = $5
    WHERE cpf = $6
    RETURNING *;
  `;

  const values = [prim_nome, segun_nome, terce_nome, telefone, email, cpf];

  const result = await client.query(query, values);

  if (result.rows.length === 0) {
    console.log("Usuário não encontrado para atualização.");
    return res.json({ message: "Usuário não encontrado." });
  }

  console.log("Usuário atualizado com sucesso!");
  res.json({
    usuario: result.rows[0],
  });
});

module.exports = router;
