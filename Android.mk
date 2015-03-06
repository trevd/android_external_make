# Copyright (C) 2013 Trevor Drake
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
					ar.c \
					arscan.c \
					commands.c \
					default.c \
					dir.c \
					expand.c \
					file.c \
					function.c \
					getopt.c \
					getopt1.c \
					guile.c \
					implicit.c \
					job.c \
					load.c \
					loadapi.c \
					main.c \
					misc.c \
					output.c \
					read.c \
					remake.c \
					rule.c \
					signame.c \
					strcache.c \
					variable.c \
					version.c \
					vpath.c \
					hash.c \
					remote-stub.c \
					getloadavg.c \
					glob/glob.c


LOCAL_CFLAGS :=-DHAVE_CONFIG_H

LOCAL_C_INCLUDES := $(LOCAL_PATH)/glob

LOCAL_SHARED_LIBRARIES := libdl
LOCAL_MODULE := make
LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
