class Restaurant
    include HTTParty

    default_params api_key: '56c9098f4d738b1a', language: 'ja-JP'

    format :json

    def self.search term
        base_uri 'http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?'
        get("", query: { query: term } )
    end

    def self.detail id
        base_uri 'http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?{#id}'
        get("", query: { })
    end
end