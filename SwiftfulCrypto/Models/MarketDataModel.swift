//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Jakub Tomiczek on 27/11/2023.
//

import Foundation

// JSON Data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 11132,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 935,
     "total_market_cap": {
       "btc": 39491444.837803535,
       "eth": 724891586.9155614,
       "ltc": 21243881736.02482,
       "bch": 6559755066.143553,
       "bnb": 6450866273.712505,
       "eos": 2168079365687.9038,
       "xrp": 2429660696615.308,
       "xlm": 12625409859320.78,
       "link": 102865638672.5044,
       "dot": 285921768393.12616,
       "yfi": 175303295.91201335,
       "usd": 1462926717512.9744,
       "aed": 5373329833425.149,
       "ars": 525154118419218.3,
       "aud": 2217176622821.443,
       "bdt": 161313366913598.5,
       "bhd": 551331729102.3965,
       "bmd": 1462926717512.9744,
       "brl": 7172290817950.865,
       "cad": 1994605489092.3037,
       "chf": 1289088598597.626,
       "clp": 1275789131808715.8,
       "cny": 10432276715256.785,
       "czk": 32526534160123.94,
       "dkk": 9970381011029.537,
       "eur": 1337325681254.1804,
       "gbp": 1159783431890.0903,
       "hkd": 11399095724326.766,
       "huf": 507870831537080.06,
       "idr": 22643384863787210,
       "ils": 5426799804950.268,
       "inr": 121929009736866.8,
       "jpy": 217742221628341.8,
       "krw": 1901977622909270,
       "kwd": 451042250910.01294,
       "lkr": 481762692317865.06,
       "mmk": 3072520240044764,
       "mxn": 25084380176446.895,
       "myr": 6853080208189.525,
       "ngn": 1173998690804161,
       "nok": 15586878523439.7,
       "nzd": 2402099337475.391,
       "php": 81225344284334.03,
       "pkr": 412603646597620.1,
       "pln": 5812576506211.868,
       "rub": 130310175418567.6,
       "sar": 5486618878429.376,
       "sek": 15271252084136.277,
       "sgd": 1957008272452.2185,
       "thb": 51319466324501.84,
       "try": 42290433305463.54,
       "twd": 46138512817356.07,
       "uah": 53050313441059.984,
       "vef": 146482852224.57434,
       "vnd": 35460596555338892,
       "zar": 27339759667569.47,
       "xdr": 1099287023340.7727,
       "xag": 59374914298.401405,
       "xau": 727206242.0085266,
       "bits": 39491444837803.54,
       "sats": 3949144483780353.5
     },
     "total_volume": {
       "btc": 1904203.8809974561,
       "eth": 34952921.54481197,
       "ltc": 1024340391.0728977,
       "bch": 316299165.72173756,
       "bnb": 311048751.05608207,
       "eos": 104540746974.68144,
       "xrp": 117153711316.55907,
       "xlm": 608773736996.5349,
       "link": 4959989415.073508,
       "dot": 13786614880.057867,
       "yfi": 8452798.26550574,
       "usd": 70539600274.04286,
       "aed": 259091951806.5592,
       "ars": 25321953008374.457,
       "aud": 106908125224.93277,
       "bdt": 7778229958292.037,
       "bhd": 26584188615.67823,
       "bmd": 70539600274.04286,
       "brl": 345834498263.55023,
       "cad": 96176159899.63971,
       "chf": 62157450113.07867,
       "clp": 61516174606987.35,
       "cny": 503024943514.2277,
       "czk": 1568368866661.836,
       "dkk": 480753193361.30273,
       "eur": 64483352352.91464,
       "gbp": 55922595924.05662,
       "hkd": 549643154543.33746,
       "huf": 24488585120911,
       "idr": 1091821824033845.8,
       "ils": 261670174196.57635,
       "inr": 5879189644762.356,
       "jpy": 10499124182075.828,
       "krw": 91709816796755.75,
       "kwd": 21748416858.49154,
       "lkr": 23229699298145.133,
       "mmk": 148151200584482.94,
       "mxn": 1209522069414.9336,
       "myr": 330442757483.75366,
       "ngn": 56608029219919.35,
       "nok": 751570237525.4137,
       "nzd": 115824753937.17355,
       "php": 3916534744596.7476,
       "pkr": 19894978985747.074,
       "pln": 280271607868.04175,
       "rub": 6283313836316.372,
       "sar": 264554538451.7821,
       "sek": 736351318766.289,
       "sgd": 94363292172.59673,
       "thb": 2474529036534.23,
       "try": 2039165889221.6592,
       "twd": 2224713112703.2935,
       "uah": 2557987259202.453,
       "vef": 7063130175.439922,
       "vnd": 1709843887973508.5,
       "zar": 1318272265761.4226,
       "xdr": 53005571833.92396,
       "xag": 2862947727.1664104,
       "xau": 35064529.900224075,
       "bits": 1904203880997.456,
       "sats": 190420388099745.62
     },
     "market_cap_percentage": {
       "btc": 49.51597765114233,
       "eth": 16.597930508587815,
       "usdt": 6.076725024990396,
       "bnb": 2.3864122894442987,
       "xrp": 2.2164969720490038,
       "usdc": 1.6716748584554402,
       "sol": 1.5807162483019574,
       "steth": 1.2713066501640031,
       "ada": 0.9060302592249115,
       "doge": 0.7637529437451154
     },
     "market_cap_change_percentage_24h_usd": -0.928101376901602,
     "updated_at": 1701109787
   }
 }
 
*/

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
