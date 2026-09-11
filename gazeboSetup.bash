#!/bin/sh

dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
workspace_dir=$(cd -- "${dir}/../../.." && pwd)
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:${dir}/models
export GAZEBO_RESOURCE_PATH=$GAZEBO_RESOURCE_PATH:${dir}/urdf
export GAZEBO_PLUGIN_PATH=${workspace_dir}/devel/lib:$GAZEBO_PLUGIN_PATH:${dir}/plugins
