-- ============================================
-- Migration 002: Fix user_role enum to include 'organizer'
-- ============================================
-- Created: 2026-02-19
-- Purpose: Add 'organizer' value to user_role enum to fix RLS policies

-- Add 'organizer' to the user_role enum if it doesn't exist
DO $$
BEGIN
    -- Check if 'organizer' value already exists in the enum
    IF NOT EXISTS (
        SELECT 1
        FROM pg_enum
        WHERE enumlabel = 'organizer'
        AND enumtypid = 'user_role'::regtype
    ) THEN
        -- Add 'organizer' to the enum
        ALTER TYPE user_role ADD VALUE 'organizer';
    END IF;
END $$;

-- Verify the enum now includes 'organizer'
-- You can check with: SELECT unnest(enum_range(NULL::user_role));

COMMENT ON TYPE user_role IS 'User roles: admin, coordinator, volunteer, organizer';
