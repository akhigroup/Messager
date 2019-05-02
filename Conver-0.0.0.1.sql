-- �������� ������� �������������
CREATE TABLE users (
  RecID bigint(20) NOT NULL AUTO_INCREMENT,
  UserName varchar(255) NOT NULL COMMENT '�����',
  Password varchar(255) NOT NULL COMMENT '������ � �������������� ����',
  FirstName varchar(255) NOT NULL COMMENT '��� ������������',
  LastName varchar(255) NOT NULL COMMENT '������� ������������',
  Email varchar(255) NOT NULL COMMENT 'Email ������������',
  UserGroup ENUM('User','Admin') NOT NULL DEFAULT 'User' COMMENT '������������ ������ �������������',
  PRIMARY KEY (RecID)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci;