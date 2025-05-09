/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const express = require("express");
const cors = require("cors");
const nodemailer = require("nodemailer");
const functions = require("firebase-functions");
const fetch = require("node-fetch");
require("dotenv").config();

const app = express();
app.use(cors({origin: true}));

app.get("/portfolio", async (req, res) => {
  try {
    const response = await fetch(process.env.GIST_URL, {
      headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": `Bearer ${process.env.GIST_API_KEY}`,
        "X-GitHub-Api-Version": "2022-11-28",
      },
    });

    if (!response.ok) {
      return res.status(response.status).json({
        error: "Failed to fetch from GitHub.",
      });
    }

    const gistData = await response.json();
    const content = JSON.parse(
        gistData.files["victor_vaz_data.json"].content,
    );

    return res.json(content);
  } catch (error) {
    return res.status(500).json({
      error: "Server error: " + error.message,
    });
  }
});

app.post("/send-email", async (req, res) => {
  const {name, email, message} = req.body;

  if (!name || !email || !message) {
    return res.status(400).json({error: "Missing required fields"});
  }

  try {
    const transporter = nodemailer.createTransport({
      host: process.env.EMAIL_HOST,
      port: parseInt(process.env.EMAIL_PORT),
      secure: false,
      auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASS,
      },
    });

    await transporter.sendMail({
      from: `"${name}" <${email}>`,
      to: process.env.EMAIL_USER,
      subject: "New Contact Message",
      text: message,
      html: `<p><strong>From:</strong> ${name} (${email})</p><p>${message}</p>`,
    });

    return res.json({sucess: true, message: "Email sent succesfully"});
  } catch (error) {
    return res.status(500).json({error: "Email failed: " + error.message});
  }
});

exports.api = functions.https.onRequest(app);
