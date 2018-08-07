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
 The result of the scan with its content value and the corresponding metadata type.
 */
public struct QRCodeScannerResult {
    /**
     The error corrected data decoded into a human-readable string.
     */
    public let value: String
    
    /**
     The type of the metadata.
     */
    public let metadataType: String
}
