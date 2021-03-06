// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Streamsdynamodb
public enum StreamsdynamodbError: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case internalServerError(message: String?)
    case trimmedDataAccessException(message: String?)
    case limitExceededException(message: String?)
    case expiredIteratorException(message: String?)
}

extension StreamsdynamodbError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "TrimmedDataAccessException":
            self = .trimmedDataAccessException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ExpiredIteratorException":
            self = .expiredIteratorException(message: message)
        default:
            return nil
        }
    }
}