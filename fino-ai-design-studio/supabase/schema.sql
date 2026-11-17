create table if not exists public.projects (
 id uuid primary key default gen_random_uuid(), user_id uuid not null references auth.users(id) on delete cascade,
 name text not null, design jsonb not null, created_at timestamptz not null default now()
);
create table if not exists public.references (
 id uuid primary key default gen_random_uuid(), user_id uuid not null references auth.users(id) on delete cascade,
 name text not null, image_data text not null, created_at timestamptz not null default now()
);
alter table public.projects enable row level security;
alter table public.references enable row level security;
create policy "Users read own projects" on public.projects for select to authenticated using ((select auth.uid())=user_id);
create policy "Users create own projects" on public.projects for insert to authenticated with check ((select auth.uid())=user_id);
create policy "Users read own references" on public.references for select to authenticated using ((select auth.uid())=user_id);
create policy "Users create own references" on public.references for insert to authenticated with check ((select auth.uid())=user_id);
