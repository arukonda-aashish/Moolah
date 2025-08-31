# AI Financial Tracker 💰

A comprehensive expense tracking application with AI-powered features, OCR receipt processing, smart budgeting, and team collaboration capabilities.

## ✨ Features

- **Smart Expense Capture**: Quick add, bulk import, and receipt OCR processing
- **AI-Powered Categorization**: Automatic expense categorization with confidence scoring
- **Advanced Budgeting**: Dynamic budgets with smart alerts and seasonal adjustments
- **Team Collaboration**: Shared expenses, approval workflows, and role-based access
- **Natural Language Search**: Query expenses using natural language
- **Real-time Notifications**: Budget alerts, duplicate detection, and custom triggers
- **Comprehensive Reporting**: Export capabilities and automated report generation
- **Mobile-First Design**: PWA support with offline capabilities

## 🛠 Tech Stack

- **Frontend**: Next.js 14, TypeScript, Tailwind CSS, Zustand
- **Backend**: Go (Gin), PostgreSQL, Redis
- **Infrastructure**: Docker, Docker Compose, Nginx
- **AI/ML**: OpenAI API, Tesseract OCR
- **Authentication**: JWT with refresh tokens
- **File Storage**: Local filesystem with S3 support

## 🚀 Quick Start

### Prerequisites

- Docker and Docker Compose installed
- Git installed
- Make (optional, for easier commands)

### 1. Clone and Setup

```bash
git clone <your-repo-url>
cd ai-financial-tracker

# Run the setup script
chmod +x setup.sh
./setup.sh

# Or use make
make setup
```

### 2. Configure Environment

Update the generated environment files with your API keys:

```bash
# Edit main environment file
vim .env.local

# Edit frontend environment file
vim frontend/.env.local
```

**Required API Keys:**
- OpenAI API key for natural language processing
- OCR API key (OCR.space or similar)
- Email service credentials (SMTP)

### 3. Start the Application

```bash
# Start all services
docker-compose up --build

# Or run in background
docker-compose up -d --build

# Or using make (if available)
make up-build
```

### 4. Access the Application

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:8080
- **PgAdmin**: http://localhost:5050 (admin@financialtracker.dev / admin123)
- **Redis Commander**: http://localhost:8081

## 📁 Project Structure

```
ai-financial-tracker/
├── frontend/                    # Next.js React application
├── backend/                     # Go API server
├── database/                    # PostgreSQL configuration
├── redis/                       # Redis configuration
├── nginx/                       # Reverse proxy configuration
├── docker-compose.yml           # Production orchestration
├── docker-compose.dev.yml       # Development overrides
└── Makefile                     # Development commands
```

## 🐳 Docker Commands

### Basic Operations

```bash
# Start all services
docker-compose up

# Start and rebuild
docker-compose up --build

# Start in background
docker-compose up -d

# Stop all services
docker-compose down

# View logs
docker-compose logs -f

# Check status
docker-compose ps
```

### With Make (Optional)

```bash
# Start services
make up

# Start and rebuild
make up-build

# Stop services
make down

# View logs
make logs
```

### Database Operations

```bash
# Access PostgreSQL shell
make db-shell

# Reset development database
make db-reset

# Create backup
make backup

# Restore from backup
make restore BACKUP_FILE=backups/backup_20241201_120000.sql
```

### Maintenance

```bash
# Clean up containers and volumes
make clean

# Check service health
make health

# Monitor resource usage
make monitor
```

## 🔧 Configuration

### Environment Variables

#### Core Settings
- `APP_ENV`: Application environment (development/production)
- `DB_HOST`, `DB_NAME`, `DB_USER`, `DB_PASSWORD`: Database configuration
- `REDIS_HOST`, `REDIS_PASSWORD`: Redis configuration
- `JWT_SECRET`, `JWT_REFRESH_SECRET`: Authentication secrets

#### Feature Toggles
- `FEATURE_TEAMS_ENABLED`: Enable team functionality
- `FEATURE_OCR_PROCESSING`: Enable receipt OCR
- `FEATURE_NATURAL_LANGUAGE_SEARCH`: Enable AI search
- `FEATURE_BUDGET_ALERTS`: Enable budget notifications

#### External Services
- `OPENAI_API_KEY`: For natural language processing
- `OCR_API_KEY`: For receipt text extraction
- `SMTP_*`: Email service configuration

### Security Configuration

The application includes several security features:

- **JWT Authentication** with access and refresh tokens
- **Rate limiting** on API endpoints
- **Input validation** and sanitization
- **CORS** configuration
- **File upload** restrictions and validation
- **Password hashing** using bcrypt
- **SQL injection** protection via parameterized queries

## 🧪 Testing

### Backend Tests
```bash
# Run all backend tests
make test-backend

# Run with coverage
cd backend && go test -cover ./...

# Run specific package tests
cd backend && go test ./internal/services
```

### Frontend Tests
```bash
# Run frontend tests
make test-frontend

# Run with watch mode
cd frontend && npm run test:watch

# Run with coverage
cd frontend && npm run test:coverage
```

