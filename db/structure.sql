CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "statuses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
CREATE TABLE "user_friendships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "friend_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "state" varchar(255));
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "profile_name" varchar(255), "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_statuses_on_user_id" ON "statuses" ("user_id");
CREATE INDEX "index_user_friendships_on_state" ON "user_friendships" ("state");
CREATE INDEX "index_user_friendships_on_user_id_and_friend_id" ON "user_friendships" ("user_id", "friend_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130721075600');

INSERT INTO schema_migrations (version) VALUES ('20130722085644');

INSERT INTO schema_migrations (version) VALUES ('20130722092854');

INSERT INTO schema_migrations (version) VALUES ('20130802161012');

INSERT INTO schema_migrations (version) VALUES ('20130810112312');