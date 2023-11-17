//
//  HomeViewModel.swift
//  MovieApp
//
//  Created by Saba Gogrichiani on 18.11.23.
//

import Foundation

final class HomeViewModel {
    // MARK: - Private Properties
    private let sectionTitles: [String] = ["Trending Movies", "Trending Tv", "Popular", "Upcoming Movies", "Top rated"]
    
    // MARK: - Public Methods
    func getSectionTitles() -> [String] {
        return sectionTitles
    }
    
    func fetchData(for section: Int, completion: @escaping (Result<[Title], Error>) -> Void) {
        switch section {
        case Sections.TrendingMovies.rawValue:
            APICaller.shared.getTrendingMovies(completion: completion)
        case Sections.TrendingTv.rawValue:
            APICaller.shared.getTrendingTVShows(completion: completion)
        case Sections.Popular.rawValue:
            APICaller.shared.getPopular(completion: completion)
        case Sections.Upcoming.rawValue:
            APICaller.shared.getUpcomingMovies(completion: completion)
        case Sections.TopRated.rawValue:
            APICaller.shared.getTopRated(completion: completion)
        default:
            break
        }
    }
}
