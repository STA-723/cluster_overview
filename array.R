# Array jobs example 

# get array id
id = as.integer( Sys.getenv('SLURM_ARRAY_TASK_ID') )

# simulate according to array id
set.seed(id)
x = rnorm(10)
mu = mean(x)
print(mu)

# directory for saving 
dir_path = "/work/ff31/cluster_overview/results/"

if(dir.exists(dir_path) == F){
  dir.create(dir_path)
}

# save
out_name = paste("sim_",id,".rds",sep = "")
saveRDS(mu, file.path(dir_path, out_name))