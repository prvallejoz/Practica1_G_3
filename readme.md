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

<img width="1074" height="363" alt="image" src="https://github.com/user-attachments/assets/31b49199-69fd-442e-8172-ed5d2f290416" />

### 2. Contenedores activos

<!-- CAPTURA 2: ejecuta "docker ps" y captura la terminal mostrando el contenedor ciber_12B con status "Up" y puerto 5432 mapeado -->

<img width="981" height="350" alt="image" src="https://github.com/user-attachments/assets/125b6a2b-a3ce-46d6-be67-8367ee2d2646" />


<img width="1919" height="473" alt="image" src="https://github.com/user-attachments/assets/d22074fe-df67-4c93-aa04-adc32c765d8d" />

### 3. Base de datos creada en PyCharm

<!-- CAPTURA 3: en PyCharm Pro ve a la pestaña Database → conexión a dbmcib12b → captura el ícono verde de conectado y el árbol de objetos de la base de datos -->

<img width="504" height="507" alt="image" src="https://github.com/user-attachments/assets/41956d53-5280-4480-b67d-6281713f4a7e" />

---

## Fase II – Desarrollo

### 4. Dependencias cargadas

<!-- CAPTURA 4: ejecuta la celda de imports en el notebook y captura la salida: "✅ Dependencias cargadas correctamente" -->

<img width="724" height="400" alt="image" src="https://github.com/user-attachments/assets/165d497d-0ecd-4a6b-b96c-ea899d0bd39f" />


### 5. Variables de entorno y conexión

<!-- CAPTURA 5: ejecuta las celdas de variables de entorno y engine, captura la línea "🔌 Conectando a: localhost:5432/dbmcib12b como usuario 'admin'" -->

<img width="728" height="416" alt="image" src="https://github.com/user-attachments/assets/1178f873-c1e7-4bd7-b581-549b425e9d1e" />


### 6. Seed SQL ejecutado – tabla api_security_events cargada

<!-- CAPTURA 6: ejecuta la celda del seed SQL y captura la salida: "✅ Tabla 'api_security_events' creada y datos cargados" -->

<img width="724" height="722" alt="image" src="https://github.com/user-attachments/assets/0759c76f-a2e4-45ca-a474-2e097cc33200" />


### 7. Los tres DataFrames generados

<!-- CAPTURA 7: ejecuta la celda de carga de los 3 DataFrames y captura las 3 líneas de confirmación con el shape de cada uno -->

<img width="725" height="588" alt="image" src="https://github.com/user-attachments/assets/8e3aa853-c2d0-44df-b9cb-31ee72e66fb4" />

---

## Análisis 1 – API Security Events (PostgreSQL)

### 8. Primeras 5 filas

<!-- CAPTURA 8: ejecuta df_postgres.head() y captura la tabla completa con las 5 filas y todas las columnas -->

<img width="1526" height="549" alt="image" src="https://github.com/user-attachments/assets/df381ad1-790f-4193-ae17-9a773c3eeec9" />


### 9. Columnas con valores nulos y conteo

<!-- CAPTURA 9: ejecuta las celdas de nulos (ii y iii) y captura ambas salidas juntas -->

<img width="1152" height="567" alt="image" src="https://github.com/user-attachments/assets/114859a1-c737-43f0-92f6-5b485aac7366" />


### 10. Estadísticas de response_time_ms

<!-- CAPTURA 10: ejecuta la celda de estadísticas y captura las 3 líneas con promedio, máximo y mínimo -->

<img width="990" height="338" alt="image" src="https://github.com/user-attachments/assets/24e8bd89-7752-4e86-a6da-eaa508e86884" />


### 11. Máximo y mínimo de risk_score agrupado por canal y tipo de evento

<!-- CAPTURA 11: ejecuta la celda de agrupación y captura la tabla completa ordenada por risk_max -->

<img width="986" height="731" alt="image" src="https://github.com/user-attachments/assets/590a8f2c-3af9-4f1d-b410-61438cffb1ad" />

---

## Análisis 2 – Incidentes de Seguridad de Red (CSV)

### 12. Primeras 5 filas

<!-- CAPTURA 12: ejecuta df_csv.head() y captura la tabla con las 5 filas -->

<img width="1517" height="411" alt="image" src="https://github.com/user-attachments/assets/d0f4f757-4f48-4e4f-86c2-52a6a587143b" />


### 13. Columnas con valores nulos y conteo

<!-- CAPTURA 13: captura ambas salidas de nulos del CSV (columnas con nulos + conteo) -->

<img width="1050" height="724" alt="image" src="https://github.com/user-attachments/assets/acac77af-0cec-4c07-83a8-fe3d73d8e5bb" />


### 14. Estadísticas de bytes_transferred

<!-- CAPTURA 14: captura las 3 líneas de promedio, máximo y mínimo en KB/MB -->

<img width="907" height="571" alt="image" src="https://github.com/user-attachments/assets/a233a6aa-b35d-4a2a-b901-96df306c7dad" />


### 15. Duración máxima y mínima agrupada por tipo de ataque y severidad

<!-- CAPTURA 15: captura la tabla completa ordenada por duracion_max_seg -->

<img width="873" height="741" alt="image" src="https://github.com/user-attachments/assets/ecfe0680-e556-4cc9-af3d-488d5c03896d" />

---

## Análisis 3 – Vulnerabilidades CVE (JSON)

### 16. Primeras 5 filas

<!-- CAPTURA 16: ejecuta df_json.head() y captura la tabla con las 5 filas y columnas CVE -->

<img width="1526" height="407" alt="image" src="https://github.com/user-attachments/assets/c0d6ceca-87a2-4b71-93c5-9a64259493cc" />


### 17. Columnas con valores nulos y conteo

<!-- CAPTURA 17: captura las salidas de nulos del JSON -->

<img width="1184" height="723" alt="image" src="https://github.com/user-attachments/assets/6f0f42d8-a30d-4b5d-8797-d1676673fbc2" />


### 18. Estadísticas de cvss_score

<!-- CAPTURA 18: captura las 3 líneas con promedio, máximo y mínimo del score CVSS -->

<img width="834" height="585" alt="image" src="https://github.com/user-attachments/assets/1e7cbedd-ba35-4518-8880-5f2f0bb83544" />


### 19. Hosts afectados agrupados por sistema y severidad CVSS

<!-- CAPTURA 19: captura la tabla completa ordenada por hosts_max -->

<img width="1101" height="739" alt="image" src="https://github.com/user-attachments/assets/37d0dc92-23a3-4b11-a930-7554798626b6" />

