/*
  Warnings:

  - A unique constraint covering the columns `[userId,sujetId]` on the table `SujetUser` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `SujetUser_userId_sujetId_key` ON `SujetUser`(`userId`, `sujetId`);
