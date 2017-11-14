package com.queqianme.www.wisdomsmsproject.globle;

import android.net.Uri;

import com.queqianme.www.wisdomsmsproject.provider.GroupProvider;

/**
 * Created by liupuyan on 2017/11/8.
 */

public class Constant {
    public interface URI {
        Uri SMS_CONVERSATIONS = Uri.parse("content://sms/conversations");
        Uri SMS = Uri.parse("content://sms");
        Uri GROUPS_INSERT = Uri.parse(GroupProvider.BASE_URI + "/groups/insert");
        Uri GROUPS_QUERY = Uri.parse(GroupProvider.BASE_URI + "/groups/query");
        Uri GROUPS_UPDATE = Uri.parse(GroupProvider.BASE_URI + "/groups/update");
        Uri GROUPS_DELETE = Uri.parse(GroupProvider.BASE_URI + "/groups/delete");
        Uri THREAD_GROUP_INSERT = Uri.parse(GroupProvider.BASE_URI + "/thread_group/insert");
        Uri THREAD_GROUP_QUERY = Uri.parse(GroupProvider.BASE_URI + "/thread_group/query");
        Uri THREAD_GROUP_UPDATE = Uri.parse(GroupProvider.BASE_URI + "/thread_group/update");
        Uri THREAD_GROUP_DELETE = Uri.parse(GroupProvider.BASE_URI + "/thread_group/delete");
    }

    public interface SMS_Type {
        int SMS_RECEIVE = 1;
        int SMS_SEND = 2;
    }
}
