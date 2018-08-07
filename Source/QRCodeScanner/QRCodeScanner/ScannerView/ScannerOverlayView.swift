/*
 * Copyright(C) Manjunath Shivakumara. 2018
 *
 *  All rights are reserved. Reproduction or transmission in whole or in part, in
 *  any form or by any means, electronic, mechanical or otherwise, is prohibited
 *  without the prior written permission of the copyright owner.
 *
 *  File Name : QRCodeScannerResult.swift
 *  Owner: Manjunath Shivakumara
 */

import UIKit

/// Overlay over the camera view to display the area (a square) where to scan the code.
public final class ScannerOverlayView: UIView {
    var overlayColor: UIColor = UIColor.white {
        didSet {
            self.overlay.strokeColor = overlayColor.cgColor
            self.setNeedsDisplay()
        }
    }
    
    private var overlay: CAShapeLayer = {
        var overlay = CAShapeLayer()
        overlay.backgroundColor = UIColor.clear.cgColor
        overlay.fillColor = UIColor.clear.cgColor
        overlay.strokeColor = UIColor.white.cgColor
        overlay.lineWidth = 3
        return overlay
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupOverlay()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupOverlay()
    }
    
    private func setupOverlay() {
        layer.addSublayer(overlay)
    }
    
    public override func draw(_ rect: CGRect) {
        var innerRect = rect.insetBy(dx: 50, dy: 50)
        let minSize = min(innerRect.width, innerRect.height)
        
        if innerRect.width != minSize {
            innerRect.origin.x += (innerRect.width - minSize) / 2
            innerRect.size.width = minSize
        }
        else if innerRect.height != minSize {
            innerRect.origin.y += (innerRect.height - minSize) / 2
            innerRect.size.height = minSize
        }
        
        overlay.path = UIBezierPath(roundedRect: innerRect, cornerRadius: 24).cgPath
    }
}
