using Pkg
cd(@__DIR__)
Pkg.activate(".")
Pkg.instantiate()
Pkg.precompile()

using NodeJS
run(`$(npm_cmd()) install highlight.js`)
run(`$(npm_cmd()) install lunr`)
run(`$(npm_cmd()) install cheerio`)

using Xranklin
using Documenter: deploydocs, deploy_folder, GitHubActions
using Gumbo
using AbstractTrees

cfg = GitHubActions() # this should pick up all details via GHA environment variables

repo = "github.com/GenericMappingTools/GMT.jl.git"
push_preview = true

deploydecision = deploy_folder(cfg; repo, push_preview, devbranch="master", devurl="dev")

@info "Setting PREVIEW_XRANKLIN_WEBSITE_URL to $repo"
ENV["PREVIEW_XRANKLIN_WEBSITE_URL"] = repo

serve(; single=true, cleanup=false)
# for interactive development of the docs, use:
# cd(@__DIR__); serve(single=false, cleanup=true, clear=true, fail_on_warning = false)
lunr()
optimize(; minify=false, prerender=false)