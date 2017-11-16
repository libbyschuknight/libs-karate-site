# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "People" do
    describe "Admin" do
      describe "people", type: :feature do
        refinery_login

        describe "people list" do
          before do
            FactoryGirl.create(:person, :first_name => "UniqueTitleOne")
            FactoryGirl.create(:person, :first_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.people_admin_people_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.people_admin_people_path

            click_link "Add New Person"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "First Name", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::People::Person, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::People::Person, :count)

              expect(page).to have_content("First Name can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:person, :first_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.people_admin_people_path

              click_link "Add New Person"

              fill_in "First Name", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::People::Person, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:person, :first_name => "A first_name") }

          it "should succeed" do
            visit refinery.people_admin_people_path

            within ".actions" do
              click_link "Edit this person"
            end

            fill_in "First Name", :with => "A different first_name"
            click_button "Save"

            expect(page).to have_content("'A different first_name' was successfully updated.")
            expect(page).not_to have_content("A first_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:person, :first_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.people_admin_people_path

            click_link "Remove this person forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::People::Person.count).to eq(0)
          end
        end

      end
    end
  end
end
