#you just want to test that save is called here because save is public
#and if it's public what's inside will be tested with its own test
def self.create params={}
  new(params).save
end

describe ".create" do
  it "creates a new segment query" do
    expect_any_instance_of(SegmentQuery).to receive(:save)
    SegmentQuery.create(create_params)
  end
end


#here you want to test what's inside of create_or_update because it's private
#and you don't care about what's inside of execute because it's public
#if execute were private, you would make a separate test inside of describe #save that tested what's in the best for execute below
def save!
  validate!
  create_or_update
  self
end

def create_or_update
  if persisted?
    # To be added in ACLPROD-1757
  else
    result = LocalDao.instance.create_segment_query(to_h.merge(segment_type_id: YMCA_SEGMENT_TYPE_ID)).first
    self.created_at = result.fetch(:CREATED_DT)
    self.modified_at = result.fetch(:MODIFIED_DT)
    self.id = result.fetch(:ID)
    execute!
  end
end

describe '#save' do
  subject(:segment_query) { SegmentQuery.new(create_params) }
  before do
    allow(LocalDao.instance).to receive(:create_segment_query).and_return(response)
    allow(segment_query).to receive(:execute!)
  end
  context 'valid fields' do
    it 'calls on the LocalDao with the correct arguments' do
      expect(LocalDao.instance).to receive(:create_segment_query).with(create_params.merge(segment_type_id: SegmentQuery::YMCA_SEGMENT_TYPE_ID)).and_return(response)
      segment_query.save
    end
  end
end

#used as_null_object
def execute!
  @customer_ids = Customer.find_customer_list(attribute_manager.generate_query.merge(org_id: source_organization_id.to_i)).pluck(:customer_id)
  @segment_execution = SegmentExecution.create(customer_ids: @customer_ids.join(','), created_by_user_id: created_by_user_id, segment_id: id)
end

describe '#execute!' do
  subject(:segment_query) { SegmentQuery.new(create_params.merge(id: id)) }
  before do
    allow(segment_query).to receive(:organization_site).and_return(double(source_organization_id: id))
  end
  it 'creates a segment execution with customer ids' do
    customer_ids = double(:customer_ids).as_null_object
    mongo_thing = double(:customer_list, pluck: customer_ids)
    allow(Customer).to receive(:find_customer_list).and_return(mongo_thing)
    expect(SegmentExecution).to receive(:create).with(customer_ids: customer_ids, created_by_user_id: user_id, segment_id: id)
    segment_query.execute!
  end
end


def bake_cake
  measure_ingredients
  mix_ingredients
  put_in_oven
end

def measure
end
