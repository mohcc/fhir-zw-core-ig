
// // How to do slicing:

// 1. define what and how to slice: example: slice "component" element based on the code
// * element ^slicing.discriminator.type = #pattern
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.ordered = false   // can be omitted, since false is the default
// * component ^slicing.description = "Slice based on the component.code pattern"

// 2. identify the slices
// * component contains
//     systolicBP 1..1 MS and
//     diastolicBP 1..1 MS

// 3. define the actual discriminating content of the slices: 
// * component[tumorLongestDimension] ^short = "Longest tumor dimension"
// * component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
// * component[tumorLongestDimension].code = $LNC#33728-7 // "Size.maximum dimension in Tumor"
// * component[tumorLongestDimension].value[x] only Quantity
// * component[tumorLongestDimension].value[x] from TumorSizeUnitsVS (required)   // value set defined elsewhere
// * component[tumorOtherDimension] ^short = "Other tumor dimension(s)"
// * component[tumorOtherDimension] ^definition = "The second or third tumor dimension in cm or mm."
// * component[tumorOtherDimension] ^comment = "Additional tumor dimensions should be ordered from largest to smallest."
// * component[tumorOtherDimension].code = $LNC#33729-5 // "Size additional dimension in Tumor"
// * component[tumorOtherDimension].value[x] only Quantity
// * component[tumorOtherDimension].value[x] from TumorSizeUnitsVS (required)



//////////////////////////////////////////////////////////////////


// How to do bindings:
// * {element} from {ValueSet} ({strength})
// e.g.
// * code from VSProcedureCodes (required)
// Don't forget to add the valueset in input/fsh/valuesets


//////////////////////////////////////////////////////////////////

// Add an extension: 
// * reuse an already existing extension (always recommended if possible)
// * extension contains http://hl7.org/fhir/StructureDefinition/patient-disability named disability 0..1 MS 


// Create your own extension: see https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html