class ChangeReservationsToPlans < ActiveRecord::Migration[6.1]
  def change
    rename_table :reservations, :plans
  end
end
