//
//  FullAuthOAuthService+FacebookToken.swift
//  Pods
//
//  Created by Karthik on 01/12/16.
//
//

import UIKit


//MARK:REQUEST ACCESS FOR FACEBOOK TOKEN
extension FullAuthOAuthService {
    
//    open func requestAccessTokenForFacebookToken(facebookAccessToken : String,
//                                                 scope : [String],
//                                                 accessType : OauthAccessType? = nil,
//                                                 handler : TokenInfoHandler?) throws{
//        
//        try validateOauthDomain()
//        
//        try validateAccessToken(accesstoken: facebookAccessToken, tokenType: .FACEBOOK)
//        
//        try validateOauthClient()
//        
//        try validateScope(scope)
//        
//        let request = FacebookTokenRequest(authDomain: self.authDomain, clientId: self.clientId!, clientSecret: self.clientSecret!, scope: scope, facebookToken: facebookAccessToken, accessType: accessType)
//        
//        makeTokenRequest(request, handler: handler)
//    }
    
    open func requestAccessTokenForFacebookToken(facebookAccessToken: String, scope: [String], accessType: OauthAccessType? = nil, handler: TokenInfoHandler?) throws{
        
        try validateOauthDomain()
        
        try validateAccessToken(accesstoken: facebookAccessToken, tokenType: .facebookToken)
        
        try validateOauthClient()
        
        try validateScope(scope)
        
        let request = FacebookTokenRequest(authDomain: self.authDomain, clientId: self.clientId!, clientSecret: self.clientSecret!, scope: scope, facebookToken: facebookAccessToken, accessType: accessType)
        
        try makeTokenRequest(request, handler: handler)
    }
}