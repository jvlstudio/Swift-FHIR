//
//  OperationDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OperationDefinitionTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> OperationDefinition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> OperationDefinition {
		let instance = OperationDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOperationDefinition1() {
		let instance = try? runOperationDefinition1()
		XCTAssertNotNil(instance, "Must instantiate OperationDefinition")
		if let instance = instance {
			try! runOperationDefinition1(instance.asJSON())
		}
	}
	
	func runOperationDefinition1(json: FHIRJSON? = nil) throws -> OperationDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "operationdefinition-example.json")
		
		XCTAssertEqual(inst.base!.reference!, "OperationDefinition/Questionnaire-populate")
		XCTAssertEqual(inst.code!, "populate")
		XCTAssertEqual(inst.contact![0].name!, "System Administrator")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "email")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "beep@coyote.acme.com")
		XCTAssertEqual(inst.date!.description, "2015-08-04")
		XCTAssertEqual(inst.description_fhir!, "Limited implementation of the Populate Questionnaire implemenation")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertTrue(inst.instance!)
		XCTAssertEqual(inst.kind!, "operation")
		XCTAssertEqual(inst.name!, "Populate Questionnaire")
		XCTAssertEqual(inst.notes!, "Only implemented for Labs and Medications so far")
		XCTAssertEqual(inst.parameter![0].max!, "1")
		XCTAssertEqual(inst.parameter![0].min!, 1)
		XCTAssertEqual(inst.parameter![0].name!, "subject")
		XCTAssertEqual(inst.parameter![0].type!, "Reference")
		XCTAssertEqual(inst.parameter![0].use!, "in")
		XCTAssertEqual(inst.parameter![1].documentation!, "The partially (or fully)-populated set of answers for the specified Questionnaire")
		XCTAssertEqual(inst.parameter![1].max!, "1")
		XCTAssertEqual(inst.parameter![1].min!, 1)
		XCTAssertEqual(inst.parameter![1].name!, "return")
		XCTAssertEqual(inst.parameter![1].type!, "QuestionnaireResponse")
		XCTAssertEqual(inst.parameter![1].use!, "out")
		XCTAssertEqual(inst.publisher!, "Acme Healthcare Services")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertFalse(inst.system!)
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0], "Questionnaire")
		XCTAssertEqual(inst.url!.absoluteString, "http://h7.org/fhir/OperationDefinition/example")
		XCTAssertEqual(inst.version!, "B")
		
		return inst
	}
}
