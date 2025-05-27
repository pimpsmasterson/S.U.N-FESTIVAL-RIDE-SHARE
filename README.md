# 🌞 Sun Festival Carpool

A community-driven carpooling web app for the Sun Festival 2025 in Csobánkapuszta, Hungary.

## Features

- User authentication and registration
- Create and manage rides to/from the festival
- Request to join rides as a passenger
- Real-time chat with drivers and passengers
- Interactive map integration
- Admin dashboard for festival management

## Getting Started

### Development

1. Clone this repository
2. Install dependencies:
   ```
   npm run install-all
   ```
3. Create a `.env` file in the root directory with the following variables:
   ```
   JWT_SECRET=your_jwt_secret_key
   ```
4. Start the development server:
   ```
   npm start
   ```

This will start both the Express backend server on port 5000 and the React development server on port 3000.

### Production Deployment on Render.com

The easiest way to deploy this application is using Render.com:

1. Fork/push this repository to your GitHub account
2. Sign up/login to [Render.com](https://render.com)
3. Click "New +" → "Web Service"
4. Connect your GitHub repository
5. Use these settings:
   - **Name**: sun-festival-carpool (or your preferred name)
   - **Environment**: Node
   - **Build Command**: `npm run install-all && npm run build`
   - **Start Command**: `npm run prod`
   - **Plan**: Free (or paid for better performance)
6. Under Advanced, add the following environment variables:
   - `NODE_ENV`: production
   - `JWT_SECRET`: (Generate a secure random string)
7. Click "Create Web Service"

After deployment, you'll be able to access your application at the URL provided by Render.

## Tech Stack

- **Frontend**: React, Tailwind CSS
- **Backend**: Node.js, Express
- **Database**: SQLite
- **Real-time**: Socket.IO
- **Authentication**: JWT

## License

MIT

## 🚗 Features

- **User Registration & Authentication** - Secure login system for festival-goers
- **Ride Offering & Requesting** - Drivers can offer rides, passengers can request them
- **Real-time Chat** - Text messaging and location sharing between ride participants
- **Admin Panel** - Google Maps API management and festival configuration
- **Predefined Locations** - Common pickup points (Budapest, Szolnok, Debrecen, etc.)
- **Mobile-Friendly** - Responsive design works on all devices
- **Community-Driven** - No payment system, based on trust and community spirit

## 🛠️ Tech Stack

### Frontend
- **React 18** - Modern UI framework
- **Tailwind CSS** - Utility-first styling
- **React Router** - Client-side routing
- **Axios** - HTTP client
- **React Hot Toast** - Notifications
- **Lucide React** - Beautiful icons

### Backend
- **Node.js** - Server runtime
- **Express.js** - Web framework
- **SQLite** - Lightweight database
- **Socket.IO** - Real-time communication
- **JWT** - Authentication tokens
- **bcryptjs** - Password hashing

### APIs & Services
- **Google Maps API** - Location services (configurable via admin)
- **WebSocket** - Real-time chat and updates

## 🚀 Quick Start

### Prerequisites
- Node.js 16+ and npm
- 4GB+ RAM for local server
- Stable internet connection

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd sun-festival-carpool
   ```

2. **Install dependencies**
   ```bash
   npm run install-all
   ```

3. **Start the development server**
   ```bash
   npm start
   ```

4. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - Admin Panel: http://localhost:3000/admin/login

### Default Admin Access
- **Email:** admin@sunfestival.com
- **Password:** admin123

⚠️ **Important:** Change these credentials after first login!

## 🔧 Configuration

### Google Maps API Setup

1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create a new project or select existing one
3. Enable the following APIs:
   - Maps JavaScript API
   - Geocoding API
   - Places API
4. Create credentials (API Key)
5. Restrict the API key to your domains for security
6. Add the API key through the admin panel at `/admin/settings`

### Festival Configuration

All festival settings can be configured through the admin panel:
- Festival name and dates
- Location and coordinates
- Pickup locations
- Google Maps API integration

## 📱 Usage

### For Festival-Goers

1. **Register/Login** - Create an account or sign in
2. **Find Rides** - Browse available rides to the festival
3. **Offer Rides** - Share your car and help others
4. **Chat** - Coordinate with your ride partners
5. **Share Location** - Real-time location sharing during travel

### For Admins

1. **Login** - Access admin panel at `/admin/login`
2. **Configure APIs** - Set up Google Maps integration
3. **Manage Locations** - Add/edit pickup points
4. **Monitor Activity** - View dashboard statistics

## 🌐 Deployment

### Local PC Server Setup

1. **Install Node.js** on your local PC
2. **Configure port forwarding** on your router (port 5000)
3. **Optional:** Use dynamic DNS service (e.g., No-IP) for friendly URL
4. **Install NGINX** for production (optional but recommended)

### Production Build

```bash
# Build the React app
npm run build

# Start production server
NODE_ENV=production npm run server
```

### Sharing the App

- Share the URL via Facebook and festival channels
- Create a simple guide for users
- Ensure stable internet connection during festival dates

## 📊 Database Schema

The app uses SQLite with the following main tables:
- `users` - User accounts and authentication
- `rides` - Ride offers and details
- `ride_requests`