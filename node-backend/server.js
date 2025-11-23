const express = require("express");
const usuariosRouter = require("./routes/usuarios");
const ordensRouter = require("./routes/ordens");
const reservasRouter = require("./routes/reservas");
const moradoresRouter = require("./routes/moradores");
const funcionariosRouter = require("./routes/funcionarios");

const app = express();
app.use(express.json());

app.use("/usuarios", usuariosRouter);
app.use("/ordens", ordensRouter);
app.use("/reservas", reservasRouter);
app.use("/moradores", moradoresRouter);
app.use("/funcionarios", funcionariosRouter);

app.listen(3000, () => console.log("🚀 Server rodando na porta 3000!"));
