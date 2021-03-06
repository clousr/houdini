# License: AGPL-3.0-or-later WITH Web-Template-Output-Additional-Permission-3.0-or-later
module MockHelpers
  def self.payment_export_headers()
    ["Date",'Gross Amount',	'Fee Total',	'Net Amount','Type',	'Last Name',	'First Name','Full Name', 'Organization',	'Email',	'Phone',	'Address',	'City',	'State',	'Postal Code',	'Country',	'Anonymous?',	'Supporter Id',	'Designation',	'Honorarium/Memorium',	'Anonymous','Comment','Campaign',	'Campaign Gift Level',	'Event Name',	'Payment',	'Check Number', 'Donation Note']
  end

  def self.recurring_donation_export_headers()
    ["Created At","Amount","Interval","Total Contributed","Campaign Name","Supporter Name","Supporter Email","Phone","Address","City","State","Zip Code","Card Name","Recurring Donation Id","Donation Id", "Cancelled","Failed", "Cancelled At", "Donation Management Url"]
  end

  def self.generate_expected_rd_management_url(root_url, rd)
    "#{root_url}/recurring_donations/#{rd.id}/edit?t=#{rd.edit_token}"
  end
end