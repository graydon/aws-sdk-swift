// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Datapipeline
public enum DatapipelineError: AWSErrorType {
    case internalServiceError(message: String?)
    case taskNotFoundException(message: String?)
    case invalidRequestException(message: String?)
    case pipelineNotFoundException(message: String?)
    case pipelineDeletedException(message: String?)
}

extension DatapipelineError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceError":
            self = .internalServiceError(message: message)
        case "TaskNotFoundException":
            self = .taskNotFoundException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "PipelineNotFoundException":
            self = .pipelineNotFoundException(message: message)
        case "PipelineDeletedException":
            self = .pipelineDeletedException(message: message)
        default:
            return nil
        }
    }
}