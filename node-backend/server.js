const express = require("express");
const client = require("./db");

const app = express();
app.use(express.json());

app.get("/usuarios", async (req, res) => {
  const result = await client.query("SELECT * FROM usuario");
  res.json(result.rows);
});

app.listen(3000, () => console.log("🚀 Server rodando na porta 3000!"));
