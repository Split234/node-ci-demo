const { MongoClient } = require("mongodb");

const url = "mongodb://mongo:27017";
const client = new MongoClient(url);

async function run() {
  try {
    await client.connect();
    console.log("✅ Connected to MongoDB from Docker Compose!");
  } catch (err) {
    console.error(err);
  } finally {
    await client.close();
  }
}

run();
