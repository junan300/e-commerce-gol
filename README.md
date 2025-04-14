# E-Commerce GOL

A modern e-commerce project built with Next.js, TypeScript, and Tailwind CSS.

## Project Structure

```
e-commerce-gol/
├── source-code/          # Main Next.js application
│   ├── src/
│   │   ├── app/          # Next.js app directory
│   │   ├── components/   # React components
│   │   ├── lib/          # Utilities and context providers
│   │   ├── data/         # Data files (products.json)
│   │   ├── hooks/        # Custom React hooks
│   │   └── assets/       # Static assets
│   ├── public/           # Public assets
│   └── package.json      # Dependencies
├── start-dev.sh          # Development startup script
└── .env.example          # Example environment variables
```

## Getting Started

### Prerequisites

- Node.js 16.x or higher
- npm or yarn

### Development

1. Clone the repository:
   ```bash
   git clone https://github.com/junan300/e-commerce-gol.git
   cd e-commerce-gol
   ```

2. Start the development server:
   ```bash
   ./start-dev.sh
   ```
   
   This script will:
   - Navigate to the source-code directory
   - Install dependencies if needed
   - Start the Next.js development server

3. Open [http://localhost:3000](http://localhost:3000) in your browser.

## Features

- Product catalog with detailed product pages
- Shopping cart functionality
- Checkout process
- Responsive design
- Modern UI with dark mode

## Future Plans

- Integration with payment processors
- User authentication
- Admin dashboard
- Order history and tracking
- Product search and filtering

## License

[MIT](LICENSE)