tmp_dir = "/tmp/file_callbacks"

resource = @new_resource

template "#{tmp_dir}/#{hook_name}" do
  source "hooks.erb"
  mode 0644
  variables(:release_path => resource.release_path,
            :shared_path  => resource.shared_path)
end
