-- Script de carga de datos: api_security_events
-- Dominio: Ciberseguridad Bancaria
-- Fuente: PostgreSQL (tabla principal del proyecto ETL);

DROP TABLE IF EXISTS api_security_events;

CREATE TABLE IF NOT EXISTS api_security_events (
    event_id SERIAL PRIMARY KEY,
    event_date DATE,
    channel VARCHAR(50),
    event_type VARCHAR(60),
    http_method VARCHAR(10),
    endpoint VARCHAR(100),
    response_code INTEGER,
    response_time_ms INTEGER,
    risk_score INTEGER,
    resolved BOOLEAN,
    user_agent VARCHAR(100),
    country_code CHAR(2)
);

INSERT INTO api_security_events VALUES (1, '2024-01-01', 'Internet Banking', 'Auth Failure', 'GET', '/api/v1/transactions', 429, 1223, 4, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (2, '2024-01-03', 'Cash Management', 'Token Expired', 'DELETE', '/api/v1/transactions', 200, 344, 3, FALSE, 'Mozilla/5.0', 'CN');
INSERT INTO api_security_events VALUES (3, '2024-01-05', 'Internet Banking', 'Rate Limit Exceeded', 'GET', '/api/v2/auth', 500, 4944, 3, TRUE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (4, '2024-01-07', 'Cash Management', 'Anomalous Pattern', 'DELETE', '/api/v1/balance', 429, 2459, 2, TRUE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (5, '2024-01-09', 'Internet Banking', 'Token Expired', 'DELETE', '/api/v1/transactions', 400, 3321, 2, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (6, '2024-01-11', 'POS Terminal', 'Rate Limit Exceeded', 'DELETE', '/api/v1/transactions', 403, 365, 3, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (7, '2024-01-13', 'Mobile Banking', 'Auth Failure', 'PATCH', '/api/v2/auth', 403, 2058, 1, FALSE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (8, '2024-01-15', 'POS Terminal', 'Anomalous Pattern', 'POST', '/api/v1/users', 200, 2230, 2, FALSE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (9, '2024-01-17', 'Internet Banking', 'Rate Limit Exceeded', 'POST', '/api/v1/balance', 200, 3387, 4, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (10, '2024-01-19', 'ATM Network', 'Token Expired', 'DELETE', '/api/v2/auth', 400, 4470, 4, TRUE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (11, '2024-01-21', 'Internet Banking', 'Rate Limit Exceeded', 'PUT', '/api/v1/transfer', 400, 3758, 2, FALSE, 'nan', 'CO');
INSERT INTO api_security_events VALUES (12, '2024-01-23', 'POS Terminal', 'Anomalous Pattern', 'GET', '/api/v1/users', 429, 779, 5, TRUE, 'curl/7.x', 'CO');
INSERT INTO api_security_events VALUES (13, '2024-01-25', 'Internet Banking', 'Auth Failure', 'GET', '/api/v1/balance', 200, 948, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (14, '2024-01-27', 'Open Banking API', 'Anomalous Pattern', 'DELETE', '/api/v1/users', 200, 1785, 1, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (15, '2024-01-29', 'Open Banking API', 'Injection Attempt', 'PATCH', '/api/v1/balance', 401, 3143, 3, TRUE, 'Python-requests/2.x', 'RU');
INSERT INTO api_security_events VALUES (16, '2024-01-31', 'Internet Banking', 'Anomalous Pattern', 'POST', '/api/v1/balance', 500, 4939, 2, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (17, '2024-02-02', 'Mobile Banking', 'Injection Attempt', 'POST', '/api/v1/transactions', 401, 126, 3, FALSE, 'Mozilla/5.0', 'CO');
INSERT INTO api_security_events VALUES (18, '2024-02-04', 'ATM Network', 'Injection Attempt', 'PATCH', '/api/v1/users', 403, 4154, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (19, '2024-02-06', 'POS Terminal', 'Unauthorized Endpoint', 'PUT', '/api/v1/transactions', 403, 286, 1, FALSE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (20, '2024-02-08', 'Internet Banking', 'Auth Failure', 'DELETE', '/api/v2/auth', 200, 3609, 2, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (21, '2024-02-10', 'Cash Management', 'Token Expired', 'GET', '/api/v1/transactions', 400, 4464, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (22, '2024-02-12', 'ATM Network', 'Unauthorized Endpoint', 'PATCH', '/api/v1/transactions', 500, 3031, 4, FALSE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (23, '2024-02-14', 'Open Banking API', 'Unauthorized Endpoint', 'PATCH', '/api/v2/auth', 500, 3658, 4, FALSE, 'Mozilla/5.0', 'US');
INSERT INTO api_security_events VALUES (24, '2024-02-16', 'ATM Network', 'Auth Failure', 'DELETE', '/api/v2/auth', 429, 727, 5, FALSE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (25, '2024-02-18', 'ATM Network', 'Auth Failure', 'GET', '/api/v1/users', 403, 4055, 2, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (26, '2024-02-20', 'Open Banking API', 'Rate Limit Exceeded', 'DELETE', '/api/v2/auth', 400, 2595, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (27, '2024-02-22', 'ATM Network', 'Unauthorized Endpoint', 'PUT', '/api/v2/auth', 403, 1112, 5, TRUE, 'Mozilla/5.0', 'CO');
INSERT INTO api_security_events VALUES (28, '2024-02-24', 'Mobile Banking', 'Rate Limit Exceeded', 'PATCH', '/api/v1/transfer', 200, 620, 3, TRUE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (29, '2024-02-26', 'Internet Banking', 'Unauthorized Endpoint', 'PATCH', '/api/v2/auth', 200, 2761, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (30, '2024-02-28', 'Cash Management', 'Injection Attempt', 'PUT', '/api/v2/auth', 400, 352, 5, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (31, '2024-03-01', 'POS Terminal', 'Token Expired', 'PUT', '/api/v2/auth', 403, 848, 1, TRUE, 'Mozilla/5.0', 'RU');
INSERT INTO api_security_events VALUES (32, '2024-03-03', 'ATM Network', 'Auth Failure', 'POST', '/api/v1/users', 400, 707, 3, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (33, '2024-03-05', 'Cash Management', 'Token Expired', 'DELETE', '/api/v1/balance', 400, 462, 4, TRUE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (34, '2024-03-07', 'POS Terminal', 'Injection Attempt', 'PATCH', '/api/v1/transactions', 401, 1646, 1, TRUE, 'Mozilla/5.0', 'RU');
INSERT INTO api_security_events VALUES (35, '2024-03-09', 'Internet Banking', 'Unauthorized Endpoint', 'POST', '/api/v2/auth', 400, 4772, 3, FALSE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (36, '2024-03-11', 'Internet Banking', 'Auth Failure', 'PATCH', '/api/v1/transactions', 429, 3031, 2, TRUE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (37, '2024-03-13', 'POS Terminal', 'Auth Failure', 'GET', '/api/v1/balance', 400, 4610, 2, TRUE, 'Python-requests/2.x', 'RU');
INSERT INTO api_security_events VALUES (38, '2024-03-15', 'Open Banking API', 'Anomalous Pattern', 'PUT', '/api/v2/auth', 400, 4189, 4, TRUE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (39, '2024-03-17', 'ATM Network', 'Auth Failure', 'DELETE', '/api/v2/auth', 400, 4790, 1, TRUE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (40, '2024-03-19', 'Open Banking API', 'Anomalous Pattern', 'PATCH', '/api/v1/transfer', 403, 3965, 5, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (41, '2024-03-21', 'Cash Management', 'Injection Attempt', 'POST', '/api/v1/transfer', 403, 1421, 3, TRUE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (42, '2024-03-23', 'ATM Network', 'Injection Attempt', 'PUT', '/api/v1/transfer', 401, 2433, 2, FALSE, 'nan', 'RU');
INSERT INTO api_security_events VALUES (43, '2024-03-25', 'Internet Banking', 'Auth Failure', 'PUT', '/api/v1/users', 500, 439, 3, FALSE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (44, '2024-03-27', 'Cash Management', 'Injection Attempt', 'POST', '/api/v1/users', 429, 1976, 3, TRUE, 'Mozilla/5.0', 'US');
INSERT INTO api_security_events VALUES (45, '2024-03-29', 'Open Banking API', 'Injection Attempt', 'GET', '/api/v1/transactions', 401, 1886, 2, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (46, '2024-03-31', 'Mobile Banking', 'Auth Failure', 'POST', '/api/v1/transfer', 401, 241, 4, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (47, '2024-04-02', 'Cash Management', 'Anomalous Pattern', 'GET', '/api/v1/transactions', 400, 1629, 3, TRUE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (48, '2024-04-04', 'Mobile Banking', 'Token Expired', 'POST', '/api/v1/users', 200, 1605, 1, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (49, '2024-04-06', 'Open Banking API', 'Rate Limit Exceeded', 'PUT', '/api/v1/transfer', 429, 907, 3, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (50, '2024-04-08', 'Open Banking API', 'Token Expired', 'POST', '/api/v2/auth', 401, 1285, 2, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (51, '2024-04-10', 'Internet Banking', 'Anomalous Pattern', 'GET', '/api/v1/transactions', 200, 311, 3, FALSE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (52, '2024-04-12', 'ATM Network', 'Unauthorized Endpoint', 'GET', '/api/v1/users', 401, 3587, 2, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (53, '2024-04-14', 'Internet Banking', 'Unauthorized Endpoint', 'PATCH', '/api/v1/transfer', 400, 4312, 2, FALSE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (54, '2024-04-16', 'ATM Network', 'Injection Attempt', 'GET', '/api/v2/auth', 400, 2041, 2, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (55, '2024-04-18', 'ATM Network', 'Anomalous Pattern', 'DELETE', '/api/v1/transactions', 200, 71, 2, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (56, '2024-04-20', 'ATM Network', 'Token Expired', 'DELETE', '/api/v2/auth', 200, 4400, 1, FALSE, 'nan', 'CN');
INSERT INTO api_security_events VALUES (57, '2024-04-22', 'Cash Management', 'Unauthorized Endpoint', 'DELETE', '/api/v1/transfer', 429, 3031, 5, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (58, '2024-04-24', 'Internet Banking', 'Token Expired', 'PATCH', '/api/v1/transfer', 401, 4708, 3, FALSE, 'curl/7.x', 'RU');
INSERT INTO api_security_events VALUES (59, '2024-04-26', 'Cash Management', 'Auth Failure', 'POST', '/api/v2/auth', 200, 1897, 3, FALSE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (60, '2024-04-28', 'Internet Banking', 'Token Expired', 'DELETE', '/api/v2/auth', 401, 1052, 3, TRUE, 'nan', 'CO');
INSERT INTO api_security_events VALUES (61, '2024-04-30', 'Open Banking API', 'Auth Failure', 'POST', '/api/v1/users', 200, 3425, 1, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (62, '2024-05-02', 'Open Banking API', 'Injection Attempt', 'PUT', '/api/v1/transfer', 429, 2586, 1, FALSE, 'PostmanRuntime/7.x', 'CN');
INSERT INTO api_security_events VALUES (63, '2024-05-04', 'POS Terminal', 'Auth Failure', 'POST', '/api/v1/transactions', 401, 2893, 1, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (64, '2024-05-06', 'ATM Network', 'Token Expired', 'DELETE', '/api/v1/transactions', 429, 1763, 3, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (65, '2024-05-08', 'Open Banking API', 'Rate Limit Exceeded', 'DELETE', '/api/v1/balance', 401, 2725, 1, TRUE, 'Python-requests/2.x', 'CO');
INSERT INTO api_security_events VALUES (66, '2024-05-10', 'Cash Management', 'Auth Failure', 'GET', '/api/v1/balance', 403, 3773, 3, TRUE, 'Mozilla/5.0', 'US');
INSERT INTO api_security_events VALUES (67, '2024-05-12', 'Open Banking API', 'Auth Failure', 'PUT', '/api/v2/auth', 401, 1965, 1, FALSE, 'Python-requests/2.x', 'US');
INSERT INTO api_security_events VALUES (68, '2024-05-14', 'Mobile Banking', 'Unauthorized Endpoint', 'POST', '/api/v2/auth', 200, 4009, 5, FALSE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (69, '2024-05-16', 'Open Banking API', 'Unauthorized Endpoint', 'POST', '/api/v2/auth', 400, 4364, 3, TRUE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (70, '2024-05-18', 'Mobile Banking', 'Anomalous Pattern', 'PATCH', '/api/v1/transactions', 401, 482, 5, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (71, '2024-05-20', 'POS Terminal', 'Auth Failure', 'PATCH', '/api/v1/transactions', 500, 2821, 3, TRUE, 'Mozilla/5.0', 'CO');
INSERT INTO api_security_events VALUES (72, '2024-05-22', 'ATM Network', 'Auth Failure', 'GET', '/api/v1/users', 401, 2455, 3, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (73, '2024-05-24', 'Internet Banking', 'Rate Limit Exceeded', 'DELETE', '/api/v1/users', 403, 1605, 3, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (74, '2024-05-26', 'Mobile Banking', 'Auth Failure', 'PATCH', '/api/v1/balance', 403, 3203, 1, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (75, '2024-05-28', 'POS Terminal', 'Anomalous Pattern', 'POST', '/api/v1/balance', 400, 1331, 2, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (76, '2024-05-30', 'ATM Network', 'Injection Attempt', 'PATCH', '/api/v2/auth', 403, 2116, 1, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (77, '2024-06-01', 'Cash Management', 'Injection Attempt', 'GET', '/api/v1/users', 400, 1045, 3, TRUE, 'PostmanRuntime/7.x', 'RU');
INSERT INTO api_security_events VALUES (78, '2024-06-03', 'Open Banking API', 'Anomalous Pattern', 'PUT', '/api/v1/transactions', 401, 1366, 2, TRUE, 'Mozilla/5.0', 'CO');
INSERT INTO api_security_events VALUES (79, '2024-06-05', 'Open Banking API', 'Rate Limit Exceeded', 'PUT', '/api/v1/balance', 400, 388, 4, FALSE, 'curl/7.x', 'CN');
INSERT INTO api_security_events VALUES (80, '2024-06-07', 'Open Banking API', 'Unauthorized Endpoint', 'POST', '/api/v1/balance', 200, 928, 5, FALSE, 'Mozilla/5.0', 'PE');
INSERT INTO api_security_events VALUES (81, '2024-06-09', 'ATM Network', 'Token Expired', 'GET', '/api/v1/balance', 429, 1909, 1, FALSE, 'Python-requests/2.x', 'CO');
INSERT INTO api_security_events VALUES (82, '2024-06-11', 'Mobile Banking', 'Token Expired', 'PUT', '/api/v1/balance', 400, 1033, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (83, '2024-06-13', 'Mobile Banking', 'Rate Limit Exceeded', 'POST', '/api/v2/auth', 200, 3184, 2, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (84, '2024-06-15', 'Mobile Banking', 'Token Expired', 'POST', '/api/v1/users', 400, 4080, 2, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (85, '2024-06-17', 'Cash Management', 'Injection Attempt', 'GET', '/api/v1/balance', 403, 2371, 3, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (86, '2024-06-19', 'Internet Banking', 'Rate Limit Exceeded', 'DELETE', '/api/v1/balance', 400, 3914, 4, FALSE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (87, '2024-06-21', 'ATM Network', 'Anomalous Pattern', 'POST', '/api/v1/balance', 200, 2526, 3, FALSE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (88, '2024-06-23', 'POS Terminal', 'Injection Attempt', 'PUT', '/api/v1/users', 200, 1633, 4, TRUE, 'Mozilla/5.0', 'RU');
INSERT INTO api_security_events VALUES (89, '2024-06-25', 'Internet Banking', 'Rate Limit Exceeded', 'PATCH', '/api/v1/balance', 401, 4404, 5, TRUE, 'Python-requests/2.x', 'PE');
INSERT INTO api_security_events VALUES (90, '2024-06-27', 'Open Banking API', 'Injection Attempt', 'GET', '/api/v1/balance', 200, 2395, 2, FALSE, 'Python-requests/2.x', 'RU');
INSERT INTO api_security_events VALUES (91, '2024-06-29', 'Mobile Banking', 'Rate Limit Exceeded', 'POST', '/api/v1/transfer', 200, 3397, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (92, '2024-07-01', 'POS Terminal', 'Auth Failure', 'PATCH', '/api/v1/transactions', 429, 4750, 2, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (93, '2024-07-03', 'ATM Network', 'Auth Failure', 'PUT', '/api/v1/users', 429, 4525, 5, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (94, '2024-07-05', 'Mobile Banking', 'Injection Attempt', 'GET', '/api/v2/auth', 401, 333, 3, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (95, '2024-07-07', 'ATM Network', 'Anomalous Pattern', 'PATCH', '/api/v1/transfer', 403, 1502, 4, TRUE, 'nan', 'US');
INSERT INTO api_security_events VALUES (96, '2024-07-09', 'Mobile Banking', 'Auth Failure', 'PUT', '/api/v2/auth', 200, 2618, 2, FALSE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (97, '2024-07-11', 'Internet Banking', 'Anomalous Pattern', 'GET', '/api/v1/transfer', 429, 4565, 1, FALSE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (98, '2024-07-13', 'Mobile Banking', 'Injection Attempt', 'PUT', '/api/v1/balance', 200, 1201, 5, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (99, '2024-07-15', 'ATM Network', 'Rate Limit Exceeded', 'DELETE', '/api/v1/balance', 401, 3750, 3, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (100, '2024-07-17', 'POS Terminal', 'Token Expired', 'DELETE', '/api/v1/balance', 400, 363, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (101, '2024-07-19', 'Cash Management', 'Rate Limit Exceeded', 'PATCH', '/api/v1/balance', 401, 2200, 5, FALSE, 'PostmanRuntime/7.x', 'US');
INSERT INTO api_security_events VALUES (102, '2024-07-21', 'POS Terminal', 'Anomalous Pattern', 'PATCH', '/api/v1/users', 400, 3425, 1, FALSE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (103, '2024-07-23', 'POS Terminal', 'Injection Attempt', 'PUT', '/api/v1/transactions', 400, 3621, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (104, '2024-07-25', 'ATM Network', 'Token Expired', 'PATCH', '/api/v2/auth', 200, 1462, 3, TRUE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (105, '2024-07-27', 'POS Terminal', 'Injection Attempt', 'GET', '/api/v1/transactions', 400, 2995, 1, FALSE, 'PostmanRuntime/7.x', 'US');
INSERT INTO api_security_events VALUES (106, '2024-07-29', 'ATM Network', 'Token Expired', 'PUT', '/api/v1/transactions', 400, 1756, 2, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (107, '2024-07-31', 'Open Banking API', 'Anomalous Pattern', 'GET', '/api/v1/users', 401, 137, 1, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (108, '2024-08-02', 'Open Banking API', 'Rate Limit Exceeded', 'GET', '/api/v1/transactions', 401, 3607, 2, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (109, '2024-08-04', 'Cash Management', 'Rate Limit Exceeded', 'POST', '/api/v2/auth', 403, 3204, 1, FALSE, 'Python-requests/2.x', 'PE');
INSERT INTO api_security_events VALUES (110, '2024-08-06', 'ATM Network', 'Rate Limit Exceeded', 'PATCH', '/api/v2/auth', 401, 1821, 2, TRUE, 'Mozilla/5.0', 'CN');
INSERT INTO api_security_events VALUES (111, '2024-08-08', 'ATM Network', 'Rate Limit Exceeded', 'GET', '/api/v1/balance', 200, 4058, 2, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (112, '2024-08-10', 'ATM Network', 'Token Expired', 'POST', '/api/v1/users', 400, 2977, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (113, '2024-08-12', 'Mobile Banking', 'Rate Limit Exceeded', 'PUT', '/api/v1/transactions', 403, 2286, 3, TRUE, 'Mozilla/5.0', 'US');
INSERT INTO api_security_events VALUES (114, '2024-08-14', 'Cash Management', 'Token Expired', 'GET', '/api/v1/transactions', 429, 415, 3, FALSE, 'curl/7.x', 'RU');
INSERT INTO api_security_events VALUES (115, '2024-08-16', 'POS Terminal', 'Auth Failure', 'POST', '/api/v1/users', 403, 4651, 2, TRUE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (116, '2024-08-18', 'Open Banking API', 'Rate Limit Exceeded', 'PUT', '/api/v1/balance', 401, 1994, 1, FALSE, 'Python-requests/2.x', 'RU');
INSERT INTO api_security_events VALUES (117, '2024-08-20', 'Mobile Banking', 'Token Expired', 'DELETE', '/api/v1/users', 403, 3559, 3, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (118, '2024-08-22', 'Mobile Banking', 'Injection Attempt', 'PATCH', '/api/v1/transactions', 400, 4444, 4, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (119, '2024-08-24', 'Internet Banking', 'Anomalous Pattern', 'PATCH', '/api/v1/transactions', 403, 3261, 4, FALSE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (120, '2024-08-26', 'Cash Management', 'Injection Attempt', 'PATCH', '/api/v1/transfer', 200, 4291, 3, TRUE, 'Mozilla/5.0', 'CO');
INSERT INTO api_security_events VALUES (121, '2024-08-28', 'Internet Banking', 'Unauthorized Endpoint', 'DELETE', '/api/v1/balance', 400, 512, 3, FALSE, 'Python-requests/2.x', 'PE');
INSERT INTO api_security_events VALUES (122, '2024-08-30', 'Internet Banking', 'Auth Failure', 'POST', '/api/v1/transfer', 403, 3250, 3, TRUE, 'Mozilla/5.0', 'US');
INSERT INTO api_security_events VALUES (123, '2024-09-01', 'Internet Banking', 'Injection Attempt', 'POST', '/api/v1/transfer', 200, 2044, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (124, '2024-09-03', 'Mobile Banking', 'Auth Failure', 'PATCH', '/api/v1/users', 200, 2995, 4, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (125, '2024-09-05', 'Internet Banking', 'Injection Attempt', 'GET', '/api/v1/transactions', 401, 2911, 4, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (126, '2024-09-07', 'POS Terminal', 'Injection Attempt', 'GET', '/api/v1/users', 429, 4541, 1, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (127, '2024-09-09', 'Cash Management', 'Token Expired', 'PUT', '/api/v1/users', 200, 3132, 1, TRUE, 'Python-requests/2.x', 'CN');
INSERT INTO api_security_events VALUES (128, '2024-09-11', 'Internet Banking', 'Auth Failure', 'PUT', '/api/v2/auth', 401, 2118, 3, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (129, '2024-09-13', 'Mobile Banking', 'Token Expired', 'DELETE', '/api/v2/auth', 400, 3363, 2, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (130, '2024-09-15', 'POS Terminal', 'Injection Attempt', 'GET', '/api/v2/auth', 401, 4883, 4, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (131, '2024-09-17', 'Mobile Banking', 'Auth Failure', 'POST', '/api/v1/transactions', 500, 256, 4, FALSE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (132, '2024-09-19', 'Cash Management', 'Injection Attempt', 'POST', '/api/v1/balance', 401, 2314, 2, FALSE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (133, '2024-09-21', 'Cash Management', 'Injection Attempt', 'GET', '/api/v1/balance', 200, 681, 3, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (134, '2024-09-23', 'Mobile Banking', 'Unauthorized Endpoint', 'PUT', '/api/v2/auth', 403, 148, 5, TRUE, 'curl/7.x', 'EC');
INSERT INTO api_security_events VALUES (135, '2024-09-25', 'ATM Network', 'Anomalous Pattern', 'PATCH', '/api/v1/transactions', 401, 2269, 2, FALSE, 'Mozilla/5.0', 'US');
INSERT INTO api_security_events VALUES (136, '2024-09-27', 'POS Terminal', 'Rate Limit Exceeded', 'DELETE', '/api/v1/balance', 400, 2132, 1, TRUE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (137, '2024-09-29', 'Cash Management', 'Token Expired', 'GET', '/api/v1/transactions', 500, 4089, 1, TRUE, 'PostmanRuntime/7.x', 'CO');
INSERT INTO api_security_events VALUES (138, '2024-10-01', 'ATM Network', 'Unauthorized Endpoint', 'PATCH', '/api/v2/auth', 403, 3267, 2, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (139, '2024-10-03', 'POS Terminal', 'Injection Attempt', 'DELETE', '/api/v2/auth', 401, 588, 1, TRUE, 'PostmanRuntime/7.x', 'EC');
INSERT INTO api_security_events VALUES (140, '2024-10-05', 'Cash Management', 'Injection Attempt', 'GET', '/api/v1/transfer', 400, 3046, 2, TRUE, 'nan', 'EC');
INSERT INTO api_security_events VALUES (141, '2024-10-07', 'Open Banking API', 'Token Expired', 'DELETE', '/api/v1/balance', 400, 1493, 5, TRUE, 'Mozilla/5.0', 'CN');
INSERT INTO api_security_events VALUES (142, '2024-10-09', 'Mobile Banking', 'Anomalous Pattern', 'GET', '/api/v1/balance', 401, 1708, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (143, '2024-10-11', 'Open Banking API', 'Injection Attempt', 'POST', '/api/v1/transactions', 401, 1944, 1, TRUE, 'nan', 'CO');
INSERT INTO api_security_events VALUES (144, '2024-10-13', 'Open Banking API', 'Token Expired', 'GET', '/api/v1/users', 200, 1223, 3, TRUE, 'Mozilla/5.0', 'EC');
INSERT INTO api_security_events VALUES (145, '2024-10-15', 'Internet Banking', 'Anomalous Pattern', 'DELETE', '/api/v1/transfer', 401, 3936, 3, TRUE, 'Python-requests/2.x', 'CO');
INSERT INTO api_security_events VALUES (146, '2024-10-17', 'Cash Management', 'Anomalous Pattern', 'DELETE', '/api/v1/transactions', 400, 4919, 4, FALSE, 'PostmanRuntime/7.x', 'CN');
INSERT INTO api_security_events VALUES (147, '2024-10-19', 'ATM Network', 'Injection Attempt', 'DELETE', '/api/v1/balance', 403, 1704, 3, TRUE, 'Mozilla/5.0', 'CO');
INSERT INTO api_security_events VALUES (148, '2024-10-21', 'POS Terminal', 'Auth Failure', 'DELETE', '/api/v1/transfer', 401, 3962, 5, FALSE, 'Python-requests/2.x', 'EC');
INSERT INTO api_security_events VALUES (149, '2024-10-23', 'Mobile Banking', 'Unauthorized Endpoint', 'GET', '/api/v1/transfer', 400, 1965, 1, TRUE, 'PostmanRuntime/7.x', 'CO');
INSERT INTO api_security_events VALUES (150, '2024-10-25', 'Cash Management', 'Rate Limit Exceeded', 'DELETE', '/api/v1/transactions', 401, 2724, 2, TRUE, 'PostmanRuntime/7.x', 'EC');