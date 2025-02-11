-- CreateTable
CREATE TABLE "record_history" (
    "id" TEXT NOT NULL,
    "table_id" TEXT NOT NULL,
    "record_id" TEXT NOT NULL,
    "field_id" TEXT NOT NULL,
    "before" TEXT NOT NULL,
    "after" TEXT NOT NULL,
    "created_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" TEXT NOT NULL,

    CONSTRAINT "record_history_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "record_history_table_id_record_id_created_time_idx" ON "record_history"("table_id", "record_id", "created_time");

-- CreateIndex
CREATE INDEX "record_history_table_id_created_time_idx" ON "record_history"("table_id", "created_time");
