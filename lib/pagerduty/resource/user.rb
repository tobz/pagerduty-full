module PagerDuty
  module Resource

    class User < PagerDuty::Full

      def find(id)
        res = api_call("users/#{id}", {})
        case res
        when Net::HTTPSuccess
          JSON.parse(res.body)
        else
          res.error!
        end
      end

      def contact_methods(id)
        res = api_call("users/#{id}/contact_methods", {})
        case res
        when Net::HTTPSuccess
          JSON.parse(res.body)
        else
          res.error!
        end
      end

      def notification_rules(id)
        res = api_call("users/#{id}/notification_rules", {})
        case res
        when Net::HTTPSuccess
          JSON.parse(res.body)
        else
          res.error!
        end
      end
    end
  end
end
