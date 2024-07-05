const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function createSujet(req, res) {
  try {
    const sujetData = req.body;
    const sujet = await prisma.sujet.create({data:sujetData});
     res.status(201).json({"message":"sujet cree avec sucess"});
  } catch (e) {
    console.log(e);
  }
}

module.exports = { createSujet };
