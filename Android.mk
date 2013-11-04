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
					implicit.c \
					job.c \
					main.c \
					misc.c \
					read.c \
					remake.c \
					remote-stub.c \
					rule.c \
					signame.c \
					strcache.c \
					variable.c \
					version.c \
					vpath.c \
					hash.c \
					getloadavg.c \
					glob/glob.c

LOCAL_CFLAGS :=-DHAVE_CONFIG_H

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
					$(LOCAL_PATH)/glob

#LOCAL_SHARED_LIBRARIES := 

LOCAL_MODULE := make

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
