# 🎵 Spotify Data Analysis Project

A comprehensive data analysis project exploring Spotify music data through multiple approaches including exploratory data analysis (EDA), data extraction and transformation (ETL), machine learning applications, and interactive visualizations.

##  Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Technologies Used](#technologies-used)
- [Installation & Setup](#installation--setup)
- [Usage](#usage)
- [Data Sources](#data-sources)
- [Analysis Components](#analysis-components)
- [Results & Insights](#results--insights)
- [API Integration](#api-integration)
- [Documentation](#documentation)
- [Contributing](#contributing)
- [License](#license)

##  Project Overview

This project demonstrates advanced data science skills through comprehensive analysis of Spotify music data. It combines multiple data sources including CSV datasets and real-time API data to provide insights into music industry trends, audio features, and popularity metrics.

### Key Objectives
- Perform comprehensive exploratory data analysis on Spotify music data
- Extract, transform, and load (ETL) data from multiple sources
- Integrate multiple APIs for real-time data collection and enrichment
- Analyze audio features and their relationship with popularity
- Apply machine learning techniques for predictive modeling
- Create interactive visualizations and dashboards
- Investigate music trends and artist performance metrics
- Implement web scraping for additional data enrichment

##  Features

###  Data Analysis
- **Exploratory Data Analysis (EDA)**: Comprehensive statistical analysis and data profiling
- **Correlation Analysis**: Study relationships between audio features and popularity metrics
- **Hypothesis Testing**: Statistical tests including t-tests, Pearson correlation, and ANOVA
- **Regression Analysis**: Predictive modeling for popularity and streaming metrics

###  Machine Learning
- **Predictive Modeling**: Popularity prediction and genre classification
- **Feature Engineering**: Advanced feature creation and data enrichment
- **Model Evaluation**: Performance metrics and validation techniques

###  Visualization
- **Interactive Dashboards**: PowerBI integration for real-time metrics
- **Statistical Plots**: Correlation heatmaps, distribution histograms, time series
- **Custom Visualizations**: Tailored charts for music industry insights

###  Multi-API Integration
- **Spotify Web API**: Real-time music data and audio features
- **Wikipedia API**: Artist information and biographical data
- **NewsAPI**: Latest news articles about artists
- **Google Custom Search API**: Upcoming events and tour information
- **BeautifulSoup**: Web scraping for additional data enrichment
- **Authentication Management**: Secure token handling and rate limiting

##  Project Structure

```
Integrative_projects_utilizing_data_analysis_and_ml/
├──  Spotify_EDA_Part1_Student.ipynb          # Initial exploratory analysis
├──  Spotify2023_Part1_ETL_Maria_Nyolcas.ipynb # Data extraction & transformation
├──  Spotify_API_Data_Analysis_Final_Project_Maria_Nyolcas.ipynb # Comprehensive final analysis
├──  SpotifyAPI-Student_Maria.ipynb           # API integration examples
├──  spotify_liked_songs_api_share.ipynb      # Personal music analysis
├──  Spotify EDA with PowerBI_Midterm_maria.pbix # Interactive dashboard
├──  Spotify_Data_Analysis_Presentation.pptx  # Presentation materials
├──  documentation.tex                        # LaTeX documentation
├──  README.md                                # This file
├──  requirements.txt                         # Python dependencies
├──  build_documentation.ps1                 # PowerShell build script
├──  build_documentation.bat                 # Windows batch build script
├──  build_documentation.sh                  # Unix/Linux build script
└──  PROJECT_SUMMARY.md                      # Quick project overview
```

### File Descriptions

| File | Description | Size |
|------|-------------|------|
| `Spotify_EDA_Part1_Student.ipynb` | Initial exploratory data analysis with statistical testing | 1.6MB |
| `Spotify2023_Part1_ETL_Maria_Nyolcas.ipynb` | Data extraction, transformation, and loading processes | 203KB |
| `Spotify_API_Data_Analysis_Final_Project_Maria_Nyolcas.ipynb` | Comprehensive final analysis with ML models and multi-API integration | 2.3MB |
| `SpotifyAPI-Student_Maria.ipynb` | Spotify API integration and data collection | 194KB |
| `spotify_liked_songs_api_share.ipynb` | Personal music analysis using Spotify API | 3.2KB |
| `Spotify EDA with PowerBI_Midterm_maria.pbix` | Interactive PowerBI dashboard | 3.4MB |
| `Spotify_Data_Analysis_Presentation.pptx` | Project presentation slides | 831KB |

##  Technologies Used

### Core Technologies
- **Python 3.x**: Primary programming language
- **Jupyter Notebooks**: Interactive development environment
- **PowerBI**: Interactive dashboard creation

### Data Science Libraries
```python
# Core Data Analysis
pandas>=1.3.0          # Data manipulation and analysis
numpy>=1.21.0          # Numerical computations
scipy>=1.7.0           # Statistical functions

# Visualization
matplotlib>=3.4.0      # Basic plotting
seaborn>=0.11.0        # Statistical visualizations
plotly>=5.0.0          # Interactive plots

# Machine Learning
scikit-learn>=1.0.0    # ML algorithms and utilities
wordcloud>=1.8.0       # Text visualization

# API Integration & Web Scraping
requests>=2.25.0       # HTTP library for APIs
beautifulsoup4>=4.9.0  # Web scraping
```

### Additional Tools
- **Spotify Web API**: Music data and audio features
- **Wikipedia API**: Artist information and metadata
- **NewsAPI**: Latest news about artists
- **Google Custom Search API**: Event and tour information
- **Microsoft PowerBI**: Business intelligence and analytics

##  Installation & Setup

### Prerequisites
- Python 3.8 or higher
- Jupyter Notebook or JupyterLab
- Spotify Developer Account (for API access)
- NewsAPI Account (for news data)
- Google Cloud Platform Account (for Custom Search API)
- PowerBI Desktop (for dashboard viewing)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/Integrative_projects_utilizing_data_analysis_and_ml.git
   cd Integrative_projects_utilizing_data_analysis_and_ml
   ```

2. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Set up API credentials**
   - **Spotify API**: Create account at [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
   - **NewsAPI**: Get free API key from [newsapi.org](https://newsapi.org)
   - **Google Custom Search API**: Set up at [Google Cloud Console](https://console.cloud.google.com)
   - Update the credentials in the notebook files

4. **Launch Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

### Environment Setup
```bash
# Create virtual environment (recommended)
python -m venv spotify_analysis_env
source spotify_analysis_env/bin/activate  # On Windows: spotify_analysis_env\Scripts\activate

# Install all dependencies
pip install -r requirements.txt
```

##  Usage

### Getting Started

1. **Start with EDA**: Open `Spotify_EDA_Part1_Student.ipynb` for initial data exploration
2. **ETL Process**: Review `Spotify2023_Part1_ETL_Maria_Nyolcas.ipynb` for data processing
3. **API Integration**: Explore `SpotifyAPI-Student_Maria.ipynb` for API usage examples
4. **Final Analysis**: Dive into `Spotify_API_Data_Analysis_Final_Project_Maria_Nyolcas.ipynb` for comprehensive analysis

### Multi-API Configuration
```python
# Example API setup for all services
SPOTIFY_CLIENT_ID = "your_spotify_client_id"
SPOTIFY_CLIENT_SECRET = "your_spotify_client_secret"
NEWS_API_KEY = "your_newsapi_key"
GOOGLE_API_KEY = "your_google_api_key"
CSE_ID = "your_custom_search_engine_id"

def get_spotify_token(client_id, client_secret):
    token_url = 'https://accounts.spotify.com/api/token'
    auth_string = f"{client_id}:{client_secret}"
    auth_bytes = auth_string.encode('ascii')
    auth_b64 = base64.b64encode(auth_bytes).decode('ascii')
    
    headers = {
        'Authorization': f'Basic {auth_b64}',
        'Content-Type': 'application/x-www-form-urlencoded'
    }
    
    data = {'grant_type': 'client_credentials'}
    response = requests.post(token_url, headers=headers, data=data)
    return response.json()['access_token']
```

### Running Analysis
```python
# Example: Load and analyze data with API integration
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import requests
from bs4 import BeautifulSoup

# Load data
df = pd.read_csv('spotify_data.csv')

# Basic analysis
print(df.info())
print(df.describe())

# Correlation analysis
correlation_matrix = df[['streams', 'danceability', 'energy']].corr()
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.show()
```

##  Data Sources

### Primary Data Sources
1. **Spotify CSV Dataset**: Historical music data with streaming metrics
2. **Spotify Web API**: Real-time access to current music data and audio features
3. **Wikipedia API**: Artist information and biographical data
4. **NewsAPI**: Latest news articles about artists and music industry
5. **Google Custom Search API**: Event information and tour dates
6. **Web Scraping**: Additional data from various music websites

### Data Features
- **Track Metadata**: Title, artist, release date, genre
- **Streaming Metrics**: Playlist appearances, chart positions, stream counts
- **Audio Features**: Danceability, energy, valence, tempo, key, mode
- **Popularity Indicators**: Various popularity scores and rankings
- **Artist Information**: Biographies, images, and background data
- **News Data**: Recent articles and media coverage
- **Event Data**: Upcoming concerts and tour information

##  Analysis Components

### Exploratory Data Analysis (EDA)
- Dataset structure and dimensions analysis
- Data types and missing values assessment
- Statistical summaries and distribution analysis
- Correlation studies between variables

### Statistical Analysis
- **Hypothesis Testing**: T-tests, Pearson correlation, Chi-square tests
- **Regression Analysis**: Linear regression for popularity prediction
- **Time Series Analysis**: Temporal trend detection and seasonal patterns

### Machine Learning Applications
- **Predictive Modeling**: Popularity prediction and genre classification
- **Feature Engineering**: Advanced feature creation and data enrichment
- **Model Evaluation**: Performance metrics and validation techniques

### Multi-API Data Integration
- **Data Enrichment**: Combining data from multiple sources
- **Real-time Updates**: Live data from various APIs
- **Cross-platform Analysis**: Insights from different data providers

##  Results & Insights

### Key Findings
1. **Popularity Factors**: Strong correlation between playlist appearances and streaming numbers
2. **Audio Features**: Danceability and energy significantly impact popularity
3. **Temporal Trends**: Seasonal patterns in music consumption identified
4. **Artist Collaboration**: Enhanced reach through featured artists
5. **Media Impact**: News coverage correlation with artist performance
6. **Event Influence**: Tour dates and events affect streaming patterns

### Statistical Insights
- Correlation analysis reveals significant relationships between audio features and popularity
- Regression models successfully predict streaming metrics
- Hypothesis testing confirms various music industry assumptions
- Multi-source data integration provides comprehensive insights

### Visualization Results
- Interactive PowerBI dashboards for real-time metrics
- Correlation heatmaps showing feature relationships
- Time series plots revealing temporal patterns
- Distribution analysis of audio features
- Artist performance tracking across multiple platforms

##  API Integration

### Spotify API Features
- **Authentication**: Secure token-based authentication
- **Data Retrieval**: Playlist tracks, audio features, artist information
- **Rate Limiting**: Proper handling of API rate limits
- **Error Handling**: Robust error management and retry logic

### Wikipedia API Integration
- **Artist Biographies**: Detailed background information
- **Image Retrieval**: Artist photos and media
- **Search Functionality**: Intelligent artist name matching
- **Data Validation**: Cross-reference with Spotify data

### NewsAPI Integration
- **Real-time News**: Latest articles about artists
- **Content Analysis**: Sentiment and topic analysis
- **Trend Monitoring**: Media coverage patterns
- **Source Diversity**: Multiple news sources

### Google Custom Search API
- **Event Discovery**: Concert and tour information
- **Geographic Data**: Venue and location details
- **Temporal Analysis**: Upcoming event scheduling
- **Search Optimization**: Custom search engine configuration

### Web Scraping with BeautifulSoup
- **Data Extraction**: Scraping additional information
- **Content Parsing**: Structured data extraction
- **Error Handling**: Robust scraping with fallbacks
- **Rate Limiting**: Polite scraping practices

### API Endpoints Used
- **Spotify**: `/v1/playlists/{playlist_id}/tracks`, `/v1/audio-features/{id}`, `/v1/search`
- **Wikipedia**: `/api/rest_v1/page/summary/{title}`, `/wiki/Special:Search`
- **NewsAPI**: `/v2/everything`, `/v2/top-headlines`
- **Google**: `/customsearch/v1`

### Example Multi-API Usage
```python
# Fetch comprehensive artist information
def get_artist_comprehensive_info(artist_name, spotify_token, news_api_key):
    # Spotify data
    spotify_data = get_spotify_artist_info(artist_name, spotify_token)
    
    # Wikipedia data
    wiki_data = get_wikipedia_page(artist_name)
    
    # News data
    news_data = get_artist_news(artist_name, news_api_key)
    
    # Google events
    events_data = get_google_events(artist_name)
    
    return {
        'spotify': spotify_data,
        'wikipedia': wiki_data,
        'news': news_data,
        'events': events_data
    }
```

##  Documentation

### Building LaTeX Documentation

The project includes comprehensive LaTeX documentation that can be built using the provided scripts:

#### Windows (PowerShell - Recommended)
```powershell
# Method 1: Use PowerShell with execution policy bypass
powershell -ExecutionPolicy Bypass -File build_documentation.ps1

# Method 2: Use batch file with cmd
cmd /c build_documentation.bat
```

#### Windows (Command Prompt)
```cmd
build_documentation.bat
```

#### Unix/Linux/macOS
```bash
chmod +x build_documentation.sh
./build_documentation.sh
```

### Prerequisites for LaTeX
To build the PDF documentation, you need a LaTeX distribution:

- **MiKTeX** (Windows): Download from [miktex.org](https://miktex.org/download)
- **TeX Live** (Cross-platform): Download from [tug.org/texlive](https://www.tug.org/texlive/)
- **Overleaf** (Online): Upload `documentation.tex` to [overleaf.com](https://www.overleaf.com)

### Documentation Contents
The LaTeX documentation includes:
- **Project Overview**: Objectives, methodology, and scope
- **Technical Implementation**: Code examples and multi-API integration
- **Statistical Analysis**: Methods, results, and interpretations
- **Results & Findings**: Key insights and visualizations
- **Appendices**: Data dictionary and technical details

##  Contributing
Contributions are welcome in this project! Please follow these steps:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Commit your changes**: `git commit -m 'Add amazing feature'`
4. **Push to the branch**: `git push origin feature/amazing-feature`
5. **Open a Pull Request**

### Contribution Guidelines
- Follow PEP 8 style guidelines for Python code
- Add comprehensive documentation for new features
- Include tests for new functionality
- Update the README.md if necessary


##  Author

**Maria Nyolcas**
- GitHub: [Marcsi888](https://github.com/Marcsi888)
- LinkedIn: [Maria Nyolcas](https://linkedin.com/in/maria-nyolcas)

##  Acknowledgments

- Spotify for providing the Web API and data
- Wikipedia for artist information and biographical data
- NewsAPI for real-time news data
- Google for Custom Search API
- The open-source community for the excellent Python libraries
- Instructors and peers for feedback and support

##  Contact

For questions, suggestions, or collaboration opportunities:
- Email: nyolcas.marcsi@gmail.com

---

⭐ **Star this repository if you find it helpful!**

---

*This project is part of the Integrative Projects Utilizing Data Analysis and ML course.*
