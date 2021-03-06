require 'fabricio/models/abstract_model'

module Fabricio
  module Model
    # This model represents an application build
    class Build < AbstractModel
      attr_reader :id, :version, :build_number, :release_notes, :distributed_at

      # Returns a Build model object
      #
      # @param attributes [Hash]
      # @return [Fabricio::Model::Build]
      def initialize(attributes)
        @id = attributes['id']
        @version = attributes['build_version']['display_version']
        @build_number = attributes['build_version']['build_version']
        @release_notes = attributes['release_notes_summary']
        @distributed_at = attributes['distributed_at']
        @json = attributes
      end

    end
  end
end
