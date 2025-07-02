# Spotify Data Analysis Project - Summary

##  Project Overview

This comprehensive data analysis project explores Spotify music data through multiple analytical approaches, demonstrating proficiency in data science, multi-API integration, and statistical analysis.

##  Key Components

### 1. **Exploratory Data Analysis (EDA)**
- **File**: `Spotify_EDA_Part1_Student.ipynb` (1.6MB)
- **Focus**: Statistical analysis, correlation studies, hypothesis testing
- **Techniques**: T-tests, Pearson correlation, distribution analysis

### 2. **Data Extraction & Transformation (ETL)**
- **File**: `Spotify2023_Part1_ETL_Maria_Nyolcas.ipynb` (203KB)
- **Focus**: Data cleaning, feature engineering, data enrichment
- **Process**: Extract → Transform → Load pipeline

### 3. **Multi-API Integration & Real-time Analysis**
- **File**: `Spotify_API_Data_Analysis_Final_Project_Maria_Nyolcas.ipynb` (2.3MB)
- **Focus**: Comprehensive API integration, machine learning, predictive modeling
- **APIs Used**: Spotify, Wikipedia, NewsAPI, Google Custom Search, BeautifulSoup
- **Features**: Audio feature analysis, popularity prediction, artist information enrichment

### 4. **Interactive Visualizations**
- **File**: `Spotify EDA with PowerBI_Midterm_maria.pbix` (3.4MB)
- **Focus**: Interactive dashboards, real-time metrics
- **Tools**: PowerBI integration

### 5. **Personal Music Analysis**
- **File**: `spotify_liked_songs_api_share.ipynb` (3.2KB)
- **Focus**: Personal music preferences, API usage examples

##  Technologies Demonstrated

### Programming & Analysis
- **Python**: Primary language for data analysis
- **Pandas/NumPy**: Data manipulation and numerical computations
- **Scikit-learn**: Machine learning algorithms
- **Matplotlib/Seaborn**: Data visualization

### Multi-API Integration
- **Spotify Web API**: Music data and audio features
- **Wikipedia API**: Artist information and biographical data
- **NewsAPI**: Latest news articles about artists
- **Google Custom Search API**: Event and tour information
- **BeautifulSoup**: Web scraping for additional data enrichment
- **Requests**: HTTP library for API calls

### Visualization & Presentation
- **PowerBI**: Interactive business intelligence dashboards
- **Jupyter Notebooks**: Interactive development environment
- **Microsoft PowerPoint**: Presentation materials

##  APIs Integrated

### 1. **Spotify Web API**
- **Purpose**: Primary music data source
- **Data**: Audio features, popularity metrics, track metadata
- **Authentication**: OAuth 2.0
- **Rate Limit**: 25 requests/second

### 2. **Wikipedia API**
- **Purpose**: Artist biographical information
- **Data**: Background info, images, career highlights
- **Authentication**: None (public API)
- **Rate Limit**: No strict limits

### 3. **NewsAPI**
- **Purpose**: Latest news about artists
- **Data**: Recent articles, publication dates, summaries
- **Authentication**: API key
- **Rate Limit**: 1,000 requests/day (free tier)

### 4. **Google Custom Search API**
- **Purpose**: Event and tour information
- **Data**: Upcoming concerts, tour dates, venue details
- **Authentication**: API key
- **Rate Limit**: 100 requests/day (free tier)

### 5. **BeautifulSoup Web Scraping**
- **Purpose**: Additional data extraction
- **Data**: Website content, structured information
- **Authentication**: None
- **Rate Limit**: Polite scraping practices

## Key Insights & Results

### Statistical Findings
- Strong correlation between playlist appearances and streaming numbers
- Audio features (danceability, energy) significantly impact popularity
- Seasonal patterns identified in music consumption
- Artist collaborations enhance reach and performance
- News coverage correlation with artist performance
- Event scheduling impact on streaming patterns

### Machine Learning Applications
- Popularity prediction models
- Genre classification algorithms
- Feature engineering for audio characteristics
- Predictive analytics for music industry trends
- Multi-source data integration models

### Technical Achievements
- Successful multi-API integration with authentication
- Comprehensive ETL pipeline implementation
- Advanced statistical analysis and hypothesis testing
- Interactive dashboard creation
- Real-time data collection and processing
- Cross-platform data correlation analysis

##  Educational Value

This project demonstrates:
- **Data Science Skills**: EDA, statistical analysis, machine learning
- **Multi-API Integration**: Real-time data collection from 5 different sources
- **Data Visualization**: Multiple visualization techniques and tools
- **Project Management**: Structured workflow and documentation
- **Technical Communication**: Professional documentation and presentation
- **Web Scraping**: Data extraction from various sources
- **Error Handling**: Robust API integration with fallbacks

##  Repository Structure

```
├──  Analysis Notebooks (4 files, ~4.1MB total)
├──  PowerBI Dashboard (3.4MB)
├──  Presentation Materials (831KB)
├──  LaTeX Documentation (documentation.tex)
├──  Comprehensive README (README.md)
├──  API Integration Guide (API_INTEGRATION_GUIDE.md)
├──  Build Scripts (Windows & Unix)
├──  Dependencies (requirements.txt)
└──  Project Summary (PROJECT_SUMMARY.md)
```

##  Getting Started

1. **Install Dependencies**: `pip install -r requirements.txt`
2. **Set up API Credentials**:
   - Spotify Developer Dashboard
   - NewsAPI account
   - Google Cloud Platform
3. **Start with EDA**: Open `Spotify_EDA_Part1_Student.ipynb`
4. **Build Documentation**: Run `build_documentation.ps1` (Windows) or `./build_documentation.sh` (Unix)

## 📞 Contact & Support

- **Author**: Maria Nyolcas
- **Project Type**: Academic/Educational
- **Course**: Integrative Projects Utilizing Data Analysis and ML
- **APIs Used**: 5 different APIs and web scraping tools

## 🔧 Technical Highlights

### Multi-API Architecture
- **Centralized Authentication**: Secure token management
- **Error Handling**: Robust fallback mechanisms
- **Rate Limiting**: Respectful API usage
- **Data Integration**: Cross-platform correlation analysis

### Data Pipeline
```
CSV Data → ETL Processing → API Enrichment → Analysis → Visualization
    ↓
Spotify API → Wikipedia API → NewsAPI → Google API → BeautifulSoup
    ↓
Comprehensive Music Industry Insights
```

---

*This project represents a comprehensive demonstration of data science skills applied to real-world music industry data, featuring advanced multi-API integration and cross-platform analysis.* 