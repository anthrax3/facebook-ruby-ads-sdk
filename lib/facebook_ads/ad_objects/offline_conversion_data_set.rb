# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class OfflineConversionDataSet < AdObject

    field :attribute_stats, 'string'
    field :business, 'Business'
    field :config, 'string'
    field :creation_time, 'datetime'
    field :description, 'string'
    field :duplicate_entries, 'int'
    field :enable_auto_assign_to_accounts, 'bool'
    field :event_stats, 'string'
    field :event_time_max, 'int'
    field :event_time_min, 'int'
    field :id, 'string'
    field :is_restricted_use, 'bool'
    field :last_upload_app, 'string'
    field :matched_entries, 'int'
    field :matched_unique_users, 'int'
    field :name, 'string'
    field :usage, 'object'
    field :valid_entries, 'int'
    field :auto_assign_to_new_accounts_only, 'bool'
    has_no_post
    has_no_delete

    has_edge :activities do |edge|
      edge.get do |api|
        api.has_param :business_id, 'string'
        api.has_param :end_time, 'datetime'
        api.has_param :event_type, { enum: %w{dataset_assign_to_adacct dataset_autotrack_on_adacct dataset_disable_autotrack_on_adacct dataset_unassign_from_adacct add_dataset_to_business add_user_to_dataset remove_user_from_dataset update_user_role_on_dataset create_custom_conversion update_custom_conversion create_custom_audience share_custom_audience unshare_custom_audience }}
        api.has_param :start_time, 'datetime'
      end
    end

    has_edge :adaccounts do |edge|
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post do |api|
        api.has_param :account_id, 'string'
        api.has_param :auto_track_for_ads, 'bool'
        api.has_param :business, 'string'
      end
    end

    has_edge :events do |edge|
      edge.post do |api|
        api.has_param :data, { list: 'object' }
        api.has_param :namespace_id, 'string'
        api.has_param :progress, 'object'
        api.has_param :upload_id, 'string'
        api.has_param :upload_tag, 'string'
      end
    end

    has_edge :stats do |edge|
      edge.get do |api|
        api.has_param :aggr_time, { enum: %w{upload_time event_time }}
        api.has_param :end, 'int'
        api.has_param :skip_empty_values, 'bool'
        api.has_param :start, 'int'
        api.has_param :user_timezone_id, 'int'
      end
    end

    has_edge :uploads do |edge|
      edge.get do |api|
        api.has_param :upload_tag, 'string'
      end
    end

  end
end
