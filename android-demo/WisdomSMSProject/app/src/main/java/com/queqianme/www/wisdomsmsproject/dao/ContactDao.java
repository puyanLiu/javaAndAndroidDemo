package com.queqianme.www.wisdomsmsproject.dao;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract;

import com.queqianme.www.wisdomsmsproject.utils.CursorUtils;

import java.io.InputStream;

/**
 * Created by liupuyan on 2017/11/8.
 */

public class ContactDao {
    /**
     * 通过号码获取联系人名字
     * @param resolver
     * @param address
     * @return
     */
    public static String getNameByAddress(ContentResolver resolver, String address) {
        String name = null;
        // 把号码拼接到uri后面
        Uri uri = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, address);
        // 根据号码查询联系人
        Cursor cursor = resolver.query(uri, new String[] {ContactsContract.PhoneLookup.DISPLAY_NAME}, null, null, null);
        CursorUtils.printCursor(cursor);
        if (cursor.moveToFirst()) {
            name = cursor.getString(0);
            cursor.close();
        }
        return name;
    }

    /**
     * 通过号码获取联系人头像
     * @param resolver
     * @param address
     * @return
     */
    public static Bitmap getAvatarByAddress(ContentResolver resolver, String address) {
        Bitmap avatar = null;
        // 把号码拼接到uri后面
        Uri uri = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, address);
        // 根据号码查询联系人
        Cursor cursor = resolver.query(uri, new String[] {ContactsContract.PhoneLookup._ID}, null, null, null);
        CursorUtils.printCursor(cursor);
        if (cursor.moveToFirst()) {
            String _id = cursor.getString(0);
            // 获取联系人照片
            InputStream is = ContactsContract.Contacts.openContactPhotoInputStream(resolver, Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, _id));
            avatar = BitmapFactory.decodeStream(is);
        }
        return avatar;
    }
}
