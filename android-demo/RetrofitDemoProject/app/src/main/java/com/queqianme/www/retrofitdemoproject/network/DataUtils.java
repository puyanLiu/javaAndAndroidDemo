package com.queqianme.www.retrofitdemoproject.network;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/**
 * Created by liupuyan on 2017/12/26.
 */

public class DataUtils {
    /**
     * Json 转成 Map<>
     * @param jsonStr
     * @return
     */
    public static Map<String, Object> getMapFromJson(String jsonStr){
        JSONObject jsonObject ;
        try {
            jsonObject = new JSONObject(jsonStr);

            Iterator<String> keyIter = jsonObject.keys();
            String key;
            Object value ;
            Map<String, Object> valueMap = new HashMap<>();
            while (keyIter.hasNext()) {
                key = keyIter.next();
                value = jsonObject.get(key);
                valueMap.put(key, value);
            }
            return valueMap;
        } catch (Exception e) {
            Log.e("A", e.toString());
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Json 转成 List<Map<>>
     * @param jsonStr
     * @return
     */
    public static List<Map<String, Object>> getlistFromJson(String jsonStr){
        List<Map<String, Object>> list = null;
        try {
            JSONArray jsonArray = new JSONArray(jsonStr);
            JSONObject jsonObj ;
            list = new ArrayList<>();
            for(int i = 0; i < jsonArray.length(); i++){
                jsonObj = (JSONObject)jsonArray.get(i);
                list.add(getMapFromJson(jsonObj.toString()));
            }
        } catch (Exception e) {
            Log.e("A", e.toString());
            e.printStackTrace();
        }
        return list;
    }

    /**
     * String 转成 Map
     * @param mapString 例如username:chenziwen,password:1234
     * @return
     */
    public static Map getMapFromString(String mapString){
        Map map = new HashMap();
        StringTokenizer items;
        for(StringTokenizer entrys = new StringTokenizer(mapString, ","); entrys.hasMoreTokens();
            map.put(items.nextToken(), items.hasMoreTokens() ? ((Object) (items.nextToken())) : null))
            items = new StringTokenizer(entrys.nextToken(), ":");
        return map;
    }

    /**
     * Map 转成 String
     * @param map
     * @return  例如username:chenziwen,password:1234
     */
    public static String getStringFromMap(Map map){
        Map.Entry entry;
        StringBuffer sb = new StringBuffer();
        for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            entry = (Map.Entry)iterator.next();
            sb.append(entry.getKey().toString()).append( ":" ).append(null==entry.getValue()?"":
                    entry.getValue().toString()).append (iterator.hasNext() ? "," : "");
        }
        return sb.toString();
    }

}
