SELECT to_char(st.ts, 'yyyy-mm') as month, COUNT(DISTINCT usc.userID)
FROM raw_data.session_timestamp st
JOIN raw_data.user_session_channel usc ON st.sessionID = usc.sessionID
GROUP BY 1
ORDER BY 1
