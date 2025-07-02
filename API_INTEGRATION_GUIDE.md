#  Multi-API Integration Guide

This guide provides comprehensive information about all the APIs integrated in the Spotify Data Analysis Project.

## APIs Overview

The project integrates **5 different APIs and web scraping tools** to provide comprehensive music industry insights:

| API/Service | Purpose | Authentication | Rate Limits |
|-------------|---------|----------------|-------------|
| **Spotify Web API** | Music data and audio features | OAuth 2.0 | 25 requests/second |
| **Wikipedia API** | Artist information and biographies | None (public) | No strict limits |
| **NewsAPI** | Latest news about artists | API Key | 1,000 requests/day (free) |
| **Google Custom Search API** | Event and tour information | API Key | 100 requests/day (free) |
| **BeautifulSoup** | Web scraping additional data | None | Polite scraping |

## 🎵 Spotify Web API

### Overview
Primary source for music data, audio features, and streaming metrics.

### Authentication
```python
import requests
import base64

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

### Key Endpoints Used
- `/v1/search` - Search for tracks and artists
- `/v1/audio-features/{id}` - Get audio characteristics
- `/v1/playlists/{playlist_id}/tracks` - Get playlist tracks
- `/v1/artists/{id}` - Get artist information
- `/v1/tracks/{id}` - Get track details

### Example Usage
```python
def get_track_features(track_id, access_token):
    url = f"https://api.spotify.com/v1/audio-features/{track_id}"
    headers = {'Authorization': f'Bearer {access_token}'}
    response = requests.get(url, headers=headers)
    return response.json()
```

### Data Retrieved
- Track metadata (title, artist, album)
- Audio features (danceability, energy, valence)
- Popularity scores
- Playlist appearances
- Chart positions

## Wikipedia API

### Overview
Provides artist biographical information and images.

### Authentication
No authentication required (public API).

### Key Endpoints Used
- `/api/rest_v1/page/summary/{title}` - Get page summary
- `/wiki/Special:Search` - Search for pages

### Example Usage
```python
def get_wikipedia_page(artist_name):
    url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{artist_name.replace(' ', '_')}"
    response = requests.get(url)
    return response.json()
```

### Data Retrieved
- Artist biographies
- Profile images
- Background information
- Career highlights

## NewsAPI

### Overview
Provides latest news articles about artists and music industry.

### Authentication
API key required (free tier available).

### Key Endpoints Used
- `/v2/everything` - Search all articles
- `/v2/top-headlines` - Get top headlines

### Example Usage
```python
def get_artist_news(artist_name, api_key):
    url = f"https://newsapi.org/v2/everything"
    params = {
        'q': artist_name,
        'sortBy': 'publishedAt',
        'apiKey': api_key
    }
    response = requests.get(url, params=params)
    return response.json()
```

### Data Retrieved
- Recent news articles
- Publication dates
- Article summaries
- Source information

## Google Custom Search API

### Overview
Searches for upcoming events, tours, and artist activities.

### Authentication
API key required (Google Cloud Platform).

### Key Endpoints Used
- `/customsearch/v1` - Custom search results

### Example Usage
```python
def get_google_events(artist_name):
    url = "https://www.googleapis.com/customsearch/v1"
    params = {
        'q': f"{artist_name} upcoming events tour",
        'cx': CSE_ID,
        'key': GOOGLE_API_KEY
    }
    response = requests.get(url, params=params)
    return response.json()
```

### Data Retrieved
- Upcoming concerts
- Tour dates
- Event information
- Venue details

## 🕷️ BeautifulSoup Web Scraping

### Overview
Extracts additional data from various music websites.

### Authentication
None required (public websites).

### Example Usage
```python
from bs4 import BeautifulSoup
import requests

def scrape_artist_info(artist_name):
    url = f"https://en.wikipedia.org/wiki/{artist_name.replace(' ', '_')}"
    response = requests.get(url)
    soup = BeautifulSoup(response.content, "html.parser")
    
    # Extract first paragraph
    first_paragraph = soup.find('p', class_=None)
    return first_paragraph.text if first_paragraph else "No information found"
