import UIKit
import SwiftUI
import ArcGIS

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> AGSMapView {
        AGSArcGISRuntimeEnvironment.apiKey = "<#APIKey#>"
        let mapView = AGSMapView()
        
        let map = AGSMap(basemapStyle: .arcGISTopographic)
        
        let tileCache = AGSTileCache(name: "ShinsuiLayer")
        let shinsuiLayer = AGSArcGISTiledLayer(tileCache: tileCache)
        shinsuiLayer.opacity = 0.5
        map.operationalLayers.add(shinsuiLayer)
        
        mapView.map = map
        mapView.setViewpoint(AGSViewpoint(latitude: 35.05498701955631, longitude: 136.73940683028093, scale: 263288))
        
        return mapView
    }
    
    func updateUIView(_ uiView: AGSMapView, context: Context) {
        
    }
}
