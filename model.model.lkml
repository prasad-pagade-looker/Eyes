connection: "thelook_events_redshift"

include: "/*.view.lkml"                # include all views in the views/ folder in this project
include: "//project_brain/*view"
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: sensory {
  extends: [sensory]
  from: sensory
  join: eyes {
    sql: 1=1 ;;
    relationship: one_to_one
  }
}
