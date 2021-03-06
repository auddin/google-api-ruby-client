# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module LanguageV1beta1
      
      # ################################################################ #
      # Represents the input to API methods.
      class Document
        include Google::Apis::Core::Hashable
      
        # The language of the document (if not specified, the language is
        # automatically detected). Both ISO and BCP-47 language codes are
        # accepted.<br>
        # **Current Language Restrictions:**
        # * Only English, Spanish, and Japanese textual content
        # are supported, with the following additional restriction:
        # * `analyzeSentiment` only supports English text.
        # If the language (either specified by the caller or automatically detected)
        # is not supported by the called API method, an `INVALID_ARGUMENT` error
        # is returned.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The Google Cloud Storage URI where the file content is located.
        # Corresponds to the JSON property `gcsContentUri`
        # @return [String]
        attr_accessor :gcs_content_uri
      
        # Required. If the type is not set or is `TYPE_UNSPECIFIED`,
        # returns an `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The content of the input in string format.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language = args[:language] if args.key?(:language)
          @gcs_content_uri = args[:gcs_content_uri] if args.key?(:gcs_content_uri)
          @type = args[:type] if args.key?(:type)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Represents an output piece of text.
      class TextSpan
        include Google::Apis::Core::Hashable
      
        # The API calculates the beginning offset of the content in the original
        # document according to the EncodingType specified in the API request.
        # Corresponds to the JSON property `beginOffset`
        # @return [Fixnum]
        attr_accessor :begin_offset
      
        # The content of the output text.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin_offset = args[:begin_offset] if args.key?(:begin_offset)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` which can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting purpose.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There will be a
        # common set of message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # The entity analysis request message.
      class AnalyzeEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # ################################################################ #
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1beta1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # Represents a mention for an entity in the text. Currently, proper noun
      # mentions are supported.
      class EntityMention
        include Google::Apis::Core::Hashable
      
        # Represents an output piece of text.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV1beta1::TextSpan]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The sentiment analysis request message.
      class AnalyzeSentimentRequest
        include Google::Apis::Core::Hashable
      
        # ################################################################ #
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1beta1::Document]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # The sentiment analysis response message.
      class AnalyzeSentimentResponse
        include Google::Apis::Core::Hashable
      
        # Represents the feeling associated with the entire text or entities in
        # the text.
        # Corresponds to the JSON property `documentSentiment`
        # @return [Google::Apis::LanguageV1beta1::Sentiment]
        attr_accessor :document_sentiment
      
        # The language of the text, which will be the same as the language specified
        # in the request or, if not specified, the automatically-detected language.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_sentiment = args[:document_sentiment] if args.key?(:document_sentiment)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # Represents dependency parse tree information for a token.
      class DependencyEdge
        include Google::Apis::Core::Hashable
      
        # Represents the head of this token in the dependency tree.
        # This is the index of the token which has an arc going to this token.
        # The index is the position of the token in the array of tokens returned
        # by the API method. If this token is a root token, then the
        # `head_token_index` is its own index.
        # Corresponds to the JSON property `headTokenIndex`
        # @return [Fixnum]
        attr_accessor :head_token_index
      
        # The parse label for the token.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @head_token_index = args[:head_token_index] if args.key?(:head_token_index)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # The request message for the text annotation API, which can perform multiple
      # analysis types (sentiment, entities, and syntax) in one call.
      class AnnotateTextRequest
        include Google::Apis::Core::Hashable
      
        # ################################################################ #
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1beta1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        # All available features for sentiment, syntax, and semantic analysis.
        # Setting each one to true will enable that specific analysis for the input.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::LanguageV1beta1::Features]
        attr_accessor :features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
          @features = args[:features] if args.key?(:features)
        end
      end
      
      # Represents a sentence in the input document.
      class Sentence
        include Google::Apis::Core::Hashable
      
        # Represents an output piece of text.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV1beta1::TextSpan]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # All available features for sentiment, syntax, and semantic analysis.
      # Setting each one to true will enable that specific analysis for the input.
      class Features
        include Google::Apis::Core::Hashable
      
        # Extract document-level sentiment.
        # Corresponds to the JSON property `extractDocumentSentiment`
        # @return [Boolean]
        attr_accessor :extract_document_sentiment
        alias_method :extract_document_sentiment?, :extract_document_sentiment
      
        # Extract entities.
        # Corresponds to the JSON property `extractEntities`
        # @return [Boolean]
        attr_accessor :extract_entities
        alias_method :extract_entities?, :extract_entities
      
        # Extract syntax information.
        # Corresponds to the JSON property `extractSyntax`
        # @return [Boolean]
        attr_accessor :extract_syntax
        alias_method :extract_syntax?, :extract_syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extract_document_sentiment = args[:extract_document_sentiment] if args.key?(:extract_document_sentiment)
          @extract_entities = args[:extract_entities] if args.key?(:extract_entities)
          @extract_syntax = args[:extract_syntax] if args.key?(:extract_syntax)
        end
      end
      
      # Represents part of speech information for a token.
      class PartOfSpeech
        include Google::Apis::Core::Hashable
      
        # The part of speech tag.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # The text annotations response message.
      class AnnotateTextResponse
        include Google::Apis::Core::Hashable
      
        # Entities, along with their semantic information, in the input document.
        # Populated if the user enables
        # AnnotateTextRequest.Features.extract_entities.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV1beta1::Entity>]
        attr_accessor :entities
      
        # Represents the feeling associated with the entire text or entities in
        # the text.
        # Corresponds to the JSON property `documentSentiment`
        # @return [Google::Apis::LanguageV1beta1::Sentiment]
        attr_accessor :document_sentiment
      
        # The language of the text, which will be the same as the language specified
        # in the request or, if not specified, the automatically-detected language.
        # See Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Tokens, along with their syntactic information, in the input document.
        # Populated if the user enables
        # AnnotateTextRequest.Features.extract_syntax.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::LanguageV1beta1::Token>]
        attr_accessor :tokens
      
        # Sentences in the input document. Populated if the user enables
        # AnnotateTextRequest.Features.extract_syntax.
        # Corresponds to the JSON property `sentences`
        # @return [Array<Google::Apis::LanguageV1beta1::Sentence>]
        attr_accessor :sentences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @document_sentiment = args[:document_sentiment] if args.key?(:document_sentiment)
          @language = args[:language] if args.key?(:language)
          @tokens = args[:tokens] if args.key?(:tokens)
          @sentences = args[:sentences] if args.key?(:sentences)
        end
      end
      
      # Represents a phrase in the text that is a known entity, such as
      # a person, an organization, or location. The API associates information, such
      # as salience and mentions, with entities.
      class Entity
        include Google::Apis::Core::Hashable
      
        # Metadata associated with the entity.
        # Currently, only Wikipedia URLs are provided, if available.
        # The associated key is "wikipedia_url".
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The salience score associated with the entity in the [0, 1.0] range.
        # The salience score for an entity provides information about the
        # importance or centrality of that entity to the entire document text.
        # Scores closer to 0 are less salient, while scores closer to 1.0 are highly
        # salient.
        # Corresponds to the JSON property `salience`
        # @return [Float]
        attr_accessor :salience
      
        # The entity type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The mentions of this entity in the input document. The API currently
        # supports proper noun mentions.
        # Corresponds to the JSON property `mentions`
        # @return [Array<Google::Apis::LanguageV1beta1::EntityMention>]
        attr_accessor :mentions
      
        # The representative name for the entity.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @salience = args[:salience] if args.key?(:salience)
          @type = args[:type] if args.key?(:type)
          @mentions = args[:mentions] if args.key?(:mentions)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents the feeling associated with the entire text or entities in
      # the text.
      class Sentiment
        include Google::Apis::Core::Hashable
      
        # DEPRECATED FIELD - This field is being deprecated in
        # favor of score. Please refer to our documentation at
        # https://cloud.google.com/natural-language/docs for more information.
        # Corresponds to the JSON property `polarity`
        # @return [Float]
        attr_accessor :polarity
      
        # A non-negative number in the [0, +inf) range, which represents
        # the absolute magnitude of sentiment regardless of polarity (positive or
        # negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @polarity = args[:polarity] if args.key?(:polarity)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
        end
      end
      
      # Represents the smallest syntactic building block of the text.
      class Token
        include Google::Apis::Core::Hashable
      
        # Represents an output piece of text.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV1beta1::TextSpan]
        attr_accessor :text
      
        # Represents part of speech information for a token.
        # Corresponds to the JSON property `partOfSpeech`
        # @return [Google::Apis::LanguageV1beta1::PartOfSpeech]
        attr_accessor :part_of_speech
      
        # Represents dependency parse tree information for a token.
        # Corresponds to the JSON property `dependencyEdge`
        # @return [Google::Apis::LanguageV1beta1::DependencyEdge]
        attr_accessor :dependency_edge
      
        # [Lemma](https://en.wikipedia.org/wiki/Lemma_(morphology))
        # of the token.
        # Corresponds to the JSON property `lemma`
        # @return [String]
        attr_accessor :lemma
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @part_of_speech = args[:part_of_speech] if args.key?(:part_of_speech)
          @dependency_edge = args[:dependency_edge] if args.key?(:dependency_edge)
          @lemma = args[:lemma] if args.key?(:lemma)
        end
      end
      
      # The entity analysis response message.
      class AnalyzeEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # The recognized entities in the input document.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV1beta1::Entity>]
        attr_accessor :entities
      
        # The language of the text, which will be the same as the language specified
        # in the request or, if not specified, the automatically-detected language.
        # See Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language = args[:language] if args.key?(:language)
        end
      end
    end
  end
end
