import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const subsites = await prisma.subsite.findMany();
  console.log('Subsites: ', subsites);
  const videos = await prisma.video.count();
  console.log('Total Videos: ', videos);
}

main().catch(console.error).finally(() => prisma.$disconnect());
