# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Stances" do
    describe "Admin" do
      describe "stances", type: :feature do
        refinery_login

        describe "stances list" do
          before do
            FactoryGirl.create(:stance, :japanese_name => "UniqueTitleOne")
            FactoryGirl.create(:stance, :japanese_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.stances_admin_stances_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.stances_admin_stances_path

            click_link "Add New Stance"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Japanese Name", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::Stances::Stance, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::Stances::Stance, :count)

              expect(page).to have_content("Japanese Name can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:stance, :japanese_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.stances_admin_stances_path

              click_link "Add New Stance"

              fill_in "Japanese Name", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::Stances::Stance, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:stance, :japanese_name => "A japanese_name") }

          it "should succeed" do
            visit refinery.stances_admin_stances_path

            within ".actions" do
              click_link "Edit this stance"
            end

            fill_in "Japanese Name", :with => "A different japanese_name"
            click_button "Save"

            expect(page).to have_content("'A different japanese_name' was successfully updated.")
            expect(page).not_to have_content("A japanese_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:stance, :japanese_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.stances_admin_stances_path

            click_link "Remove this stance forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Stances::Stance.count).to eq(0)
          end
        end

      end
    end
  end
end
