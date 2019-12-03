![logo](https://www.themoviedb.org/assets/2/v4/logos/powered-by-rectangle-green-dcada16968ed648d5eb3b36bbcfdd8cdf804f723dcca775c8f2bf4cea025aad6.svg)


## Installation

Install from Github

```r
library(devtools)

devtools::install_github('Solstice-Studios/tmdbr')
```

## Authentication

You will need an API Key (v3 auth) from The Movie Database. First, create an account then navigate to your user settings and select API. Once you obtain your token place it wihin an `.Renviron` file, like below:

```text
API_KEY = fa7s9d8f9a8sd7fsa8das8df8asd79
```

## Usage

In order to call most functions you will need the `IMDB_ID` for a movie. Additionally, for person related data you will need to retrieve their ID from TMDb.

* Get Movie Details
```r
> str(movie_get_details('tt2488496'))
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	1 obs. of  15 variables:
 $ title               : chr "Star Wars: The Force Awakens"
 $ tagline             : chr "Every generation has a story."
 $ budget              : int 245000000
 $ revenue             : int 2068223624
 $ release_date        : chr "2015-12-15"
 $ runtime             : int 136
 $ status              : chr "Released"
 $ vote_count          : int 13252
 $ vote_average        : num 7.4
 $ popularity          : num 42
 $ overview            : chr "Thirty years after defeating the Galactic Empire, Han Solo and his allies face a new threat from the evil Kylo "| __truncated__
 $ imdb_id             : chr "tt2488496"
 $ id                  : int 140607
 $ genres              : chr "Action, Adventure, Science Fiction, Fantasy"
 $ production_companies: chr "Truenorth Productions, Lucasfilm, Bad Robot"
```

* Get Movie Cast
```r
> movie_get_cast('tt2488496')
# A tibble: 109 x 5
   name             gender character            order      id
   <chr>            <chr>  <chr>                <int>   <int>
 1 Daisy Ridley     Female Rey                      0 1315036
 2 John Boyega      Male   Finn                     1  236695
 3 Harrison Ford    Male   Han Solo                 2       3
 4 Adam Driver      Male   Kylo Ren / Ben Solo      3 1023139
```

* Get Movie Crew
```r
> movie_get_crew('tt2488496')
# A tibble: 120 x 5
   name             gender job                      department           id
   <chr>            <chr>  <chr>                    <chr>             <int>
 1 George Lucas     Male   Characters               Writing               1
 2 John Williams    Male   Original Music Composer  Sound               491
 3 Kathleen Kennedy Female Producer                 Production          489
 4 Rick Carter      Male   Production Design        Art                 496
```

* Get Alternative Movie Titles
```r
> movie_get_alternative_titles('tt2488496')
# A tibble: 10 x 2
   title                                         type                           
   <chr>                                         <chr>                          
 1 Star Wars - Episode 7 - The Force Awakens     ""                             
 2 Star Wars 7                                   short title                    
 3 Star Wars Episode VII - The Force Awakens     bring in line with other movies
 4 Star Wars The Force Awakens                   no special characters in name  
```

* Get Movie Keywords
```r
> movie_get_keywords('tt2488496')
# A tibble: 6 x 2
  name            id
  <chr>        <int>
1 android        803
2 spacecraft    1612
3 jedi         10527
4 imax        156395     
```

* Get Similar Movies
```r
> movie_get_similar('tt2488496')
# A tibble: 20 x 7
   title          overview                      vote_count vote_average popularity release_date     id
   <chr>          <chr>                              <int>        <dbl>      <dbl> <chr>         <int>
 1 Star Trek Int… When the crew of the Enterpr…       6500          7.3       16.3 2013-05-05    54138
 2 Alien³         After escaping with Newt and…       3041          6.3       17.1 1992-05-22     8077
 3 The Empire St… The epic saga continues as L…      10486          8.4       24.9 1980-05-20     1891
 4 Interstellar   Interstellar chronicles the …      20150          8.3       47.6 2014-11-05   157336
```

* Get Movie Images
```r
> movie_get_images('tt2488496')
# A tibble: 59 x 6
   url                                               vote_count vote_average width height aspect_ratio
   <chr>                                                  <int>        <dbl> <int>  <int>        <dbl>
 1 http://image.tmdb.org/t/p/original/c2Ax8Rox5g6Cn…         43         5.79  1920   1080         1.78
 2 http://image.tmdb.org/t/p/original/njv65RTipNSTo…         41         5.74  1920   1080         1.78
 3 http://image.tmdb.org/t/p/original/wSyHVm2rv9jHx…         19         5.41  3840   2160         1.78
 4 http://image.tmdb.org/t/p/original/to4AKd4SOyXE1…         12         5.31  3840   2160         1.78
```

* Download All Images
```r
> download_all_images(movie_get_images('tt2488496')$url)
trying URL 'http://image.tmdb.org/t/p/original/c2Ax8Rox5g6CneChwy1gmu4UbSb.jpg'
Content type 'image/jpeg' length 203728 bytes (198 KB)
==================================================
downloaded 198 KB
```

* Get Movie Videos
```r
> movie_get_videos('tt2488496')
# A tibble: 13 x 5
   name                                   type     site   url                         id              
   <chr>                                  <chr>    <chr>  <chr>                       <chr>           
 1 Star Wars: The Force Awakens “Secret”… Teaser   YouTu… https://www.youtube.com/wa… 571b6243c3a3685…
 2 Star Wars: The Force Awakens “All the… Teaser   YouTu… https://www.youtube.com/wa… 571b6271c3a3685…
 3 Star Wars: The Force Awakens 60 Secon… Teaser   YouTu… https://www.youtube.com/wa… 571b62e69251413…
 4 Star Wars: The Force Awakens TV Spot … Teaser   YouTu… https://www.youtube.com/wa… 571b630e9251417…
```

* Get Movie Reviews
```r
> movie_get_reviews('tt2488496')
# A tibble: 4 x 4
  author     content                                         id            url                        
  <chr>      <chr>                                           <chr>         <chr>                      
1 Frank Och… "So where were you when the Science Fiction ci… 5675fd779251… https://www.themoviedb.org…
2 bodokh     "A very entertaining film filled with immensel… 569bd8d7c3a3… https://www.themoviedb.org…
3 John Chard "Slumber Earthquake.\r\n\r\nThere really is no… 571db465c3a3… https://www.themoviedb.org…
4 Bulletpro… "**The Force Awakens: A New Hope 2.0**\r\n\r\n… 58d44f2fc3a3… https://www.themoviedb.org…
```

* Get Popular Movies
```r
> movie_get_popular()
# A tibble: 20 x 7
   title         popularity vote_count vote_average overview                       release_date     id
   <chr>              <dbl>      <int>        <dbl> <chr>                          <chr>         <int>
 1 Frozen II          392.         589          7.1 Elsa, Anna, Kristoff and Olaf… 2019-11-20   330457
 2 The Irishman       310.         792          8.2 Pennsylvania, 1956. Frank She… 2019-11-01   398978
 3 Joker              156.        6123          8.4 During the 1980s, a failed st… 2019-10-02   475557
 4 Once Upon a …      182.        2945          7.5 A faded television actor and … 2019-07-25   466272
```

* Get Top Rated Movies
```r
> movie_get_top_rated()
# A tibble: 20 x 7
   title           overview                      vote_count vote_average release_date genre_ids     id
   <chr>           <chr>                              <int>        <dbl> <chr>        <list>     <int>
 1 Dilwale Dulhan… Raj is a rich, carefree, hap…       2160          8.9 1995-10-20   <int [3]>  19404
 2 The Shawshank … Framed in the 1940s for the …      14356          8.7 1994-09-23   <int [2]>    278
 3 The Godfather   Spanning the years 1945 to 1…      10994          8.6 1972-03-14   <int [2]>    238
 4 Schindler's Li… The true story of how busine…       8779          8.6 1993-11-30   <int [3]>    424
```

* Get Upcoming Movies
```r
> movie_get_upcoming()
# A tibble: 20 x 8
   title      release_date overview                popularity vote_count vote_average genre_ids     id
   <chr>      <chr>        <chr>                        <dbl>      <int>        <dbl> <list>     <int>
 1 Frozen II  2019-11-20   Elsa, Anna, Kristoff a…      392.         589          7.1 <int [3]> 330457
 2 Hustlers   2019-09-12   A crew of savvy former…      141.         557          6.2 <int [3]> 540901
 3 Knives Out 2019-11-27   When renowned crime no…      114.         187          8   <int [3]> 546554
 4 Angel Has… 2019-08-21   After the events in th…       91.7        729          5.9 <int [1]> 423204
```

* Get Person Details
```r
> str(person_get_details(1))
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	1 obs. of  9 variables:
 $ name                : chr "George Lucas"
 $ birthday            : chr "1944-05-14"
 $ known_for_department: chr "Directing"
 $ gender              : chr "Male"
 $ biography           : chr "George Walton Lucas Jr. (born May 14, 1944) is an American filmmaker and entrepreneur. Lucas is known for creat"| __truncated__
 $ popularity          : num 8.69
 $ place_of_birth      : chr "Modesto, California, USA"
 $ imdb_id             : chr "nm0000184"
 $ id                  : int 1
```

* Get Person Movie Credits
```r
> person_get_movie_credits(2)
# A tibble: 133 x 8
   title       character    vote_count vote_average popularity release_date overview                id
   <chr>       <chr>             <int>        <dbl>      <dbl> <chr>        <chr>                <int>
 1 Star Wars   Luke Skywal…      12330          8.2      53.3  1977-05-25   Princess Leia is c…     11
 2 The Empire… Luke Skywal…      10486          8.4      24.9  1980-05-20   The epic saga cont…   1891
 3 Return of … Luke Skywal…       8686          8        20.6  1983-05-23   Luke Skywalker lea…   1892
 4 Slipstream  Will Tasker          25          4.8       3.93 1989-06-22   Slipstream is a 19…  22379
```

* Get Popular Persons
```r
> person_get_popular()
# A tibble: 20 x 5
   name               popularity gender known_for_department      id
   <chr>                   <dbl> <chr>  <chr>                  <int>
 1 Scarlett Johansson      41.6  Female Acting                  1245
 2 Matt Damon              25.5  Male   Acting                  1892
 3 Rose Byrne              28.7  Female Acting                  9827
 4 Cho Yeo-jeong           31.2  Female Acting                556435
```