## 📊 Database Schema

### Core Tables

- **users**: User accounts and preferences
- **teams**: Team/organization management
- **expenses**: Main expense records
- **categories**: Hierarchical expense categories
- **budgets**: Budget definitions and tracking
- **receipts**: Receipt storage and OCR data
- **notifications**: Alert and notification system

### Key Features

- **UUID Primary Keys**: All tables use UUID for better security
- **Soft Deletes**: Important records use soft deletion
- **Audit Trail**: All changes are logged in audit_logs table
- **Indexing**: Optimized indexes for common query patterns
- **Constraints**: Data integrity enforced at database level

## 🔄 API Endpoints

### Authentication
- `POST /api/v1/auth/login` - User login
- `POST /api/v1/auth/register` - User registration
- `POST /api/v1/auth/refresh` - Token refresh
- `POST /api/v1/auth/logout` - User logout

### Expenses
- `GET /api/v1/expenses` - List expenses with filters
- `POST /api/v1/expenses` - Create new expense
- `PUT /api/v1/expenses/{id}` - Update expense
- `DELETE /api/v1/expenses/{id}` - Delete expense
- `POST /api/v1/expenses/bulk` - Bulk import expenses

### Receipts
- `POST /api/v1/receipts/upload` - Upload receipt for OCR
- `GET /api/v1/receipts/{id}` - Get receipt details
- `POST /api/v1/receipts/{id}/process` - Trigger OCR processing

### Budgets
- `GET /api/v1/budgets` - List user budgets
- `POST /api/v1/budgets` - Create budget
- `PUT /api/v1/budgets/{id}` - Update budget
- `GET /api/v1/budgets/{id}/alerts` - Get budget alerts

## 🎨 Frontend Design System

### Apple-Inspired UI

The frontend follows Apple's Human Interface Guidelines:

- **Typography**: Inter font family with clean hierarchy
- **Colors**: Blue primary palette with semantic color system
- **Spacing**: 8px grid system for consistent spacing
- **Components**: Rounded corners, subtle shadows, smooth animations
- **Interactions**: 200ms transitions, gentle hover effects

### Component Architecture

```
components/
├── ui/                 # Base components (Button, Input, Card)
├── forms/              # Form components (ExpenseForm, BudgetForm)
├── charts/             # Data visualization components
├── layout/             # Layout components (Header, Sidebar)
└── features/           # Feature-specific components
```

## 🚀 Deployment

### Production Deployment

1. **Environment Setup**
   ```bash
   # Copy and configure production environment
   cp .env .env.production
   # Update with production values
   ```

2. **SSL Certificates**
   ```bash
   # Generate SSL certificates
   make ssl
   ```

3. **Start Production**
   ```bash
   # Start all services
   make prod
   ```

### Scaling Considerations

- **Database**: Configure connection pooling and read replicas
- **Redis**: Set up Redis cluster for high availability
- **File Storage**: Move to S3 or similar cloud storage
- **Load Balancing**: Use multiple backend instances behind nginx

## 🔍 Monitoring & Debugging

### Logs
```bash
# View all service logs
make logs

# View specific service logs
docker-compose logs -f backend
docker-compose logs -f frontend
```

### Health Checks
```bash
# Check service health
make health

# Individual service health
curl http://localhost:8080/health
curl http://localhost:3000/api/health
```

### Performance Monitoring
```bash
# View resource usage
make monitor

# Access application metrics
curl http://localhost:9090/metrics
```

## 🛡 Security Best Practices

### Environment Security
- Never commit `.env` files to version control
- Use strong, randomly generated secrets
- Rotate secrets regularly in production
- Use different secrets for each environment

### Database Security
- Use least-privilege database users
- Enable SSL/TLS in production
- Regular security updates
- Database connection encryption

### Application Security
- Input validation on all endpoints
- Rate limiting on sensitive endpoints
- HTTPS only in production
- Secure file upload handling
- XSS and CSRF protection

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Make your changes and test thoroughly
4. Commit with conventional commits: `git commit -m "feat: add new feature"`
5. Push to your fork: `git push origin feature/new-feature`
6. Create a Pull Request

### Development Workflow

```bash
# Start development environment
make dev

# Make changes to code
# Frontend hot reloading: http://localhost:3000
# Backend rebuilds on file changes

# Run tests
make test

# Check code quality
make lint

# Create database backup before major changes
make backup
```

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

- **Documentation**: Check the `/docs` directory for detailed guides
- **Issues**: Report bugs and feature requests via GitHub Issues
- **Discussions**: Join community discussions in GitHub Discussions

## 🗺 Roadmap

- [ ] Mobile app (React Native)
- [ ] Bank account integration (Plaid)
- [ ] Advanced AI insights and predictions
- [ ] Multi-currency support with real-time conversion
- [ ] Integration with accounting software (QuickBooks, Xero)
- [ ] Advanced reporting and analytics dashboard
- [ ] API for third-party integrations