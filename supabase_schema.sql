-- ==============================================================================
-- SCHEMA SUPABASE: VINO & ARTE | MUSEO AROCENA
-- Copia y pega este script en el "SQL Editor" de tu proyecto en supabase.com
-- ==============================================================================

-- 1. Crear tabla de leads de interés
create table if not exists public.leads (
  id uuid default gen_random_uuid() primary key,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  name text not null,
  email text not null,
  phone text,
  contact_preference text default 'email',
  topics text[] default array[]::text[],
  is_duplicate boolean default false
);

-- 2. Habilitar Seguridad por Fila (Row Level Security - RLS)
alter table public.leads enable row level security;

-- 3. Crear política para permitir que cualquier visitante envíe su registro (Insert anónimo público)
drop policy if exists "Permitir registro público de leads" on public.leads;
create policy "Permitir registro público de leads"
on public.leads
for insert
with check (true);

-- 4. Crear política para que solo usuarios autenticados (el equipo) puedan leer los leads
drop policy if exists "Lectura exclusiva del equipo" on public.leads;
create policy "Lectura exclusiva del equipo"
on public.leads
for select
to authenticated
using (true);

-- 5. Crear índice para acelerar consultas por correo
create index if not exists leads_email_idx on public.leads (email);
