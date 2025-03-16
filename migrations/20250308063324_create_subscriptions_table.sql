-- migrations/20250308063324_create_subscriptions_table.sql
-- Create Subscriptions Table
CREATE TABLE subscriptions(
  id uuid NOT NULL,
  PRIMARY KEY (id),
  email TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  subscrited_at timestamptz NOT NULL
);
