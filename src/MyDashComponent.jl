
module MyDashComponent
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_mydashcomponent.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "my_dash_component",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "my_dash_component.min.js",
    external_url = "https://unpkg.com/my_dash_component@0.0.1/my_dash_component/my_dash_component.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "my_dash_component.min.js.map",
    external_url = "https://unpkg.com/my_dash_component@0.0.1/my_dash_component/my_dash_component.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
