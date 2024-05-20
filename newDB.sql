-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema seocho_SW_DB_p2_4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema seocho_SW_DB_p2_4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `seocho_SW_DB_p2_4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `seocho_SW_DB_p2_4` ;

-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`customer_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`customer_info` (
  `cust_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '구매자 식별자',
  `cust_id` VARCHAR(30) NOT NULL COMMENT '구매자 아이디',
  `cust_pw` VARCHAR(96) NOT NULL COMMENT '구매자 비밀번호',
  `cust_nick` VARCHAR(30) NOT NULL COMMENT '구매자 별명',
  `cust_email` VARCHAR(50) NOT NULL COMMENT '구매자 이메일',
  `cust_phone` VARCHAR(20) NOT NULL COMMENT '구매자 전화번호',
  `cust_gender` CHAR(1) NOT NULL COMMENT '구매자 성별',
  `cust_birthdate` DATE NOT NULL COMMENT '구매자 생년월일',
  `joined_at` TIMESTAMP NOT NULL DEFAULT now() COMMENT '구매자 가입일자',
  `is_deleted` CHAR(1) NOT NULL DEFAULT 'n' COMMENT '삭제 여부',
  `cust_img` VARCHAR(1000) NULL DEFAULT NULL COMMENT '구매자 프로필 이미지',
  PRIMARY KEY (`cust_no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '구매자';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`board_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`board_info` (
  `b_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '글 식별자',
  `b_title` VARCHAR(1500) NOT NULL COMMENT '글 제목',
  `b_content` TEXT NOT NULL COMMENT '글 내용',
  `b_file` VARCHAR(1200) NOT NULL COMMENT '글 첨부파일',
  `created_at` TIMESTAMP NOT NULL DEFAULT now() COMMENT '글 작성일자',
  `b_reviews` INT NOT NULL COMMENT '글 조회수',
  `b_likes` INT NOT NULL COMMENT '글 좋아요수',
  `cust_no` INT UNSIGNED NOT NULL COMMENT '구매자 고유 식별자',
  PRIMARY KEY (`b_no`),
  INDEX `FK_board_info_cust_no_customer_info_cust_no` (`cust_no` ASC) VISIBLE,
  CONSTRAINT `FK_board_info_cust_no_customer_info_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`customer_info` (`cust_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '게시판';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`category_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`category_info` (
  `category_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '카테고리 식별자',
  `category_name` VARCHAR(50) NOT NULL COMMENT '카테고리 명',
  PRIMARY KEY (`category_no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '상품 카테고리';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`seller_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`seller_info` (
  `seller_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '판매자 식별자',
  `seller_id` VARCHAR(30) NOT NULL COMMENT '판매자 아이디',
  `seller_pw` VARCHAR(96) NOT NULL COMMENT '판매자 비밀번호',
  `seller_nick` VARCHAR(30) NOT NULL COMMENT '판매자 별명',
  `seller_addr` VARCHAR(1000) NOT NULL COMMENT '판매자 매장주소',
  `seller_url` VARCHAR(1200) NOT NULL COMMENT '판매자 홈페이지',
  `seller_email` VARCHAR(50) NOT NULL COMMENT '판매자 이메일',
  `seller_phone` VARCHAR(20) NOT NULL COMMENT '판매자 전화번호',
  `seller_grade` VARCHAR(20) NOT NULL COMMENT '판매자 등급',
  `seller_offline` CHAR(1) NOT NULL COMMENT '판매자 오프라인매장여부',
  `seller_kits` CHAR(1) NOT NULL COMMENT '판매자 키트여부',
  `seller_product` CHAR(1) NOT NULL COMMENT '판매자 판매제품',
  `seller_service` CHAR(1) NOT NULL COMMENT '판매자 서비스',
  `seller_img` VARCHAR(1000) NULL DEFAULT NULL COMMENT '판매자 프로필 사진',
  `seller_portfolio` VARCHAR(3000) NULL DEFAULT NULL COMMENT '판매자 포트폴리오',
  `seller_introduce` TEXT NULL DEFAULT NULL COMMENT '판매자 소개',
  `seller_regist_num` INT NULL DEFAULT NULL COMMENT '판매자 사업자등록번호',
  PRIMARY KEY (`seller_no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '판매자';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`like_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`like_info` (
  `like_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '찜 식별자',
  `seller_no` INT UNSIGNED NOT NULL COMMENT '판매자 식별자',
  `cust_no` INT UNSIGNED NOT NULL COMMENT '구매자 식별자',
  `like_yn` CHAR(1) NOT NULL COMMENT '찜 여부',
  `liked_at` TIMESTAMP NOT NULL DEFAULT now() COMMENT '찜 날짜',
  PRIMARY KEY (`like_no`),
  INDEX `FK_like_info_seller_no_seller_info_seller_no` (`seller_no` ASC) VISIBLE,
  INDEX `FK_like_info_cust_no_customer_info_cust_no` (`cust_no` ASC) VISIBLE,
  CONSTRAINT `FK_like_info_cust_no_customer_info_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`customer_info` (`cust_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_like_info_seller_no_seller_info_seller_no`
    FOREIGN KEY (`seller_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`seller_info` (`seller_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '찜하기 수';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`plant_category_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`plant_category_info` (
  `plant_category_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '식물카테고리 식별자',
  `plant_category_name` VARCHAR(50) NOT NULL COMMENT '식물 카테고리 명',
  `category_no` INT UNSIGNED NOT NULL COMMENT '상품 카테고리 식별자',
  PRIMARY KEY (`plant_category_no`),
  INDEX `FK_plant_category_info_category_no_category_info_category_no` (`category_no` ASC) VISIBLE,
  CONSTRAINT `FK_plant_category_info_category_no_category_info_category_no`
    FOREIGN KEY (`category_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`category_info` (`category_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '식물 카테고리';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`product_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`product_info` (
  `prod_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '상품 식별자',
  `category_no` INT UNSIGNED NOT NULL COMMENT '카테고리 식별자',
  `seller_no` INT UNSIGNED NOT NULL COMMENT '판매자 식별자',
  `prod_name` VARCHAR(500) NOT NULL COMMENT '상품 이름',
  `prod_price` INT UNSIGNED NOT NULL COMMENT '상품 가격',
  `prod_info` TEXT NULL DEFAULT NULL COMMENT '상품 설명',
  `prod_img` VARCHAR(1000) NULL DEFAULT NULL COMMENT '상품 사진',
  `plant_category_no` INT UNSIGNED NULL DEFAULT NULL COMMENT '식물 카테고리',
  PRIMARY KEY (`prod_no`),
  INDEX `FK_product_info_seller_no_seller_info_seller_no` (`seller_no` ASC) VISIBLE,
  INDEX `FK_product_info_category_no_category_info_category_no` (`category_no` ASC) VISIBLE,
  INDEX `FK_product_info_plant_category_no_plant_category_info_plant_cate` (`plant_category_no` ASC) VISIBLE,
  CONSTRAINT `FK_product_info_category_no_category_info_category_no`
    FOREIGN KEY (`category_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`category_info` (`category_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_info_plant_category_no_plant_category_info_plant_cate`
    FOREIGN KEY (`plant_category_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`plant_category_info` (`plant_category_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_info_seller_no_seller_info_seller_no`
    FOREIGN KEY (`seller_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`seller_info` (`seller_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '상품 정보';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`request_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`request_info` (
  `req_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '의뢰서 식별자',
  `req_title` VARCHAR(1500) NOT NULL COMMENT '의뢰서 제목',
  `req_content` TEXT NOT NULL COMMENT '의뢰서 내용',
  `req_file` VARCHAR(1200) NOT NULL COMMENT '의뢰서 첨부파일',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '의뢰서 작성일자',
  `cust_no` INT UNSIGNED NOT NULL COMMENT '구매자 고유 식별자',
  `req_price` INT NOT NULL COMMENT '구매자 희망가격',
  `req_cate` VARCHAR(500) NOT NULL COMMENT '의뢰 카테고리',
  `is_canceled` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '의뢰 취소 여부',
  `is_closing` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '의뢰 마감 여부',
  `expired_at` TIMESTAMP NOT NULL DEFAULT (now() + interval 7 day) COMMENT '의뢰 마감 일자',
  PRIMARY KEY (`req_no`),
  INDEX `FK_request_info_cust_no_customer_info_cust_no` (`cust_no` ASC) VISIBLE,
  CONSTRAINT `FK_request_info_cust_no_customer_info_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`customer_info` (`cust_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '게시판';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`proposal_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`proposal_info` (
  `proposal_no` INT NOT NULL AUTO_INCREMENT COMMENT '제안서 식별자',
  `seller_no` INT UNSIGNED NOT NULL COMMENT '판매자 식별자',
  `proposal_price` INT NOT NULL COMMENT '제안 가격',
  `proposal_products` VARCHAR(500) NOT NULL COMMENT '제안 상품 옵션',
  `proposal_description` TEXT NOT NULL COMMENT '제안서 설명',
  `req_no` INT UNSIGNED NOT NULL COMMENT '의뢰서 식별자',
  `is_chosen` CHAR(1) NOT NULL DEFAULT 'N' COMMENT '제안서 채택 여부',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '제안서 작성 일자',
  PRIMARY KEY (`proposal_no`),
  INDEX `FK_proposal_info_req_no_request_info_req_no` (`req_no` ASC) VISIBLE,
  INDEX `FK_proposal_info_seller_no_seller_info_seller_no` (`seller_no` ASC) VISIBLE,
  CONSTRAINT `FK_proposal_info_req_no_request_info_req_no`
    FOREIGN KEY (`req_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`request_info` (`req_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_proposal_info_seller_no_seller_info_seller_no`
    FOREIGN KEY (`seller_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`seller_info` (`seller_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`purchase_code`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`purchase_code` (
  `pch_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '구매확인코드 식별자',
  `seller_no` INT UNSIGNED NOT NULL COMMENT '판매자 식별자',
  `cust_no` INT UNSIGNED NULL DEFAULT NULL COMMENT '구매자 식별자',
  `pch_code` VARCHAR(40) NOT NULL DEFAULT uuid() COMMENT '구매 확인 코드',
  `use_yn` CHAR(1) NOT NULL COMMENT '사용여부',
  `published_at` TIMESTAMP NOT NULL DEFAULT now() COMMENT '발행 일자',
  `expired_at` TIMESTAMP NOT NULL DEFAULT (now() + interval 7 day) COMMENT '유효 기간',
  PRIMARY KEY (`pch_no`),
  INDEX `FK_purchase_code_cust_no_customer_info_cust_no` (`cust_no` ASC) VISIBLE,
  INDEX `FK_purchase_code_seller_no_seller_info_seller_no` (`seller_no` ASC) VISIBLE,
  CONSTRAINT `FK_purchase_code_cust_no_customer_info_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`customer_info` (`cust_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_purchase_code_seller_no_seller_info_seller_no`
    FOREIGN KEY (`seller_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`seller_info` (`seller_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '구매 확인 코드';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`review_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`review_info` (
  `review_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '리뷰 식별자',
  `seller_no` INT UNSIGNED NOT NULL COMMENT '판매자 식별자',
  `cust_no` INT UNSIGNED NOT NULL COMMENT '구매자 식별자',
  `review_content` TEXT NOT NULL COMMENT '리뷰 내용',
  `review_ratings` DECIMAL(2,1) NOT NULL COMMENT '리뷰 평점',
  `created_at` TIMESTAMP NOT NULL DEFAULT now() COMMENT '작성 일자',
  `pch_no` INT UNSIGNED NOT NULL COMMENT '구매확인코드 식별자',
  PRIMARY KEY (`review_no`),
  INDEX `FK_review_info_seller_no_seller_info_seller_no` (`seller_no` ASC) VISIBLE,
  INDEX `FK_review_info_cust_no_customer_info_cust_no` (`cust_no` ASC) VISIBLE,
  INDEX `FK_review_info_pch_no_purchase_code_pch_no` (`pch_no` ASC) VISIBLE,
  CONSTRAINT `FK_review_info_cust_no_customer_info_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`customer_info` (`cust_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_review_info_pch_no_purchase_code_pch_no`
    FOREIGN KEY (`pch_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`purchase_code` (`pch_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `FK_review_info_seller_no_seller_info_seller_no`
    FOREIGN KEY (`seller_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`seller_info` (`seller_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '리뷰';


-- -----------------------------------------------------
-- Table `seocho_SW_DB_p2_4`.`search_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `seocho_SW_DB_p2_4`.`search_info` (
  `search_no` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '검색어 식별자',
  `search_word` VARCHAR(1000) NOT NULL COMMENT '검색어 식별자',
  `searched_at` TIMESTAMP NOT NULL DEFAULT now() COMMENT '검색 일자',
  `cust_no` INT UNSIGNED NOT NULL COMMENT '구매자 식별자',
  PRIMARY KEY (`search_no`),
  INDEX `FK_search_info_cust_no_customer_info_cust_no` (`cust_no` ASC) VISIBLE,
  CONSTRAINT `FK_search_info_cust_no_customer_info_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `seocho_SW_DB_p2_4`.`customer_info` (`cust_no`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '검색어 정보';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
