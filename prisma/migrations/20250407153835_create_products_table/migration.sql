-- CreateTable
CREATE TABLE "products" (
    "id" UUID NOT NULL,
    "intro" TIMESTAMP(3) NOT NULL,
    "disc" TIMESTAMP(3),
    "family" TEXT NOT NULL,
    "titles" TEXT[],
    "category" TEXT NOT NULL,
    "model" TEXT NOT NULL,
    "imgs" TEXT[],
    "cpus" TEXT[],
    "ram" TEXT NOT NULL,
    "vram" TEXT NOT NULL,
    "storage" TEXT NOT NULL,
    "optical" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "products_pkey" PRIMARY KEY ("id")
);
