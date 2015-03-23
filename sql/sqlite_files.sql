CREATE TABLE "files" (
  "FileID" int(10) NOT NULL,
  "CatID" int(10) NOT NULL DEFAULT '0',
  "Filename" varchar(255) DEFAULT NULL,
  "Language" char(5) NOT NULL DEFAULT 'xx_XX',
  "Size" int(10) NOT NULL DEFAULT '0',
  "SHA1" char(40) DEFAULT NULL,
  "Category" varchar(32) DEFAULT NULL,
  "AvailableFrom" datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  "AvailableTo" datetime NOT NULL DEFAULT '2038-12-31 23:59:59',
  "Thumbnail" varchar(128) DEFAULT NULL,
  "Title" varchar(128) DEFAULT NULL,
  "Description" varchar(255) DEFAULT NULL,
  "RealName" varchar(255) DEFAULT NULL,
  "Access" varchar(32) DEFAULT NULL,
  "Visible" char(1) NOT NULL DEFAULT 'N',
  "Eraser" smallint(5) DEFAULT NULL,
  "Erased" datetime DEFAULT NULL,
  "Uploader" smallint(5) DEFAULT NULL,
  "Uploaded" datetime DEFAULT NULL,
  "AvailableInMenu" varchar(32) DEFAULT NULL,
  "MIME" varchar(255) NOT NULL DEFAULT 'application/octet-stream',
  "StartCounter" int(10) NOT NULL DEFAULT '0',
  "FinishCounter" int(10) NOT NULL DEFAULT '0',
  "Sorting" double NOT NULL DEFAULT '0',
  "Superseeded" int(10) DEFAULT NULL,
  PRIMARY KEY ("FileID")
);
create index "files_Cat" on "files" ("CatID");
create index "files_earchable" on "files" ("AvailableFrom","AvailableTo","Category","Language","Access","AvailableInMenu","Superseeded");
