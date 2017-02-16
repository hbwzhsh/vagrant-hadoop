CREATE EXTERNAL TABLE IF NOT EXISTS rht_quotes(
        `Date` DATE, 
        Open DOUBLE,
        High DOUBLE,
        Low DOUBLE,
        Close DOUBLE,
        Volume DOUBLE,
        Adj_Close DOUBLE)
    COMMENT 'Data from Yahoo finance for RHL (RedHat)'
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ','
    STORED AS TEXTFILE
    location '/user/vagrant/rht_quotes';

CREATE TABLE IF NOT EXISTS rht_quotes_orc 
    STORED AS ORC
    AS
    SELECT `date`, open, high, low, close, volume, adj_close FROM rht_quotes;

select year(`date`) as year, month(`date`) as month, avg(adj_close) as avg_adj_close from rht_quotes group by year(`date`), month(`date`);