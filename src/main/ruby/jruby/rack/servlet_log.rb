#--
# Copyright (c) 2010-2012 Engine Yard, Inc.
# Copyright (c) 2007-2009 Sun Microsystems, Inc.
# This source code is available under the MIT license.
# See the file LICENSE.txt for details.
#++

module JRuby
  module Rack
    class ServletLog
      def initialize(context = JRuby::Rack.context)
        raise ArgumentError, "no context" unless context
        @context = context
      end

      def puts(msg)
        write msg.to_s
      end

      def write(msg)
        @context.log(msg)
      end

      def flush
      end

      def close
      end
    end
  end
end
