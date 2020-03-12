//
//  AddressAutoCompleteClosures.swift
//  GooglePlacesAutoPop
//
//  Created by James Syvertsen on 3/12/20.
//  Copyright © 2020 James Syvertsen. All rights reserved.
//

typealias ClosureWithError = (_ error: String) -> Void
typealias ClosureWithListOfPlacePredictions = (_ placePredictionList: [PlacePrediction]) -> Void
typealias ClosureWithPlace = (_ place: Place) -> Void
