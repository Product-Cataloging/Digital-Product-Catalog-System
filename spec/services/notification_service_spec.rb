RSpec.describe NotificationService do

    it "creates a notification" do
        req = create(:quotation_request, first_name: "Test", last_name: "Client")
        service = NotificationService.new(first_name: req.first_name, last_name: req.last_name).create_notification()
        expect(service.sender).to eq(req.first_name + ' ' + req.last_name)
    end
    
end