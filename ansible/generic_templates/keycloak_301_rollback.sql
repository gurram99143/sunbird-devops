ALTER TABLE REALM_SUPPORTED_LOCALES ADD COLUMN id SERIAL;
select count(*) from public.REALM_SUPPORTED_LOCALES;
DELETE FROM REALM_SUPPORTED_LOCALES a USING REALM_SUPPORTED_LOCALES b WHERE a.id < b.id AND a.value = b.value;
select count(*) from public.REALM_SUPPORTED_LOCALES;
ALTER TABLE REALM_SUPPORTED_LOCALES DROP COLUMN id;
ALTER TABLE composite_role ADD COLUMN id SERIAL;
select count(*) from public.composite_role;
DELETE FROM composite_role a USING composite_role b WHERE a.id < b.id AND a.composite = b.composite AND a.child_role = b.child_role;
select count(*) from public.composite_role;
ALTER TABLE composite_role DROP COLUMN id;
ALTER TABLE realm_events_listeners ADD COLUMN id SERIAL;
select count(*) from public.realm_events_listeners;
DELETE FROM realm_events_listeners a USING realm_events_listeners b WHERE a.id < b.id AND a.realm_id = b.realm_id AND a.value = b.value;
select count(*) from public.realm_events_listeners;
ALTER TABLE realm_events_listeners DROP COLUMN id;
ALTER TABLE redirect_uris ADD COLUMN id SERIAL;
select count(*) from public.redirect_uris;
DELETE FROM redirect_uris a USING redirect_uris b WHERE a.id < b.id AND a.client_id = b.client_id AND a.value = b.value;
select count(*) from public.redirect_uris;
ALTER TABLE redirect_uris DROP COLUMN id;
ALTER TABLE web_origins ADD COLUMN id SERIAL;
select count(*) from public.web_origins;
DELETE FROM web_origins a USING web_origins b WHERE a.id < b.id AND a.client_id = b.client_id AND a.value = b.value;
select count(*) from public.web_origins;
ALTER TABLE web_origins DROP COLUMN id;
ALTER TABLE public.USER_ENTITY DROP COLUMN  NOT_BEFORE;
select count(*) from offline_client_session;
select count(*) from offline_user_session;
delete from offline_user_session;
delete from offline_client_session;
