
# CODE SAMPLE OR DEMO 
#!/bin/bash

# Email address to investigate
email="test.anestin.james@gmail.com"

check_social_media() {
    platform=$1
    url="https://www.$platform.com/$email"
    response=$(curl -s -H "Accept-Language: en" "$url" -L)
    
    if [[ $response == "The link you followed may be broken" || $response == "page doesn’t exist" || $response == "Not Found" || $response == "HTTP/2 404" ]]; then

        printf "\e[1;93mNot Found!\e[0m $platform\n"
    else
        printf "\e[1;92mFound!\e[0m $platform: $url\n"
        echo "$url" >> $email.txt
    fi
}

check_news_articles() {
    platform=$1
    url="https://www.$platform.com/search?q=$email"
    response=$(curl -s -H "Accept-Language: en" "$url" -L)
    
    if [[ $response == "No results found" || $response == "404 Not Found" ]]; then
        printf "\e[1;93mNot Found!\e[0m $platform\n"
    else
        printf "\e[1;92mFound!\e[0m $platform: $url\n"
        echo "$url" >> $email.txt
    fi
}

check_public_records() {
    platform=$1
    url="https://www.$platform.com/search?q=$email"
    response=$(curl -s -H "Accept-Language: en" "$url" -L)
    
    if [[ $response == "No records found" || $response == "404 Not Found" ]]; then
        printf "\e[1;93mNot Found!\e[0m $platform\n"
    else
        printf "\e[1;92mFound!\e[0m $platform: $url\n"
        echo "$url" >> $email.txt
    fi
}

check_other_sources() {
    platform=$1
    url="https://www.$platform.com/$email"
    response=$(curl -s -H "Accept-Language: en" "$url" -L)
    
    if [[ $response == "No results found" || $response == "404 Not Found" ]]; then
        printf "\e[1;93mNot Found!\e[0m $platform\n"
    else
        printf "\e[1;92mFound!\e[0m $platform: $url\n"
        echo "$url" >> $email.txt
    fi
}

main() {
    
    check_social_media "instagram"
    check_social_media "facebook"
    check_social_media "twitter"
    check_social_media "youtube"
    check_social_media "linkedin"
    check_social_media "pinterest"
    check_social_media "snapchat"
    check_social_media "reddit"
    check_social_media "tiktok"
    check_social_media "whatsapp"
    check_social_media "wechat"
    check_social_media "telegram"
    check_social_media "discord"
    check_social_media "viber"
    check_social_media "tumblr"

    
    check_news_articles "medium"
    check_news_articles "quora"
    check_news_articles "goodreads"
    check_news_articles "meetup"
    check_news_articles "nextdoor"
    check_news_articles "flipboard"
    check_news_articles "pocket"
    check_news_articles "feedly"
    check_news_articles "digg"
    check_news_articles "mix"
    check_news_articles "instapaper"
    check_news_articles "hackernews"
    check_news_articles "slashdot"
    check_news_articles "allsides"
    check_news_articles "news360"

    
    check_public_records "wikipedia"
    check_public_records "googlescholar"
    check_public_records "projectgutenberg"
    check_public_records "internetarchive"
    check_public_records "worldcat"
    check_public_records "jstor"
    check_public_records "pubmed"
    check_public_records "lexisnexis"
    check_public_records "propublica"
    check_public_records "opensecrets"
    check_public_records "secedgar"
    check_public_records "courtlistener"
    check_public_records "datagov"
    check_public_records "usagov"
    check_public_records "censusbureau"
}

main
