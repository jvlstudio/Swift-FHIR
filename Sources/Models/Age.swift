//
//  Age.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Age) on 2015-12-11.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A duration (length of time) with a UCUM code.
 *
 *  There SHALL be a code if there is a value and it SHALL be an expression of time.  If system is present, it SHALL be
 *  UCUM.  If value is present, it SHALL be positive.
 */
public class Age: Quantity {
	override public class var resourceName: String {
		get { return "Age" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

