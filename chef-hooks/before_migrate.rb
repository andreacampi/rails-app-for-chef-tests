tmp_dir = "/tmp/file_callbacks"
hook_name = "before_migrate"

resource = @new_resource

template "#{tmp_dir}/#{hook_name}" do
  source "hooks.erb"
  mode 0644
  variables(:release_path => resource.release_path,
            :shared_path  => resource.shared_path)
end