```

### Data Retrieved
- Additional biographical information
- Website content
- Structured data from various sources

## 🔧 Setup Instructions

### 1. Spotify API Setup
1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Create a new application
3. Get Client ID and Client Secret
4. Add to your environment variables

### 2. NewsAPI Setup
1. Visit [newsapi.org](https://newsapi.org)
2. Sign up for free account
3. Get your API key
4. Add to your environment variables

### 3. Google Custom Search API Setup
1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create a new project
3. Enable Custom Search API
4. Create API key
5. Set up Custom Search Engine at [programmablesearchengine.google.com](https://programmablesearchengine.google.com)

### 4. Environment Variables
```bash
# Create .env file
SPOTIFY_CLIENT_ID=your_spotify_client_id
SPOTIFY_CLIENT_SECRET=your_spotify_client_secret
NEWS_API_KEY=your_newsapi_key
GOOGLE_API_KEY=your_google_api_key
CSE_ID=your_custom_search_engine_id
```

## Data Integration Example

```python
def get_comprehensive_artist_data(artist_name):
    """Get comprehensive artist data from all APIs"""
    
    # Initialize results dictionary
    artist_data = {
        'spotify': None,
        'wikipedia': None,
        'news': None,
        'events': None,
        'scraped': None
    }
    
    try:
        # Get Spotify data
        spotify_token = get_spotify_token(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)
        artist_data['spotify'] = get_spotify_artist_info(artist_name, spotify_token)
        
        # Get Wikipedia data
        artist_data['wikipedia'] = get_wikipedia_page(artist_name)
        
        # Get news data
        artist_data['news'] = get_artist_news(artist_name, NEWS_API_KEY)
        
        # Get Google events
        artist_data['events'] = get_google_events(artist_name)
        
        # Get scraped data
        artist_data['scraped'] = scrape_artist_info(artist_name)
        
    except Exception as e:
        print(f"Error getting data for {artist_name}: {str(e)}")
    
    return artist_data
```

## Rate Limiting & Best Practices

### Rate Limits
- **Spotify**: 25 requests/second
- **NewsAPI**: 1,000 requests/day (free tier)
- **Google**: 100 requests/day (free tier)
- **Wikipedia**: No strict limits (be polite)
- **Web Scraping**: Implement delays between requests

### Best Practices
1. **Implement caching** to avoid repeated API calls
2. **Use try-catch blocks** for error handling
3. **Add delays** between requests
4. **Store API keys securely** (use environment variables)
5. **Monitor usage** to stay within limits

### Error Handling
```python
def safe_api_call(func, *args, **kwargs):
    """Wrapper for safe API calls with error handling"""
    try:
        return func(*args, **kwargs)
    except requests.exceptions.RequestException as e:
        print(f"API request failed: {e}")
        return None
    except Exception as e:
        print(f"Unexpected error: {e}")
        return None
```

##  Data Flow

```
Spotify API → Audio Features & Metadata
     ↓
Wikipedia API → Artist Biographies
     ↓
NewsAPI → Recent News Articles
     ↓
Google API → Event Information
     ↓
BeautifulSoup → Additional Web Data
     ↓
Data Integration & Analysis
```

##  Use Cases

### 1. Artist Profile Analysis
- Combine Spotify popularity with Wikipedia background
- Add recent news coverage
- Include upcoming events

### 2. Trend Analysis
- Track artist mentions in news
- Monitor event scheduling
- Analyze popularity correlations

### 3. Market Research
- Industry news monitoring
- Event impact analysis
- Cross-platform performance tracking


### API Documentation
- [Spotify Web API](https://developer.spotify.com/documentation/web-api/)
- [Wikipedia API](https://en.wikipedia.org/api/rest_v1/)
- [NewsAPI](https://newsapi.org/docs/)
- [Google Custom Search API](https://developers.google.com/custom-search/v1/overview)

### Rate Limit Monitoring
- Monitor your API usage regularly
- Implement usage tracking
- Set up alerts for approaching limits

### Troubleshooting
- Check API status pages
- Verify authentication credentials
- Review error messages and documentation
- Test with simple requests first