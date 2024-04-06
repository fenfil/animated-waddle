import { PrismaClient } from "@prisma/client";

const db = new PrismaClient();

export default async function Home() {
  const users = await db.user.findMany();
  return "hi";
}
