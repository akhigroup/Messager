-- �������� ������� �������������
CREATE TABLE users (
  RecID bigint(20) NOT NULL AUTO_INCREMENT,
  UserName varchar(255) NOT NULL COMMENT '�����',
  Password varchar(255) NOT NULL COMMENT '������ � �������������� ����',
  FirstName varchar(255) NOT NULL COMMENT '��� ������������',
  LastName varchar(255) NOT NULL COMMENT '������� ������������',
  Email varchar(255) NOT NULL COMMENT 'Email ������������',
  UserGroup bigint(20) DEFAULT NULL COMMENT '������������ ������ �������������',
  PRIMARY KEY (RecID),
  CONSTRAINT `FK_users_users.groups_RecID` FOREIGN KEY (UserGroup)
  REFERENCES messager.`users.groups` (RecID) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- �������� ������� ����� �������������
CREATE TABLE `users.groups` (
  RecID bigint(20) NOT NULL AUTO_INCREMENT,
  Name enum ('Admin', 'User') DEFAULT NULL COMMENT '������������ ������ �������������',
  PRIMARY KEY (RecID)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;