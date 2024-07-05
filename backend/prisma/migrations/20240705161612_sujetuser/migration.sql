/*
  Warnings:

  - You are about to drop the column `userId` on the `sujet` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[titre]` on the table `Sujet` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `sujet` DROP FOREIGN KEY `Sujet_userId_fkey`;

-- AlterTable
ALTER TABLE `sujet` DROP COLUMN `userId`;

-- CreateTable
CREATE TABLE `SujetUser` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `sujetId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `Sujet_titre_key` ON `Sujet`(`titre`);

-- AddForeignKey
ALTER TABLE `SujetUser` ADD CONSTRAINT `SujetUser_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SujetUser` ADD CONSTRAINT `SujetUser_sujetId_fkey` FOREIGN KEY (`sujetId`) REFERENCES `Sujet`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
