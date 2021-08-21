# 2주차 과제
## 월별 액티브 사용자의 수

%%sql

select year_month, count(*) as cnt from ( select distinct TO_CHAR(ts, 'YYYY-MM') as year_month, userid from raw_data.user_session_channel channel
                                          inner join (select * from raw_data.session_timestamp) timestamp
                                          on channel.sessionid = timestamp.sessionid
                                        )
group by year_month
order by year_month
