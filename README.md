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







## Container up

<img width="1074" height="363" alt="image" src="https://github.com/user-attachments/assets/31b49199-69fd-442e-8172-ed5d2f290416" />



<img width="979" height="349" alt="image" src="https://github.com/user-attachments/assets/225fb609-5cd7-49f4-84cb-d08fb0992d0b" />



<img width="1918" height="466" alt="image" src="https://github.com/user-attachments/assets/b9ae1fce-9291-4aa3-9485-796822a552e7" />


## Data Base up


<img width="630" height="633" alt="image" src="https://github.com/user-attachments/assets/93a9bb1c-b8ec-425d-bd60-2e09ff46cf26" />
