module SaddleSearch

using Parameters


@with_kw type IterationLog
   numE::Vector{Int} = Int[]
   numdE::Vector{Int} = Int[]
   res_trans::Vector{Float64} = Float64[]
   res_rot::Vector{Float64} = Float64[]
end

function push!(log::IterationLog, numE, numdE, res_trans, res_rot)
   push!(log.numE, numE)
   push!(log.numdE, numdE)
   push!(log.res_trans, res_trans)
   push!(log.res_rot, res_rot)
end


include("dimer.jl")

include("string.jl")

end # module
