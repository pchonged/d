import express from "npm:express@4.18.2";

const app = express();

app.get("/", (req, res) => {
  res.send("Welcome to the Dinossd sdaur API!");
});

// const port = env.PORT || 3000;
const port =3000;
app.listen(port, ()=> console.log(`listen on port ${port}`));