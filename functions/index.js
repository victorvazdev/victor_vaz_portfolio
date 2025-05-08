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

exports.api = functions.https.onRequest(app);
