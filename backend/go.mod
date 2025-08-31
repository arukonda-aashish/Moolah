module ai-financial-tracker-backend

go 1.21

require (
    // Web framework
    github.com/gin-gonic/gin v1.9.1
    github.com/gin-contrib/cors v1.4.0
    github.com/gin-contrib/gzip v0.0.6
    github.com/gin-contrib/requestid v0.0.6
    
    // Database
    github.com/lib/pq v1.10.9
    github.com/golang-migrate/migrate/v4 v4.16.2
    github.com/jmoiron/sqlx v1.3.5
    
    // Redis
    github.com/redis/go-redis/v9 v9.3.0
    
    // Authentication & Security
    github.com/golang-jwt/jwt/v5 v5.2.0
    golang.org/x/crypto v0.17.0
    github.com/google/uuid v1.5.0
    
    // Validation & Configuration
    github.com/go-playground/validator/v10 v10.16.0
    github.com/joho/godotenv v1.4.0
    github.com/spf13/viper v1.18.2
    
    // File handling & OCR
    github.com/disintegration/imaging v1.6.2
    github.com/otiai10/gosseract/v2 v2.4.1
    
    // HTTP Client & Utilities
    github.com/go-resty/resty/v2 v2.11.0
    
    // Logging
    github.com/sirupsen/logrus v1.9.3
    github.com/natefinch/lumberjack v2.0.0
    
    // Testing
    github.com/stretchr/testify v1.8.4
    github.com/DATA-DOG/go-sqlmock v1.5.0
    github.com/go-redis/redismock/v9 v9.2.0
    
    // Background Jobs & Scheduling
    github.com/robfig/cron/v3 v3.0.1
    github.com/hibiken/asynq v0.24.1
    
    // Metrics & Monitoring
    github.com/prometheus/client_golang v1.17.0
    github.com/gin-contrib/pprof v1.4.0
    
    // Email
    gopkg.in/gomail.v2 v2.0.0-20160411212932-81ebce5c23df
    
    // Decimal handling
    github.com/shopspring/decimal v1.3.1
    
    // Time utilities
    github.com/jinzhu/now v1.1.5
    
    // Rate limiting
    github.com/ulule/limiter/v3 v3.11.2
    
    // WebSocket
    github.com/gorilla/websocket v1.5.1
    
    // Currency conversion
    github.com/rhymond/go-money v1.0.10
    
    // Excel/CSV processing
    github.com/360EntSecGroup-Skylar/excelize/v2 v2.8.1
    github.com/gocarina/gocsv v0.0.0-20231116093920-b87c2d0e983a
    
    // Image processing
    github.com/chai2010/webp v1.1.1
    
    // Encryption
    github.com/golang/crypto v0.0.0-20200622213623-75b288015ac9
    
    // Environment detection
    github.com/joho/godotenv v1.4.0
    
    // HTTP middleware
    github.com/gin-contrib/static v0.0.1
    github.com/gin-contrib/secure v0.0.1
    github.com/gin-contrib/timeout v0.0.3
    
    // JSON handling
    github.com/tidwall/gjson v1.17.0
    github.com/tidwall/sjson v1.2.5
    
    // String utilities
    github.com/iancoleman/strcase v0.3.0
    
    // Concurrency utilities
    golang.org/x/sync v0.5.0
    
    // Context utilities
    golang.org/x/net v0.19.0
)

require (
    // Indirect dependencies (automatically managed)
    github.com/bytedance/sonic v1.9.1 // indirect
    github.com/chenzhuoyu/base64x v0.0.0-20221115062448-fe3a3abad311 // indirect
    github.com/gabriel-vasile/mimetype v1.4.2 // indirect
    github.com/gin-contrib/sse v0.1.0 // indirect
    github.com/go-playground/locales v0.14.1 // indirect
    github.com/go-playground/universal-translator v0.18.1 // indirect
    github.com/goccy/go-json v0.10.2 // indirect
    github.com/json-iterator/go v1.1.12 // indirect
    github.com/klauspost/cpuid/v2 v2.2.4 // indirect
    github.com/leodido/go-urn v1.2.4 // indirect
    github.com/mattn/go-isatty v0.0.19 // indirect
    github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
    github.com/modern-go/reflect2 v1.0.2 // indirect
    github.com/pelletier/go-toml/v2 v2.0.8 // indirect
    github.com/twitchyliquid64/golang-asm v0.15.1 // indirect
    github.com/ugorji/go/codec v1.2.11 // indirect
    golang.org/x/arch v0.3.0 // indirect
    golang.org/x/sys v0.15.0 // indirect
    golang.org/x/text v0.14.0 // indirect
    google.golang.org/protobuf v1.30.0 // indirect
    gopkg.in/yaml.v3 v3.0.1 // indirect
)