create table client (
	id varchar(100) primary key,
	username varchar(100) not null,
	password varchar(100) not null,
	secret_key varchar(100) not null
);

create table workspace (
	id smallserial primary key,
	name varchar(100) not null,
	owner_id varchar(100) not null references client (id)
);

create table file (
	id smallserial primary key,
	name varchar(100) not null,
	rel_path varchar(100) not null,
	is_dir boolean not null default false,
	lastest_version int not null,
	workspace_id smallint not null references workspace(id),
	created_at timestamp not null default current_timestamp,
	last_modified timestamp not null default current_timestamp
);

create table file_version (
	id smallserial primary key,
	file_id smallint not null references file(id),
	version_number smallint not null default 0
);

create table block (
	id smallserial primary key,
	file_version_id smallint not null references file_version(id),
	order_number smallint not null
);