-- Data Cleaning

SELECT * FROM layoffs;
-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null Valuse or blank values
-- 4. Remove any columns

-- created layoffs_staging as a sample of original data in case of any mistake and we want to keep the data in safe
create table layoffs_staging
like layoffs;

select * 
from layoffs_staging;

insert layoffs_staging
select * 
from layoffs;

select *,
row_number() over(
partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
from layoffs_staging; 

SELECT *
FROM (
	SELECT company, location, industry, total_laid_off,percentage_laid_off,`date`, stage, country, funds_raised_millions,
		ROW_NUMBER() OVER (
			PARTITION BY company, location, industry, total_laid_off,percentage_laid_off,`date`, stage, country, funds_raised_millions
			) AS row_num
	FROM 
		world_layoffs.layoffs_staging
) duplicates
WHERE 
	row_num > 1;
    

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
select * from layoffs_staging2;

insert into layoffs_staging2
select *,
row_number() over(
partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
from layoffs_staging; 

delete  from layoffs_staging2 where row_num > 1;

select * from layoffs_staging2;

-- Standardization 

select company,  trim(company) -- trim takes whitespaces out
from layoffs_staging2;

update layoffs_staging2
set company = trim(company);


select *
from layoffs_staging2
where industry like 'Crypto%';

update layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';

select *
from layoffs_staging2
where country like 'United States%';

update layoffs_staging2
set country = 'United States'
where country like 'United States%';

-- Another way of doing this is : 

select distinct country, trim( trailing '.' from country)
from layoffs_staging2
order by 1;


select `date`,
str_to_date(`date`, '%m/%d/%Y')
from layoffs_staging2;

update layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');

select `date`
from layoffs_staging2;

alter table layoffs_staging2
modify column `date` DATE;





select *
from layoffs_staging2
where total_laid_off  is null 
and percentage_laid_off is null; 

update layoffs_staging2
set industry = null
where industry = '';

select *
from layoffs_staging2
where industry is null
or industry = '';

select distinct industry
from layoffs_staging2
where industry is null 
or industry = '' ;


select *
from layoffs_staging2
where company = 'Airbnb';

select t1.industry, t2.industry
from layoffs_staging2 t1
join layoffs_staging2 t2
	on t1.company = t2.company
where (t1.industry is null or t1.industry = '')
and t2.industry is not null ;


update layoffs_staging2 t1
join layoffs_staging2 t2
	on t1.company = t2.company
set t1.industry = t2.industry
where t1.industry is null 
and t2.industry is not null ;

select * 
from layoffs_staging2
where company like 'Bally%';

SELECT company, COUNT(*)
FROM layoffs_staging2
WHERE company LIKE 'Bally%'
GROUP BY company
HAVING COUNT(*) > 1;


select * 
from layoffs_staging2;

select *
from layoffs_staging2
where total_laid_off  is null 
and percentage_laid_off is null;

delete 
from layoffs_staging2
where total_laid_off  is null 
and percentage_laid_off is null;

alter table layoffs_staging2
drop column row_num;