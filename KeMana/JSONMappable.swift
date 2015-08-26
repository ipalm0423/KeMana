//
//  ObjectMapper.swift
//  KeMana
//
//  Created by 陳冠宇 on 2015/8/27.
//  Copyright (c) 2015年 陳冠宇. All rights reserved.
//

import Foundation
import ObjectMapper

class mapGeometry: Mappable {
    var lat: String?
    var lng: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapGeometry()
    }
    
    func mapping(map: Map) {
        lat <- map["lat"]
        lng <- map["lng"]
        
        
    }
}

class mapDistance: Mappable {
    var text: String?
    var value: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapDistance()
    }
    
    func mapping(map: Map) {
        text <- map["text"]
        value <- map["value"]
        
        
    }
}
class mapBound: Mappable {
    var northeast: mapGeometry?
    var southwest: mapGeometry?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapBound()
    }
    
    func mapping(map: Map) {
        northeast <- map["northeast"]
        southwest <- map["southwest"]
        
        
    }
}

class mapDuration: Mappable {
    var text: String?
    var value: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapDuration()
    }
    
    func mapping(map: Map) {
        text <- map["text"]
        value <- map["value"]
        
        
    }
}

class mapDuration_in_traffic: Mappable {
    var text: String?
    var value: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapDuration_in_traffic()
    }
    
    func mapping(map: Map) {
        text <- map["text"]
        value <- map["value"]
        
        
    }
}

class mapTime: Mappable {
    var text: String?
    var time_zone: String?
    var value: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapTime()
    }
    
    func mapping(map: Map) {
        text <- map["text"]
        time_zone <- map["time_zone"]
        value <- map["value"]
        
        
    }
}

class mapFare: Mappable {
    var currency: String?
    var value: String?
    var text: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapFare()
    }
    
    func mapping(map: Map) {
        currency <- map["currency"]
        value <- map["value"]
        text <- map["text"]
        
        
    }
}

class mapStop: Mappable {
    var location: mapGeometry?
    var name: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapStop()
    }
    
    func mapping(map: Map) {
        location <- map["location"]
        name <- map["name"]
    }
}

class mapPolyline: Mappable {
    var points: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapPolyline()
    }
    
    func mapping(map: Map) {
        points <- map["points"]
    }
}

class mapVehicle: Mappable {
    var icon: String?
    var local_icon: String?
    var name: String?
    var type: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapVehicle()
    }
    
    func mapping(map: Map) {
        icon <- map["icon"]
        local_icon <- map["local_icon"]
        name <- map["name"]
        type <- map["type"]
    }
}

class mapAgency: Mappable {
    var phone: String?
    var url: String?
    var name: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapAgency()
    }
    
    func mapping(map: Map) {
        phone <- map["phone"]
        url <- map["url"]
        name <- map["name"]
    }
}

class mapLine: Mappable {
    var agencies: [mapAgency]?
    var color: String?
    var name: String?
    var short_name: String?
    var text_color: String?
    var vehicle: [mapVehicle]?
    var url: String?
    var icon: String?
    class func newInstance(map: Map) -> Mappable? {
        return mapLine()
    }
    
    func mapping(map: Map) {
        agencies <- map["agencies"]
        color <- map["color"]
        name <- map["name"]
        short_name <- map["short_name"]
        text_color <- map["text_color"]
        vehicle <- map["vehicle"]
        url <- map["url"]
        icon <- map["icon"]
    }
}

class mapTransit_details: Mappable {
    var arrival_stop: mapStop?
    var arrival_time: mapTime?
    var departure_stop: mapStop?
    var departure_time: mapTime?
    var headsign: String?
    var line: mapLine?
    var num_stops: String?
    var headway: String?
    class func newInstance(map: Map) -> Mappable? {
        return mapTransit_details()
    }
    
    func mapping(map: Map) {
        arrival_stop <- map["arrival_stop"]
        arrival_time <- map["arrival_time"]
        departure_stop <- map["departure_stop"]
        departure_time <- map["departure_time"]
        headsign <- map["headsign"]
        line <- map["line"]
        num_stops <- map["num_stops"]
        headway <- map["headway"]
    }
}

class mapStep: Mappable {
    var distance: mapDistance?
    var duration: mapDuration?
    var end_location: mapGeometry?
    var html_instructions: String?
    var polyline: mapPolyline?
    var start_location: mapGeometry?
    var travel_mode: String?
    var steps: [mapStep]?
    var transit_details: mapTransit_details?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapStep()
    }
    
    func mapping(map: Map) {
        distance <- map["distance"]
        duration <- map["duration"]
        html_instructions <- map["html_instructions"]
        end_location <- map["end_location"]
        polyline <- map["polyline"]
        start_location <- map["start_location"]
        travel_mode <- map["travel_mode"]
        steps <- map["steps"]
        transit_details <- map["transit_details"]
    }
}

class mapLeg: Mappable {
    var arrival_time: mapTime?
    var departure_time: mapTime?
    var distance: mapDistance?
    var duration: mapDuration?
    var end_address: String?
    var end_location: mapGeometry?
    var start_address: String?
    var start_location: mapGeometry?
    var steps: [mapStep]?
    var duration_in_traffic: mapDuration_in_traffic?
    //wait setup
    var via_waypoint: [String]?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapLeg()
    }
    
    func mapping(map: Map) {
        arrival_time <- map["arrival_time"]
        departure_time <- map["departure_time"]
        distance <- map["distance"]
        duration <- map["duration"]
        end_address <- map["end_address"]
        end_location <- map["end_location"]
        start_address <- map["start_address"]
        start_location <- map["start_location"]
        steps <- map["steps"]
        via_waypoint <- map["via_waypoint"]
        duration_in_traffic <- ["duration_in_traffic"]
        
    }
}


class mapGeocoder_status: Mappable {
    var geocoder_status: String?
    var place_id: String?
    var types: [String]?
    
    
    
    class func newInstance(map: Map) -> Mappable? {
        return mapGeocoder_status()
    }
    
    func mapping(map: Map) {
        geocoder_status <- map["geocoder_status"]
        place_id <- map["place_id"]
        types <- map["types"]
        
    }
}

class mapRoute: Mappable {
    var bounds: mapBound?
    var copyrights: String?
    var legs: [mapLeg]?
    var overview_polyline: mapPolyline?
    var summary: String?
    var warnings: [String]?
    var waypoint_order: [String]?
    var fare: mapFare?
    
    class func newInstance(map: Map) -> Mappable? {
        return mapRoute()
    }
    
    func mapping(map: Map) {
        bounds <- map["bounds"]
        copyrights <- map["copyrights"]
        legs <- map["legs"]
        overview_polyline <- map["overview_polyline"]
        summary <- map["summary"]
        warnings <- map["warnings"]
        waypoint_order <- map["waypoint_order"]
        fare <- map["fare"]
    }
}

class mapGoogleResult: Mappable {
    var geocoded_waypoints: mapGeocoder_status?
    var routes: [mapRoute]?
    var status: String?
    
    
    
    class func newInstance(map: Map) -> Mappable? {
        return mapGoogleResult()
    }
    
    func mapping(map: Map) {
        geocoded_waypoints <- map["geocoded_waypoints"]
        routes <- map["routes"]
        status <- map["status"]
    }
}