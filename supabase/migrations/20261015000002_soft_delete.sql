-- Soft delete for drawings and discussion messages (UI round 3).
-- Applied 2026-10-15 via Management API.

ALTER TABLE public.discussion_messages ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE public.discussion_messages ADD COLUMN IF NOT EXISTS edited_at timestamptz;
ALTER TABLE public.drawings ADD COLUMN IF NOT EXISTS deleted_at timestamptz;

-- Drawings had no UPDATE policy; authors need it for soft delete.
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE schemaname = 'public' AND tablename = 'drawings'
      AND policyname = 'authors soft-delete own drawings'
  ) THEN
    CREATE POLICY "authors soft-delete own drawings"
      ON public.drawings FOR UPDATE
      USING (created_by = auth.uid())
      WITH CHECK (created_by = auth.uid());
  END IF;
END $$;
