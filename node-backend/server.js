const express = require("express");
const pool = require("./db");

const app = express();
app.use(express.json());

app.get("/usuarios", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM usuario");
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.listen(3000, () => console.log("🚀 Server rodando na porta 3000!"));
