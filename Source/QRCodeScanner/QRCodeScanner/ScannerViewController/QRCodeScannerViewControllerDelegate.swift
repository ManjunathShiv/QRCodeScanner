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

import Foundation

/**
 The methods of the protocol allow the delegate to be notified when the scanner did scan result and or when the user wants to stop the scanner.
 */
public protocol QRCodeScannerViewControllerDelegate: class {
    /**
     Notify the delegate that the scanner did scan a code.
     */
    func scanner(_ scanner: QRCodeScannerViewController, didScanResult result: QRCodeScannerResult)
    
    
    /**
     Notify the delegate that the scanner failed to scan a code.
     */
    func scannerFailed(_ scanner: QRCodeScannerViewController)
    
    
    /**
     Notify the delegate that the user wants to stop scanner.
     */
    func scannerDidCancel(_ scanner: QRCodeScannerViewController)
}
