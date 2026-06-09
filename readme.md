# Práctica 1 – Inteligencia de Negocios
## Grupo 3 | Maestría en Ciberseguridad – UIDE

**Integrantes:**
- Alejandra Beatriz Tello González
- Pablo Ramiro Vallejo Zúñiga

**Dominio:** Ciberseguridad Bancaria

---

## Estructura del proyecto

```
Practica1_G_3/
├── .env                          # Credenciales BD (no versionar en producción)
├── docker-compose.yml            # Contenedor PostgreSQL 17
├── desarrolloG3.ipynb            # Notebook principal con los 3 DataFrames y análisis
├── readme.md                     # Este archivo
└── data/
    ├── seed_api_security.sql     # Script DDL + INSERT para tabla PostgreSQL
    ├── incidentes_seguridad.csv  # Fuente CSV: 300 incidentes de red
    └── vulnerabilidades_cve.json # Fuente JSON: 80 vulnerabilidades CVE
```

---

## Fuentes de datos

| Fuente | Tipo | Registros | Descripción |
|--------|------|-----------|-------------|
| `api_security_events` | PostgreSQL | 150 | Eventos de seguridad en canales bancarios digitales |
| `incidentes_seguridad.csv` | CSV | 300 | Incidentes de red detectados por IDS |
| `vulnerabilidades_cve.json` | JSON | 80 | Resultados de escaneo de vulnerabilidades CVE |

---

## Levantar el entorno

```bash
# 1. Levantar contenedor Docker con PostgreSQL
docker-compose up -d

# 2. Verificar contenedores activos
docker ps
```

---

## Fase I – Configuración

### 1. Ejecución del docker-compose

<!-- CAPTURA 1: ejecuta "docker-compose up -d" en la terminal y captura la salida completa mostrando las líneas verdes de "Started" o "Running" -->

![docker-compose up](capturas/01_docker_compose_up.png)

### 2. Contenedores activos

<!-- CAPTURA 2: ejecuta "docker ps" y captura la terminal mostrando el contenedor ciber_12B con status "Up" y puerto 5432 mapeado -->

![docker ps](capturas/02_docker_ps.png)

### 3. Base de datos creada en PyCharm

<!-- CAPTURA 3: en PyCharm Pro ve a la pestaña Database → conexión a dbmcib12b → captura el ícono verde de conectado y el árbol de objetos de la base de datos -->

![database connection](capturas/03_pycharm_db_connection.png)

---

## Fase II – Desarrollo

### 4. Dependencias cargadas

<!-- CAPTURA 4: ejecuta la celda de imports en el notebook y captura la salida: "✅ Dependencias cargadas correctamente" -->

![imports](capturas/04_imports_ok.png)

### 5. Variables de entorno y conexión

<!-- CAPTURA 5: ejecuta las celdas de variables de entorno y engine, captura la línea "🔌 Conectando a: localhost:5432/dbmcib12b como usuario 'admin'" -->

![env vars](capturas/05_env_vars.png)

### 6. Seed SQL ejecutado – tabla api_security_events cargada

<!-- CAPTURA 6: ejecuta la celda del seed SQL y captura la salida: "✅ Tabla 'api_security_events' creada y datos cargados" -->

![seed sql](capturas/06_seed_sql_ok.png)

### 7. Los tres DataFrames generados

<!-- CAPTURA 7: ejecuta la celda de carga de los 3 DataFrames y captura las 3 líneas de confirmación con el shape de cada uno -->

![dataframes loaded](capturas/07_dataframes_cargados.png)

---

## Análisis 1 – API Security Events (PostgreSQL)

### 8. Primeras 5 filas

<!-- CAPTURA 8: ejecuta df_postgres.head() y captura la tabla completa con las 5 filas y todas las columnas -->

![postgres head](capturas/08_postgres_head.png)

### 9. Columnas con valores nulos y conteo

<!-- CAPTURA 9: ejecuta las celdas de nulos (ii y iii) y captura ambas salidas juntas -->

![postgres nulls](capturas/09_postgres_nulos.png)

### 10. Estadísticas de response_time_ms

<!-- CAPTURA 10: ejecuta la celda de estadísticas y captura las 3 líneas con promedio, máximo y mínimo -->

![postgres stats](capturas/10_postgres_stats.png)

### 11. Máximo y mínimo de risk_score agrupado por canal y tipo de evento

<!-- CAPTURA 11: ejecuta la celda de agrupación y captura la tabla completa ordenada por risk_max -->

![postgres group](capturas/11_postgres_agrupado.png)

---

## Análisis 2 – Incidentes de Seguridad de Red (CSV)

### 12. Primeras 5 filas

<!-- CAPTURA 12: ejecuta df_csv.head() y captura la tabla con las 5 filas -->

![csv head](capturas/12_csv_head.png)

### 13. Columnas con valores nulos y conteo

<!-- CAPTURA 13: captura ambas salidas de nulos del CSV (columnas con nulos + conteo) -->

![csv nulls](capturas/13_csv_nulos.png)

### 14. Estadísticas de bytes_transferred

<!-- CAPTURA 14: captura las 3 líneas de promedio, máximo y mínimo en KB/MB -->

![csv stats](capturas/14_csv_stats.png)

### 15. Duración máxima y mínima agrupada por tipo de ataque y severidad

<!-- CAPTURA 15: captura la tabla completa ordenada por duracion_max_seg -->

![csv group](capturas/15_csv_agrupado.png)

---

## Análisis 3 – Vulnerabilidades CVE (JSON)

### 16. Primeras 5 filas

<!-- CAPTURA 16: ejecuta df_json.head() y captura la tabla con las 5 filas y columnas CVE -->

![json head](capturas/16_json_head.png)

### 17. Columnas con valores nulos y conteo

<!-- CAPTURA 17: captura las salidas de nulos del JSON -->

![json nulls](capturas/17_json_nulos.png)

### 18. Estadísticas de cvss_score

<!-- CAPTURA 18: captura las 3 líneas con promedio, máximo y mínimo del score CVSS -->

![json stats](capturas/18_json_stats.png)

### 19. Hosts afectados agrupados por sistema y severidad CVSS

<!-- CAPTURA 19: captura la tabla completa ordenada por hosts_max -->

![json group](capturas/19_json_agrupado.png)

